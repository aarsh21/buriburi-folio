<script lang="ts">
	import * as Card from '$lib/components/ui/card';
	interface Props {
		link: string;
		project: string;
		details: string[];
	}

	let { link, project, details }: Props = $props();
</script>

<Card.Root class="col-span-1 mt-4 lg:col-span-2">
	<Card.Header class="pb-6">
		<a target="_blank" href={link}>
			<Card.Title>{project}</Card.Title>
		</a>
		<Card.Description class=" mt-0 flex flex-col gap-y-2 ">
			{#each details as detail}
				<li class="lg:text-md text-[1rem] leading-5 marker:text-cat_quaternary lg:leading-tight">
					{detail}
				</li>
			{/each}
		</Card.Description>
	</Card.Header>
</Card.Root>
