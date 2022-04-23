"""
Classes to help with caching data while training.
"""

from typing import Callable
import torch
import random

from torch.utils.data import default_collate


def collate_batch_size_one(batch_list):
    assert len(batch_list) == 1
    collated_batch = default_collate(batch_list)
    for key in collated_batch:
        assert collated_batch[key].shape[0] == 1
        collated_batch[key] = collated_batch[key].squeeze(0)
    return collated_batch


class CollateIterDataset(torch.utils.data.IterableDataset):
    """Collated image dataset that implements caching of images.

    Args:
        torch (_type_): _description_
    """

    def __init__(
        self,
        dataset: torch.utils.data.Dataset,
        collate_fn: Callable,
        num_samples_to_collate: int,
        num_times_to_repeat: int = 0,
    ):
        super().__init__()
        self.dataset = dataset
        self.collate_fn = collate_fn
        self.num_samples_to_collate = num_samples_to_collate
        self.num_times_to_repeat = num_times_to_repeat

        self.num_repeated = self.num_times_to_repeat  # starting value
        self.cached_batch_list = None

    def get_batch_list(self):
        # sampling without replacement. TODO(ethan): don't use 'random'
        indices = random.sample(range(len(self.dataset)), k=self.num_samples_to_collate)
        batch_list = [self.dataset.__getitem__(idx) for idx in indices]
        return batch_list

    def __iter__(self):
        while True:
            if self.num_repeated >= self.num_times_to_repeat:
                # trigger a reset
                self.num_repeated = 0
                batch_list = self.get_batch_list()
                # possibly save a cached item
                self.cached_batch_list = batch_list if self.num_times_to_repeat != 0 else None
            else:
                batch_list = self.cached_batch_list
                self.num_repeated += 1
            collated_batch = self.collate_fn(batch_list)
            yield collated_batch
