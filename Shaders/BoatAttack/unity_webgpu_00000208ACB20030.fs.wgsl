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
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1072 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1334 : AdditionalLights;

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
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_952 : f32;
  var u_xlat31 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati46 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
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
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat15.z;
    x_571 = x_575;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[2i].z;
    x_571 = x_579;
  }
  let x_580 : f32 = x_571;
  u_xlat2.z = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD3;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * x_593);
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres0;
  let x_607 : vec3<f32> = (x_597 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres1;
  let x_615 : vec3<f32> = (x_610 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres2;
  let x_624 : vec3<f32> = (x_618 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres3;
  let x_632 : vec3<f32> = (x_627 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_602.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_661 < x_663);
  let x_666 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_682);
  let x_687 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_687);
  let x_691 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_691);
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_696.y, x_696.z, x_696.w));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_704.z);
  let x_707 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_707, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_712 : f32 = u_xlat43;
  u_xlat43 = (-(x_712) + 4.0f);
  let x_717 : f32 = u_xlat43;
  u_xlatu43 = u32(x_717);
  let x_721 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_721) << bitcast<u32>(2i));
  let x_724 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : i32 = u_xlati43;
  let x_729 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_726 + 1i) / 4i)][((x_729 + 1i) % 4i)];
  let x_735 : vec3<f32> = (vec3<f32>(x_724.y, x_724.y, x_724.y) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati43;
  let x_740 : i32 = u_xlati43;
  let x_743 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_738 / 4i)][(x_740 % 4i)];
  let x_745 : vec3<f32> = vs_TEXCOORD7;
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_753 + 2i) / 4i)][((x_756 + 2i) % 4i)];
  let x_762 : vec3<f32> = vs_TEXCOORD7;
  let x_765 : vec4<f32> = u_xlat3;
  let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.z, x_762.z, x_762.z)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : i32 = u_xlati43;
  let x_775 : i32 = u_xlati43;
  let x_779 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_772 + 3i) / 4i)][((x_775 + 3i) % 4i)];
  let x_781 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_789 : vec4<f32> = vs_TEXCOORD0;
  let x_792 : f32 = x_126.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_789.z, x_789.w), x_792);
  let x_794 : vec3<f32> = vec3<f32>(x_793.x, x_793.y, x_793.z);
  let x_795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_799 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
  let x_804 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_800.x, x_800.y));
  let x_805 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_809 : vec4<f32> = hlslcc_FragCoord;
  let x_811 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(x_809.x, x_809.y));
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
  let x_815 : f32 = u_xlat6.y;
  let x_817 : f32 = x_126.x_ScaleBiasRt.x;
  let x_820 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_815 * x_817) + x_820);
  let x_822 : f32 = u_xlat43;
  u_xlat6.z = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_827) * 0.959999979f) + 0.959999979f);
  let x_833 : f32 = u_xlat28;
  let x_834 : f32 = u_xlat43;
  u_xlat44 = (x_833 + -(x_834));
  let x_837 : f32 = u_xlat43;
  let x_839 : vec4<f32> = u_xlat5;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat5;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_849 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec3<f32> = u_xlat0;
  let x_853 : vec4<f32> = u_xlat5;
  let x_858 : vec3<f32> = ((vec3<f32>(x_851.x, x_851.x, x_851.x) * vec3<f32>(x_853.x, x_853.y, x_853.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_859 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : f32 = u_xlat28;
  u_xlat0.x = (-(x_861) + 1.0f);
  let x_866 : f32 = u_xlat0.x;
  let x_868 : f32 = u_xlat0.x;
  u_xlat28 = (x_866 * x_868);
  let x_870 : f32 = u_xlat28;
  u_xlat28 = max(x_870, 0.0078125f);
  let x_873 : f32 = u_xlat28;
  let x_874 : f32 = u_xlat28;
  u_xlat43 = (x_873 * x_874);
  let x_876 : f32 = u_xlat44;
  u_xlat44 = (x_876 + 1.0f);
  let x_878 : f32 = u_xlat44;
  u_xlat44 = clamp(x_878, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat28;
  u_xlat45 = ((x_881 * 4.0f) + 2.0f);
  let x_890 : vec4<f32> = u_xlat6;
  let x_893 : f32 = x_126.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_890.x, x_890.z), x_893);
  u_xlat46 = x_894.x;
  let x_897 : f32 = u_xlat46;
  u_xlat47 = (x_897 + -1.0f);
  let x_900 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_901 : f32 = u_xlat47;
  u_xlat47 = ((x_900 * x_901) + 1.0f);
  let x_904 : f32 = u_xlat14;
  let x_905 : f32 = u_xlat46;
  u_xlat14 = min(x_904, x_905);
  let x_908 : vec4<f32> = u_xlat3;
  let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
  let x_911 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_909.x, x_909.y, x_911);
  let x_923 : vec3<f32> = txVec0;
  let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_923.xy, x_923.z);
  u_xlat3.x = x_925;
  let x_929 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_929) + 1.0f);
  let x_933 : f32 = u_xlat3.x;
  let x_935 : f32 = x_602.x_MainLightShadowParams.x;
  let x_937 : f32 = u_xlat17;
  u_xlat3.x = ((x_933 * x_935) + x_937);
  let x_942 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_942);
  let x_946 : f32 = u_xlat3.z;
  u_xlatb31 = (x_946 >= 1.0f);
  let x_948 : bool = u_xlatb31;
  let x_949 : bool = u_xlatb17;
  u_xlatb17 = (x_948 | x_949);
  let x_951 : bool = u_xlatb17;
  if (x_951) {
    x_952 = 1.0f;
  } else {
    let x_957 : f32 = u_xlat3.x;
    x_952 = x_957;
  }
  let x_958 : f32 = x_952;
  u_xlat3.x = x_958;
  let x_960 : vec3<f32> = vs_TEXCOORD7;
  let x_962 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_964 : vec3<f32> = (x_960 + -(x_962));
  let x_965 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec4<f32> = u_xlat6;
  let x_969 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : f32 = u_xlat17;
  let x_974 : f32 = x_602.x_MainLightShadowParams.z;
  let x_977 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat17 = ((x_972 * x_974) + x_977);
  let x_979 : f32 = u_xlat17;
  u_xlat17 = clamp(x_979, 0.0f, 1.0f);
  let x_983 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_983) + 1.0f);
  let x_986 : f32 = u_xlat17;
  let x_987 : f32 = u_xlat31;
  let x_990 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_986 * x_987) + x_990);
  let x_993 : f32 = u_xlat47;
  let x_996 : vec4<f32> = x_126.x_MainLightColor;
  let x_998 : vec3<f32> = (vec3<f32>(x_993, x_993, x_993) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec3<f32> = u_xlat2;
  let x_1003 : vec4<f32> = u_xlat1;
  u_xlat17 = dot(-(x_1001), vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : f32 = u_xlat17;
  let x_1007 : f32 = u_xlat17;
  u_xlat17 = (x_1006 + x_1007);
  let x_1009 : vec4<f32> = u_xlat1;
  let x_1011 : f32 = u_xlat17;
  let x_1015 : vec3<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * -(vec3<f32>(x_1011, x_1011, x_1011))) + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec3<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1022);
  let x_1024 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1024, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat17;
  u_xlat17 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat17;
  let x_1030 : f32 = u_xlat17;
  u_xlat17 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat17;
  let x_1033 : f32 = u_xlat17;
  u_xlat17 = (x_1032 * x_1033);
  let x_1036 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1036) * 0.699999988f) + 1.700000048f);
  let x_1043 : f32 = u_xlat0.x;
  let x_1044 : f32 = u_xlat31;
  u_xlat0.x = (x_1043 * x_1044);
  let x_1048 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1048 * 6.0f);
  let x_1060 : vec4<f32> = u_xlat8;
  let x_1063 : f32 = u_xlat0.x;
  let x_1064 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1060.x, x_1060.y, x_1060.z), x_1063);
  u_xlat8 = x_1064;
  let x_1066 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1066 + -1.0f);
  let x_1074 : f32 = x_1072.unity_SpecCube0_HDR.w;
  let x_1076 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1074 * x_1076) + 1.0f);
  let x_1081 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1081, 0.0f);
  let x_1085 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1085);
  let x_1089 : f32 = u_xlat0.x;
  let x_1091 : f32 = x_1072.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1089 * x_1091);
  let x_1095 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1095);
  let x_1099 : f32 = u_xlat0.x;
  let x_1101 : f32 = x_1072.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1099 * x_1101);
  let x_1104 : vec4<f32> = u_xlat8;
  let x_1106 : vec3<f32> = u_xlat0;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1106.x, x_1106.x, x_1106.x));
  let x_1109 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : f32 = u_xlat28;
  let x_1113 : f32 = u_xlat28;
  let x_1117 : vec2<f32> = ((vec2<f32>(x_1111, x_1111) * vec2<f32>(x_1113, x_1113)) + vec2<f32>(-1.0f, 1.0f));
  let x_1118 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1117.x, x_1118.y, x_1117.y);
  let x_1121 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1121);
  let x_1123 : vec4<f32> = u_xlat5;
  let x_1126 : f32 = u_xlat44;
  let x_1128 : vec3<f32> = (-(vec3<f32>(x_1123.x, x_1123.y, x_1123.z)) + vec3<f32>(x_1126, x_1126, x_1126));
  let x_1129 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : f32 = u_xlat17;
  let x_1133 : vec4<f32> = u_xlat9;
  let x_1136 : vec4<f32> = u_xlat5;
  let x_1138 : vec3<f32> = ((vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z)) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : f32 = u_xlat28;
  let x_1143 : vec4<f32> = u_xlat9;
  let x_1145 : vec3<f32> = (vec3<f32>(x_1141, x_1141, x_1141) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat8;
  let x_1150 : vec4<f32> = u_xlat9;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat4;
  let x_1157 : vec4<f32> = u_xlat7;
  let x_1160 : vec4<f32> = u_xlat8;
  let x_1162 : vec3<f32> = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157.x, x_1157.y, x_1157.z)) + vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1166 : f32 = u_xlat3.x;
  let x_1168 : f32 = x_1072.unity_LightData.z;
  u_xlat28 = (x_1166 * x_1168);
  let x_1170 : vec4<f32> = u_xlat1;
  let x_1173 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1176, 0.0f, 1.0f);
  let x_1178 : f32 = u_xlat28;
  let x_1179 : f32 = u_xlat44;
  u_xlat28 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat28;
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181, x_1181, x_1181) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec3<f32> = u_xlat2;
  let x_1190 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1192 : vec3<f32> = (x_1188 + vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec4<f32> = u_xlat6;
  let x_1197 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1195.x, x_1195.y, x_1195.z), vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : f32 = u_xlat28;
  u_xlat28 = max(x_1200, 1.17549435e-37f);
  let x_1203 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1203);
  let x_1205 : f32 = u_xlat28;
  let x_1207 : vec4<f32> = u_xlat6;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205, x_1205, x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec4<f32> = u_xlat1;
  let x_1214 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1217, 0.0f, 1.0f);
  let x_1220 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1222 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1220.x, x_1220.y, x_1220.z), vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : f32 = u_xlat28;
  let x_1228 : f32 = u_xlat28;
  u_xlat28 = (x_1227 * x_1228);
  let x_1230 : f32 = u_xlat28;
  let x_1232 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1230 * x_1232) + 1.000010014f);
  let x_1236 : f32 = u_xlat44;
  let x_1237 : f32 = u_xlat44;
  u_xlat44 = (x_1236 * x_1237);
  let x_1239 : f32 = u_xlat28;
  let x_1240 : f32 = u_xlat28;
  u_xlat28 = (x_1239 * x_1240);
  let x_1242 : f32 = u_xlat44;
  u_xlat44 = max(x_1242, 0.100000001f);
  let x_1245 : f32 = u_xlat28;
  let x_1246 : f32 = u_xlat44;
  u_xlat28 = (x_1245 * x_1246);
  let x_1248 : f32 = u_xlat45;
  let x_1249 : f32 = u_xlat28;
  u_xlat28 = (x_1248 * x_1249);
  let x_1251 : f32 = u_xlat43;
  let x_1252 : f32 = u_xlat28;
  u_xlat28 = (x_1251 / x_1252);
  let x_1254 : vec4<f32> = u_xlat5;
  let x_1256 : f32 = u_xlat28;
  let x_1259 : vec4<f32> = u_xlat7;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * vec3<f32>(x_1256, x_1256, x_1256)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat3;
  let x_1266 : vec4<f32> = u_xlat6;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1272 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1274 : f32 = x_1072.unity_LightData.y;
  u_xlat28 = min(x_1272, x_1274);
  let x_1277 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1277));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1289 : u32 = u_xlatu_loop_1;
    let x_1290 : u32 = u_xlatu28;
    if ((x_1289 < x_1290)) {
    } else {
      break;
    }
    let x_1293 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1293 >> 2u);
    let x_1296 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1296 & 3u));
    let x_1299 : u32 = u_xlatu46;
    let x_1302 : vec4<f32> = x_1072.unity_LightIndices[bitcast<i32>(x_1299)];
    let x_1312 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1317 : vec4<u32> = indexable[x_1312];
    u_xlat46 = dot(x_1302, bitcast<vec4<f32>>(x_1317));
    let x_1321 : f32 = u_xlat46;
    u_xlati46 = i32(x_1321);
    let x_1323 : vec3<f32> = vs_TEXCOORD7;
    let x_1335 : i32 = u_xlati46;
    let x_1337 : vec4<f32> = x_1334.x_AdditionalLightsPosition[x_1335];
    let x_1340 : i32 = u_xlati46;
    let x_1342 : vec4<f32> = x_1334.x_AdditionalLightsPosition[x_1340];
    let x_1344 : vec3<f32> = ((-(x_1323) * vec3<f32>(x_1337.w, x_1337.w, x_1337.w)) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
    let x_1345 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
    let x_1348 : vec4<f32> = u_xlat8;
    let x_1350 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : f32 = u_xlat48;
    u_xlat48 = max(x_1353, 6.10351562e-05f);
    let x_1356 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1356);
    let x_1358 : f32 = u_xlat49;
    let x_1360 : vec4<f32> = u_xlat8;
    let x_1362 : vec3<f32> = (vec3<f32>(x_1358, x_1358, x_1358) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
    let x_1363 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
    let x_1366 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1366);
    let x_1368 : f32 = u_xlat48;
    let x_1369 : i32 = u_xlati46;
    let x_1371 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1369].x;
    u_xlat48 = (x_1368 * x_1371);
    let x_1373 : f32 = u_xlat48;
    let x_1375 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1373) * x_1375) + 1.0f);
    let x_1378 : f32 = u_xlat48;
    u_xlat48 = max(x_1378, 0.0f);
    let x_1380 : f32 = u_xlat48;
    let x_1381 : f32 = u_xlat48;
    u_xlat48 = (x_1380 * x_1381);
    let x_1383 : f32 = u_xlat48;
    let x_1384 : f32 = u_xlat50;
    u_xlat48 = (x_1383 * x_1384);
    let x_1386 : i32 = u_xlati46;
    let x_1388 : vec4<f32> = x_1334.x_AdditionalLightsSpotDir[x_1386];
    let x_1390 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1388.x, x_1388.y, x_1388.z), vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
    let x_1393 : f32 = u_xlat50;
    let x_1394 : i32 = u_xlati46;
    let x_1396 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1394].z;
    let x_1398 : i32 = u_xlati46;
    let x_1400 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1398].w;
    u_xlat50 = ((x_1393 * x_1396) + x_1400);
    let x_1402 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1402, 0.0f, 1.0f);
    let x_1404 : f32 = u_xlat50;
    let x_1405 : f32 = u_xlat50;
    u_xlat50 = (x_1404 * x_1405);
    let x_1407 : f32 = u_xlat48;
    let x_1408 : f32 = u_xlat50;
    u_xlat48 = (x_1407 * x_1408);
    let x_1410 : f32 = u_xlat47;
    let x_1412 : i32 = u_xlati46;
    let x_1414 : vec4<f32> = x_1334.x_AdditionalLightsColor[x_1412];
    let x_1416 : vec3<f32> = (vec3<f32>(x_1410, x_1410, x_1410) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : vec4<f32> = u_xlat1;
    let x_1421 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1419.x, x_1419.y, x_1419.z), vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1424, 0.0f, 1.0f);
    let x_1426 : f32 = u_xlat46;
    let x_1427 : f32 = u_xlat48;
    u_xlat46 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat46;
    let x_1431 : vec4<f32> = u_xlat10;
    let x_1433 : vec3<f32> = (vec3<f32>(x_1429, x_1429, x_1429) * vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
    let x_1436 : vec4<f32> = u_xlat8;
    let x_1438 : f32 = u_xlat49;
    let x_1441 : vec3<f32> = u_xlat2;
    let x_1442 : vec3<f32> = ((vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * vec3<f32>(x_1438, x_1438, x_1438)) + x_1441);
    let x_1443 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
    let x_1445 : vec4<f32> = u_xlat8;
    let x_1447 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1445.x, x_1445.y, x_1445.z), vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : f32 = u_xlat46;
    u_xlat46 = max(x_1450, 1.17549435e-37f);
    let x_1452 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1452);
    let x_1454 : f32 = u_xlat46;
    let x_1456 : vec4<f32> = u_xlat8;
    let x_1458 : vec3<f32> = (vec3<f32>(x_1454, x_1454, x_1454) * vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
    let x_1461 : vec4<f32> = u_xlat1;
    let x_1463 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
    let x_1466 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1466, 0.0f, 1.0f);
    let x_1468 : vec4<f32> = u_xlat9;
    let x_1470 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1468.x, x_1468.y, x_1468.z), vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
    let x_1473 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1473, 0.0f, 1.0f);
    let x_1475 : f32 = u_xlat46;
    let x_1476 : f32 = u_xlat46;
    u_xlat46 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat46;
    let x_1480 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1478 * x_1480) + 1.000010014f);
    let x_1483 : f32 = u_xlat48;
    let x_1484 : f32 = u_xlat48;
    u_xlat48 = (x_1483 * x_1484);
    let x_1486 : f32 = u_xlat46;
    let x_1487 : f32 = u_xlat46;
    u_xlat46 = (x_1486 * x_1487);
    let x_1489 : f32 = u_xlat48;
    u_xlat48 = max(x_1489, 0.100000001f);
    let x_1491 : f32 = u_xlat46;
    let x_1492 : f32 = u_xlat48;
    u_xlat46 = (x_1491 * x_1492);
    let x_1494 : f32 = u_xlat45;
    let x_1495 : f32 = u_xlat46;
    u_xlat46 = (x_1494 * x_1495);
    let x_1497 : f32 = u_xlat43;
    let x_1498 : f32 = u_xlat46;
    u_xlat46 = (x_1497 / x_1498);
    let x_1500 : vec4<f32> = u_xlat5;
    let x_1502 : f32 = u_xlat46;
    let x_1505 : vec4<f32> = u_xlat7;
    let x_1507 : vec3<f32> = ((vec3<f32>(x_1500.x, x_1500.y, x_1500.z) * vec3<f32>(x_1502, x_1502, x_1502)) + vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
    let x_1510 : vec4<f32> = u_xlat8;
    let x_1512 : vec4<f32> = u_xlat10;
    let x_1515 : vec4<f32> = u_xlat6;
    let x_1517 : vec3<f32> = ((vec3<f32>(x_1510.x, x_1510.y, x_1510.z) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z)) + vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
    let x_1518 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1518.w);

    continuing {
      let x_1520 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1520 + bitcast<u32>(1i));
    }
  }
  let x_1522 : vec4<f32> = u_xlat4;
  let x_1524 : f32 = u_xlat14;
  let x_1527 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1522.x, x_1522.y, x_1522.z) * vec3<f32>(x_1524, x_1524, x_1524)) + vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
  let x_1530 : vec4<f32> = u_xlat6;
  let x_1532 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) + x_1532);
  let x_1536 : f32 = u_xlat42;
  let x_1538 : vec3<f32> = u_xlat0;
  let x_1539 : vec3<f32> = (vec3<f32>(x_1536, x_1536, x_1536) * x_1538);
  let x_1540 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

