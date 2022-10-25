struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_767 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_912 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1177 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_792 : f32;
  var u_xlat47 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu4 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati4 : i32;
  var u_xlat48 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb43;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat43;
  u_xlat43 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat43;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat15;
  let x_536 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat15;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat15;
    x_559 = x_562;
  } else {
    let x_564 : vec3<f32> = u_xlat2;
    x_559 = x_564;
  }
  let x_565 : vec3<f32> = x_559;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : vec3<f32> = vs_TEXCOORD3;
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat43;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_579 : f32 = vs_TEXCOORD7.y;
  let x_581 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat43 = (x_579 * x_581);
  let x_584 : f32 = x_126.unity_MatrixV[0i].z;
  let x_586 : f32 = vs_TEXCOORD7.x;
  let x_588 : f32 = u_xlat43;
  u_xlat43 = ((x_584 * x_586) + x_588);
  let x_591 : f32 = x_126.unity_MatrixV[2i].z;
  let x_593 : f32 = vs_TEXCOORD7.z;
  let x_595 : f32 = u_xlat43;
  u_xlat43 = ((x_591 * x_593) + x_595);
  let x_597 : f32 = u_xlat43;
  let x_600 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_597 + x_600);
  let x_602 : f32 = u_xlat43;
  let x_605 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_602) + -(x_605));
  let x_608 : f32 = u_xlat43;
  u_xlat43 = max(x_608, 0.0f);
  let x_610 : f32 = u_xlat43;
  let x_612 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_610 * x_612);
  let x_619 : vec4<f32> = vs_TEXCOORD0;
  let x_622 : f32 = x_126.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_619.z, x_619.w), x_622);
  let x_624 : vec3<f32> = vec3<f32>(x_623.x, x_623.y, x_623.z);
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_629 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
  let x_634 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_630.x, x_630.y));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = hlslcc_FragCoord;
  let x_641 : vec2<f32> = (vec2<f32>(x_637.x, x_637.y) * vec2<f32>(x_639.x, x_639.y));
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
  let x_646 : f32 = u_xlat4.y;
  let x_648 : f32 = x_126.x_ScaleBiasRt.x;
  let x_651 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_646 * x_648) + x_651);
  let x_653 : f32 = u_xlat44;
  u_xlat4.z = (-(x_653) + 1.0f);
  let x_658 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_658) * 0.959999979f) + 0.959999979f);
  let x_664 : f32 = u_xlat28;
  let x_665 : f32 = u_xlat44;
  u_xlat45 = (x_664 + -(x_665));
  let x_668 : f32 = u_xlat44;
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = (vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_680 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat5;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : f32 = u_xlat28;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat28 = (x_697 * x_699);
  let x_701 : f32 = u_xlat28;
  u_xlat28 = max(x_701, 0.0078125f);
  let x_704 : f32 = u_xlat28;
  let x_705 : f32 = u_xlat28;
  u_xlat44 = (x_704 * x_705);
  let x_707 : f32 = u_xlat45;
  u_xlat45 = (x_707 + 1.0f);
  let x_709 : f32 = u_xlat45;
  u_xlat45 = clamp(x_709, 0.0f, 1.0f);
  let x_712 : f32 = u_xlat28;
  u_xlat18 = ((x_712 * 4.0f) + 2.0f);
  let x_721 : vec4<f32> = u_xlat4;
  let x_724 : f32 = x_126.x_GlobalMipBias.x;
  let x_725 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_721.x, x_721.z), x_724);
  u_xlat4.x = x_725.x;
  let x_730 : f32 = u_xlat4.x;
  u_xlat32 = (x_730 + -1.0f);
  let x_733 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat32;
  u_xlat32 = ((x_733 * x_734) + 1.0f);
  let x_737 : f32 = u_xlat14;
  let x_739 : f32 = u_xlat4.x;
  u_xlat14 = min(x_737, x_739);
  let x_743 : vec4<f32> = vs_TEXCOORD8;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_746 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_744.x, x_744.y, x_746);
  let x_758 : vec3<f32> = txVec0;
  let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
  u_xlat4.x = x_760;
  let x_769 : f32 = x_767.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_769) + 1.0f);
  let x_773 : f32 = u_xlat4.x;
  let x_775 : f32 = x_767.x_MainLightShadowParams.x;
  let x_777 : f32 = u_xlat46;
  u_xlat4.x = ((x_773 * x_775) + x_777);
  let x_782 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_782);
  let x_786 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_786 >= 1.0f);
  let x_788 : bool = u_xlatb46;
  let x_789 : bool = u_xlatb47;
  u_xlatb46 = (x_788 | x_789);
  let x_791 : bool = u_xlatb46;
  if (x_791) {
    x_792 = 1.0f;
  } else {
    let x_797 : f32 = u_xlat4.x;
    x_792 = x_797;
  }
  let x_798 : f32 = x_792;
  u_xlat4.x = x_798;
  let x_800 : vec3<f32> = vs_TEXCOORD7;
  let x_802 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_804 : vec3<f32> = (x_800 + -(x_802));
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat7;
  let x_809 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : f32 = u_xlat46;
  let x_814 : f32 = x_767.x_MainLightShadowParams.z;
  let x_817 : f32 = x_767.x_MainLightShadowParams.w;
  u_xlat46 = ((x_812 * x_814) + x_817);
  let x_819 : f32 = u_xlat46;
  u_xlat46 = clamp(x_819, 0.0f, 1.0f);
  let x_823 : f32 = u_xlat4.x;
  u_xlat47 = (-(x_823) + 1.0f);
  let x_826 : f32 = u_xlat46;
  let x_827 : f32 = u_xlat47;
  let x_830 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_826 * x_827) + x_830);
  let x_833 : f32 = u_xlat32;
  let x_836 : vec4<f32> = x_126.x_MainLightColor;
  let x_838 : vec3<f32> = (vec3<f32>(x_833, x_833, x_833) * vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = u_xlat2;
  u_xlat46 = dot(-(vec3<f32>(x_841.x, x_841.y, x_841.z)), x_844);
  let x_846 : f32 = u_xlat46;
  let x_847 : f32 = u_xlat46;
  u_xlat46 = (x_846 + x_847);
  let x_849 : vec3<f32> = u_xlat2;
  let x_850 : f32 = u_xlat46;
  let x_854 : vec4<f32> = u_xlat1;
  let x_857 : vec3<f32> = ((x_849 * -(vec3<f32>(x_850, x_850, x_850))) + -(vec3<f32>(x_854.x, x_854.y, x_854.z)));
  let x_858 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec3<f32> = u_xlat2;
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(x_860, vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : f32 = u_xlat46;
  u_xlat46 = clamp(x_864, 0.0f, 1.0f);
  let x_866 : f32 = u_xlat46;
  u_xlat46 = (-(x_866) + 1.0f);
  let x_869 : f32 = u_xlat46;
  let x_870 : f32 = u_xlat46;
  u_xlat46 = (x_869 * x_870);
  let x_872 : f32 = u_xlat46;
  let x_873 : f32 = u_xlat46;
  u_xlat46 = (x_872 * x_873);
  let x_876 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_876) * 0.699999988f) + 1.700000048f);
  let x_883 : f32 = u_xlat0.x;
  let x_884 : f32 = u_xlat47;
  u_xlat0.x = (x_883 * x_884);
  let x_888 : f32 = u_xlat0.x;
  u_xlat0.x = (x_888 * 6.0f);
  let x_900 : vec4<f32> = u_xlat8;
  let x_903 : f32 = u_xlat0.x;
  let x_904 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_900.x, x_900.y, x_900.z), x_903);
  u_xlat8 = x_904;
  let x_906 : f32 = u_xlat8.w;
  u_xlat0.x = (x_906 + -1.0f);
  let x_914 : f32 = x_912.unity_SpecCube0_HDR.w;
  let x_916 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_914 * x_916) + 1.0f);
  let x_921 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_921, 0.0f);
  let x_925 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_925);
  let x_929 : f32 = u_xlat0.x;
  let x_931 : f32 = x_912.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_929 * x_931);
  let x_935 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_935);
  let x_939 : f32 = u_xlat0.x;
  let x_941 : f32 = x_912.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_939 * x_941);
  let x_944 : vec4<f32> = u_xlat8;
  let x_946 : vec3<f32> = u_xlat0;
  let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(x_946.x, x_946.x, x_946.x));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : f32 = u_xlat28;
  let x_953 : f32 = u_xlat28;
  let x_957 : vec2<f32> = ((vec2<f32>(x_951, x_951) * vec2<f32>(x_953, x_953)) + vec2<f32>(-1.0f, 1.0f));
  let x_958 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_957.x, x_958.y, x_957.y);
  let x_961 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_961);
  let x_963 : vec4<f32> = u_xlat5;
  let x_966 : f32 = u_xlat45;
  let x_968 : vec3<f32> = (-(vec3<f32>(x_963.x, x_963.y, x_963.z)) + vec3<f32>(x_966, x_966, x_966));
  let x_969 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : f32 = u_xlat46;
  let x_973 : vec4<f32> = u_xlat9;
  let x_976 : vec4<f32> = u_xlat5;
  let x_978 : vec3<f32> = ((vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_973.x, x_973.y, x_973.z)) + vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : f32 = u_xlat28;
  let x_983 : vec4<f32> = u_xlat9;
  let x_985 : vec3<f32> = (vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat8;
  let x_990 : vec4<f32> = u_xlat9;
  let x_992 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat3;
  let x_997 : vec4<f32> = u_xlat6;
  let x_1000 : vec4<f32> = u_xlat8;
  let x_1002 : vec3<f32> = ((vec3<f32>(x_995.x, x_995.y, x_995.z) * vec3<f32>(x_997.x, x_997.y, x_997.z)) + vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1006 : f32 = u_xlat4.x;
  let x_1008 : f32 = x_912.unity_LightData.z;
  u_xlat28 = (x_1006 * x_1008);
  let x_1010 : vec3<f32> = u_xlat2;
  let x_1012 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat45 = dot(x_1010, vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1015, 0.0f, 1.0f);
  let x_1017 : f32 = u_xlat28;
  let x_1018 : f32 = u_xlat45;
  u_xlat28 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat28;
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1024 : vec3<f32> = (vec3<f32>(x_1020, x_1020, x_1020) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat1;
  let x_1030 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat8;
  let x_1037 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : f32 = u_xlat28;
  u_xlat28 = max(x_1040, 1.17549435e-37f);
  let x_1043 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1043);
  let x_1045 : f32 = u_xlat28;
  let x_1047 : vec4<f32> = u_xlat8;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045, x_1045, x_1045) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec3<f32> = u_xlat2;
  let x_1053 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_1052, vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1056, 0.0f, 1.0f);
  let x_1059 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1061 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1064, 0.0f, 1.0f);
  let x_1066 : f32 = u_xlat28;
  let x_1067 : f32 = u_xlat28;
  u_xlat28 = (x_1066 * x_1067);
  let x_1069 : f32 = u_xlat28;
  let x_1071 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1069 * x_1071) + 1.000010014f);
  let x_1075 : f32 = u_xlat45;
  let x_1076 : f32 = u_xlat45;
  u_xlat45 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat28;
  let x_1079 : f32 = u_xlat28;
  u_xlat28 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat45;
  u_xlat45 = max(x_1081, 0.100000001f);
  let x_1084 : f32 = u_xlat28;
  let x_1085 : f32 = u_xlat45;
  u_xlat28 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat18;
  let x_1088 : f32 = u_xlat28;
  u_xlat28 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat44;
  let x_1091 : f32 = u_xlat28;
  u_xlat28 = (x_1090 / x_1091);
  let x_1093 : vec4<f32> = u_xlat5;
  let x_1095 : f32 = u_xlat28;
  let x_1098 : vec4<f32> = u_xlat6;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1093.x, x_1093.y, x_1093.z) * vec3<f32>(x_1095, x_1095, x_1095)) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat7;
  let x_1105 : vec4<f32> = u_xlat8;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1111 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1113 : f32 = x_912.unity_LightData.y;
  u_xlat28 = min(x_1111, x_1113);
  let x_1117 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1117));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1129 : u32 = u_xlatu_loop_1;
    let x_1130 : u32 = u_xlatu28;
    if ((x_1129 < x_1130)) {
    } else {
      break;
    }
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_1133 >> 2u);
    let x_1137 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1137 & 3u));
    let x_1140 : u32 = u_xlatu4;
    let x_1143 : vec4<f32> = x_912.unity_LightIndices[bitcast<i32>(x_1140)];
    let x_1153 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1158 : vec4<u32> = indexable[x_1153];
    u_xlat4.x = dot(x_1143, bitcast<vec4<f32>>(x_1158));
    let x_1164 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_1164);
    let x_1166 : vec3<f32> = vs_TEXCOORD7;
    let x_1178 : i32 = u_xlati4;
    let x_1180 : vec4<f32> = x_1177.x_AdditionalLightsPosition[x_1178];
    let x_1183 : i32 = u_xlati4;
    let x_1185 : vec4<f32> = x_1177.x_AdditionalLightsPosition[x_1183];
    let x_1187 : vec3<f32> = ((-(x_1166) * vec3<f32>(x_1180.w, x_1180.w, x_1180.w)) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
    let x_1188 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
    let x_1190 : vec4<f32> = u_xlat9;
    let x_1192 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1195 : f32 = u_xlat46;
    u_xlat46 = max(x_1195, 6.10351562e-05f);
    let x_1197 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1197);
    let x_1199 : f32 = u_xlat47;
    let x_1201 : vec4<f32> = u_xlat9;
    let x_1203 : vec3<f32> = (vec3<f32>(x_1199, x_1199, x_1199) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
    let x_1204 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
    let x_1207 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1207);
    let x_1209 : f32 = u_xlat46;
    let x_1210 : i32 = u_xlati4;
    let x_1212 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1210].x;
    u_xlat46 = (x_1209 * x_1212);
    let x_1214 : f32 = u_xlat46;
    let x_1216 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1214) * x_1216) + 1.0f);
    let x_1219 : f32 = u_xlat46;
    u_xlat46 = max(x_1219, 0.0f);
    let x_1221 : f32 = u_xlat46;
    let x_1222 : f32 = u_xlat46;
    u_xlat46 = (x_1221 * x_1222);
    let x_1224 : f32 = u_xlat46;
    let x_1225 : f32 = u_xlat48;
    u_xlat46 = (x_1224 * x_1225);
    let x_1227 : i32 = u_xlati4;
    let x_1229 : vec4<f32> = x_1177.x_AdditionalLightsSpotDir[x_1227];
    let x_1231 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1229.x, x_1229.y, x_1229.z), vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
    let x_1234 : f32 = u_xlat48;
    let x_1235 : i32 = u_xlati4;
    let x_1237 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1235].z;
    let x_1239 : i32 = u_xlati4;
    let x_1241 : f32 = x_1177.x_AdditionalLightsAttenuation[x_1239].w;
    u_xlat48 = ((x_1234 * x_1237) + x_1241);
    let x_1243 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1243, 0.0f, 1.0f);
    let x_1245 : f32 = u_xlat48;
    let x_1246 : f32 = u_xlat48;
    u_xlat48 = (x_1245 * x_1246);
    let x_1248 : f32 = u_xlat46;
    let x_1249 : f32 = u_xlat48;
    u_xlat46 = (x_1248 * x_1249);
    let x_1251 : f32 = u_xlat32;
    let x_1253 : i32 = u_xlati4;
    let x_1255 : vec4<f32> = x_1177.x_AdditionalLightsColor[x_1253];
    let x_1257 : vec3<f32> = (vec3<f32>(x_1251, x_1251, x_1251) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
    let x_1258 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
    let x_1260 : vec3<f32> = u_xlat2;
    let x_1261 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(x_1260, vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
    let x_1266 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1266, 0.0f, 1.0f);
    let x_1270 : f32 = u_xlat4.x;
    let x_1271 : f32 = u_xlat46;
    u_xlat4.x = (x_1270 * x_1271);
    let x_1274 : vec4<f32> = u_xlat4;
    let x_1276 : vec4<f32> = u_xlat11;
    let x_1278 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.x, x_1274.x) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
    let x_1281 : vec4<f32> = u_xlat9;
    let x_1283 : f32 = u_xlat47;
    let x_1286 : vec4<f32> = u_xlat1;
    let x_1288 : vec3<f32> = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1283, x_1283, x_1283)) + vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
    let x_1289 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1291 : vec4<f32> = u_xlat9;
    let x_1293 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1291.x, x_1291.y, x_1291.z), vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1298 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_1298, 1.17549435e-37f);
    let x_1302 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_1302);
    let x_1305 : vec4<f32> = u_xlat4;
    let x_1307 : vec4<f32> = u_xlat9;
    let x_1309 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.x, x_1305.x) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
    let x_1310 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
    let x_1312 : vec3<f32> = u_xlat2;
    let x_1313 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_1312, vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
    let x_1318 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1318, 0.0f, 1.0f);
    let x_1321 : vec4<f32> = u_xlat10;
    let x_1323 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
    let x_1328 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_1328, 0.0f, 1.0f);
    let x_1331 : vec4<f32> = u_xlat4;
    let x_1333 : vec4<f32> = u_xlat4;
    let x_1335 : vec2<f32> = (vec2<f32>(x_1331.x, x_1331.w) * vec2<f32>(x_1333.x, x_1333.w));
    let x_1336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1335.x, x_1336.y, x_1336.z, x_1335.y);
    let x_1339 : f32 = u_xlat4.x;
    let x_1341 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_1339 * x_1341) + 1.000010014f);
    let x_1346 : f32 = u_xlat4.x;
    let x_1348 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1346 * x_1348);
    let x_1352 : f32 = u_xlat4.w;
    u_xlat46 = max(x_1352, 0.100000001f);
    let x_1354 : f32 = u_xlat46;
    let x_1356 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1354 * x_1356);
    let x_1359 : f32 = u_xlat18;
    let x_1361 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1359 * x_1361);
    let x_1364 : f32 = u_xlat44;
    let x_1366 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1364 / x_1366);
    let x_1369 : vec4<f32> = u_xlat5;
    let x_1371 : vec4<f32> = u_xlat4;
    let x_1374 : vec4<f32> = u_xlat6;
    let x_1376 : vec3<f32> = ((vec3<f32>(x_1369.x, x_1369.y, x_1369.z) * vec3<f32>(x_1371.x, x_1371.x, x_1371.x)) + vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
    let x_1377 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    let x_1379 : vec4<f32> = u_xlat9;
    let x_1381 : vec4<f32> = u_xlat11;
    let x_1384 : vec4<f32> = u_xlat8;
    let x_1386 : vec3<f32> = ((vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z)) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);

    continuing {
      let x_1389 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1389 + bitcast<u32>(1i));
    }
  }
  let x_1391 : vec4<f32> = u_xlat3;
  let x_1393 : f32 = u_xlat14;
  let x_1396 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1391.x, x_1391.y, x_1391.z) * vec3<f32>(x_1393, x_1393, x_1393)) + vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
  let x_1399 : vec4<f32> = u_xlat8;
  let x_1401 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1399.x, x_1399.y, x_1399.z) + x_1401);
  let x_1403 : f32 = u_xlat43;
  let x_1404 : f32 = u_xlat43;
  u_xlat1.x = (x_1403 * -(x_1404));
  let x_1409 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1409);
  let x_1412 : vec3<f32> = u_xlat0;
  let x_1413 : f32 = u_xlat42;
  let x_1417 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_1412 * vec3<f32>(x_1413, x_1413, x_1413)) + -(vec3<f32>(x_1417.x, x_1417.y, x_1417.z)));
  let x_1423 : vec4<f32> = u_xlat1;
  let x_1425 : vec3<f32> = u_xlat0;
  let x_1428 : vec4<f32> = x_126.unity_FogColor;
  let x_1430 : vec3<f32> = ((vec3<f32>(x_1423.x, x_1423.x, x_1423.x) * x_1425) + vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
  let x_1431 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

