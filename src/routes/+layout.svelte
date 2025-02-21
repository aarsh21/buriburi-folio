<script lang="ts">
	import Footer from '$lib/components/Footer.svelte';
	import { Name, profilePicture } from '$lib/profileDetails';
	import { setupViewTransition } from 'sveltekit-view-transition';
	import '../app.css';
	interface Props {
		children?: import('svelte').Snippet;
	}

	let { children }: Props = $props();

	setupViewTransition();
</script>

<svelte:head>
	<title>{Name}</title>
	<link rel="icon" href={profilePicture} />
</svelte:head>

<div class="relative min-h-screen w-full p-0 text-cat_text">
	{@render children?.()}
	<Footer />
</div>
