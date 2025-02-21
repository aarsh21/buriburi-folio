<script lang="ts">
	import * as Card from '$lib/components/ui/card';
	interface Props {
		position: string;
		company: string;
		start_date: string;
		end_date: string;
		responsiblities: string[];
		link: string;
		isCurrent: boolean;
	}

	let { position, isCurrent, company, start_date, end_date, responsiblities, link }: Props =
		$props();
</script>

<Card.Root class="sm:col-span-2">
	<Card.Header class="pb-6">
		<a target="_blank" href={link}>
			<Card.Title>{company}</Card.Title>
		</a>
		<div class="mb-2 flex flex-wrap items-center justify-between">
			<h1 class="text-lg font-semibold text-cat_secondary">{position}</h1>
			{#if isCurrent}
				<p class="text-md font-semibold text-cat_tertiary">current</p>
			{:else}
				<p class="text-sm font-semibold text-cat_tertiary">{`${start_date} - ${end_date}`}</p>
			{/if}
		</div>
		<Card.Description class="mt-0 flex flex-col gap-y-1 lg:gap-y-2">
			{#each responsiblities as response}
				<li class=" lg:text-md text-[1rem] leading-5 marker:text-cat_quaternary lg:leading-tight">
					{response}
				</li>
			{/each}
		</Card.Description>
	</Card.Header>
</Card.Root>
