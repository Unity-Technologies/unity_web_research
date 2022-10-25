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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_623 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_837 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1248 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
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
  var x_561 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_862 : f32;
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
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_79 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.w, x_74.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_79.x, x_79.w, x_79.y));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_88 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.z, x_88.w) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = u_xlat4;
  let x_102 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(0.5f, 0.5f));
  let x_103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  let x_108 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_110 : vec2<f32> = (vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_123 : vec4<f32> = u_xlat4;
  let x_133 : f32 = x_128.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_133);
  u_xlat4 = x_134;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_147 : vec4<f32> = vs_TEXCOORD1;
  let x_150 : f32 = x_128.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_147.x, x_147.y), x_150);
  u_xlat5 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD1;
  let x_160 : f32 = x_128.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat6 = x_161;
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_171 : f32 = x_128.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat7 = x_172;
  let x_178 : vec4<f32> = vs_TEXCOORD2;
  let x_181 : f32 = x_128.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_178.z, x_178.w), x_181);
  u_xlat8 = x_182;
  let x_185 : f32 = u_xlat5.w;
  u_xlat9.x = x_185;
  let x_188 : f32 = u_xlat6.w;
  u_xlat9.y = x_188;
  let x_192 : f32 = u_xlat7.w;
  u_xlat9.z = x_192;
  let x_196 : f32 = u_xlat8.w;
  u_xlat9.w = x_196;
  let x_199 : vec4<f32> = u_xlat9;
  let x_202 : f32 = x_30.x_Smoothness0;
  let x_205 : f32 = x_30.x_Smoothness1;
  let x_208 : f32 = x_30.x_Smoothness2;
  let x_211 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_199 * vec4<f32>(x_202, x_205, x_208, x_211));
  let x_220 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_220);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_223) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat9;
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_226 + -(x_227));
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_230 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_234, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_239 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_246 + -(x_247));
  let x_252 : f32 = u_xlat12.x;
  let x_255 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.y;
  let x_262 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_259 * x_262);
  let x_266 : f32 = u_xlat12.z;
  let x_269 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_266 * x_269);
  let x_273 : f32 = u_xlat12.w;
  let x_276 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_273 * x_276);
  let x_279 : vec4<f32> = u_xlat11;
  let x_280 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_279 + x_280);
  let x_282 : bool = u_xlatb43;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_368;
  let x_371 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_371;
  let x_374 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_374;
  let x_377 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_377;
  let x_380 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_380;
  let x_383 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_383;
  let x_386 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_386;
  let x_389 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_389;
  let x_391 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_391 + x_392);
  let x_395 : f32 = u_xlat0.z;
  u_xlat7.x = x_395;
  let x_398 : f32 = u_xlat1.z;
  u_xlat7.y = x_398;
  let x_401 : f32 = u_xlat2.z;
  u_xlat7.z = x_401;
  let x_404 : f32 = u_xlat3.y;
  u_xlat7.w = x_404;
  let x_406 : vec4<f32> = u_xlat9;
  let x_409 : f32 = x_30.x_Smoothness0;
  let x_411 : f32 = x_30.x_Smoothness1;
  let x_413 : f32 = x_30.x_Smoothness2;
  let x_415 : f32 = x_30.x_Smoothness3;
  let x_418 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_406) * vec4<f32>(x_409, x_411, x_413, x_415)) + x_418);
  let x_422 : f32 = x_30.x_LayerHasMask0;
  let x_425 : f32 = x_30.x_LayerHasMask1;
  let x_428 : f32 = x_30.x_LayerHasMask2;
  let x_431 : f32 = x_30.x_LayerHasMask3;
  let x_433 : vec4<f32> = u_xlat7;
  let x_435 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_422, x_425, x_428, x_431) * x_433) + x_435);
  let x_438 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_438, x_439);
  let x_442 : f32 = u_xlat0.x;
  u_xlat7.x = x_442;
  let x_445 : f32 = u_xlat1.x;
  u_xlat7.y = x_445;
  let x_448 : f32 = u_xlat2.x;
  u_xlat7.z = x_448;
  let x_451 : f32 = u_xlat3.x;
  u_xlat7.w = x_451;
  let x_453 : vec4<f32> = u_xlat7;
  let x_456 : f32 = x_30.x_Metallic0;
  let x_459 : f32 = x_30.x_Metallic1;
  let x_462 : f32 = x_30.x_Metallic2;
  let x_465 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_453 + -(vec4<f32>(x_456, x_459, x_462, x_465)));
  let x_470 : f32 = x_30.x_LayerHasMask0;
  let x_472 : f32 = x_30.x_LayerHasMask1;
  let x_474 : f32 = x_30.x_LayerHasMask2;
  let x_476 : f32 = x_30.x_LayerHasMask3;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : f32 = x_30.x_Metallic0;
  let x_483 : f32 = x_30.x_Metallic1;
  let x_485 : f32 = x_30.x_Metallic2;
  let x_487 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_470, x_472, x_474, x_476) * x_478) + vec4<f32>(x_481, x_483, x_485, x_487));
  let x_490 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_490, x_491);
  let x_495 : f32 = u_xlat0.y;
  u_xlat3.x = x_495;
  let x_498 : f32 = u_xlat1.y;
  u_xlat3.y = x_498;
  let x_501 : f32 = u_xlat2.y;
  u_xlat3.z = x_501;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_503) + x_505);
  let x_508 : f32 = x_30.x_LayerHasMask0;
  let x_510 : f32 = x_30.x_LayerHasMask1;
  let x_512 : f32 = x_30.x_LayerHasMask2;
  let x_514 : f32 = x_30.x_LayerHasMask3;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_508, x_510, x_512, x_514) * x_516) + x_518);
  let x_521 : vec4<f32> = u_xlat4;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_521, x_522);
  let x_526 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_526 == 0.0f);
  let x_531 : vec3<f32> = vs_TEXCOORD7;
  let x_535 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_531) + x_535);
  let x_537 : vec3<f32> = u_xlat15;
  let x_538 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_537, x_538);
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_542);
  let x_545 : vec3<f32> = u_xlat15;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_545 * vec3<f32>(x_546.x, x_546.x, x_546.x));
  let x_551 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_564 : vec3<f32> = u_xlat15;
    x_561 = x_564;
  } else {
    let x_566 : vec4<f32> = u_xlat2;
    x_561 = vec3<f32>(x_566.x, x_566.y, x_566.z);
  }
  let x_568 : vec3<f32> = x_561;
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_572, x_573);
  let x_575 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat43;
  let x_579 : vec3<f32> = vs_TEXCOORD3;
  let x_580 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = vs_TEXCOORD7.y;
  let x_586 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_584 * x_586);
  let x_589 : f32 = x_128.unity_MatrixV[0i].z;
  let x_591 : f32 = vs_TEXCOORD7.x;
  let x_593 : f32 = u_xlat43;
  u_xlat43 = ((x_589 * x_591) + x_593);
  let x_596 : f32 = x_128.unity_MatrixV[2i].z;
  let x_598 : f32 = vs_TEXCOORD7.z;
  let x_600 : f32 = u_xlat43;
  u_xlat43 = ((x_596 * x_598) + x_600);
  let x_602 : f32 = u_xlat43;
  let x_605 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_602 + x_605);
  let x_607 : f32 = u_xlat43;
  let x_610 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_607) + -(x_610));
  let x_613 : f32 = u_xlat43;
  u_xlat43 = max(x_613, 0.0f);
  let x_615 : f32 = u_xlat43;
  let x_617 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_615 * x_617);
  u_xlat2.w = 1.0f;
  let x_625 : vec4<f32> = x_623.unity_SHAr;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_625, x_626);
  let x_630 : vec4<f32> = x_623.unity_SHAg;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_630, x_631);
  let x_635 : vec4<f32> = x_623.unity_SHAb;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_635, x_636);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_639.y, x_639.z, x_639.z, x_639.x) * vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.z));
  let x_645 : vec4<f32> = x_623.unity_SHBr;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_645, x_646);
  let x_650 : vec4<f32> = x_623.unity_SHBg;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_623.unity_SHBb;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_655, x_656);
  let x_661 : f32 = u_xlat2.y;
  let x_663 : f32 = u_xlat2.y;
  u_xlat44 = (x_661 * x_663);
  let x_666 : f32 = u_xlat2.x;
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat44;
  u_xlat44 = ((x_666 * x_668) + -(x_670));
  let x_675 : vec4<f32> = x_623.unity_SHC;
  let x_677 : f32 = u_xlat44;
  let x_680 : vec4<f32> = u_xlat6;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677, x_677, x_677)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = max(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
  let x_705 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_701.x, x_701.y));
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec4<f32> = hlslcc_FragCoord;
  let x_712 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_710.x, x_710.y));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
  let x_716 : f32 = u_xlat4.y;
  let x_718 : f32 = x_128.x_ScaleBiasRt.x;
  let x_721 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_716 * x_718) + x_721);
  let x_723 : f32 = u_xlat44;
  u_xlat4.z = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_728) * 0.959999979f) + 0.959999979f);
  let x_734 : f32 = u_xlat28;
  let x_735 : f32 = u_xlat44;
  u_xlat45 = (x_734 + -(x_735));
  let x_738 : f32 = u_xlat44;
  let x_740 : vec4<f32> = u_xlat5;
  let x_742 : vec3<f32> = (vec3<f32>(x_738, x_738, x_738) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat0;
  let x_754 : vec4<f32> = u_xlat5;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.x, x_752.x) * vec3<f32>(x_754.x, x_754.y, x_754.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : f32 = u_xlat28;
  u_xlat0.x = (-(x_762) + 1.0f);
  let x_767 : f32 = u_xlat0.x;
  let x_769 : f32 = u_xlat0.x;
  u_xlat28 = (x_767 * x_769);
  let x_771 : f32 = u_xlat28;
  u_xlat28 = max(x_771, 0.0078125f);
  let x_774 : f32 = u_xlat28;
  let x_775 : f32 = u_xlat28;
  u_xlat44 = (x_774 * x_775);
  let x_777 : f32 = u_xlat45;
  u_xlat45 = (x_777 + 1.0f);
  let x_779 : f32 = u_xlat45;
  u_xlat45 = clamp(x_779, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat28;
  u_xlat18 = ((x_782 * 4.0f) + 2.0f);
  let x_791 : vec4<f32> = u_xlat4;
  let x_794 : f32 = x_128.x_GlobalMipBias.x;
  let x_795 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_791.x, x_791.z), x_794);
  u_xlat4.x = x_795.x;
  let x_800 : f32 = u_xlat4.x;
  u_xlat32 = (x_800 + -1.0f);
  let x_803 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_804 : f32 = u_xlat32;
  u_xlat32 = ((x_803 * x_804) + 1.0f);
  let x_807 : f32 = u_xlat14;
  let x_809 : f32 = u_xlat4.x;
  u_xlat14 = min(x_807, x_809);
  let x_813 : vec4<f32> = vs_TEXCOORD8;
  let x_814 : vec2<f32> = vec2<f32>(x_813.x, x_813.y);
  let x_816 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_814.x, x_814.y, x_816);
  let x_828 : vec3<f32> = txVec0;
  let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
  u_xlat4.x = x_830;
  let x_839 : f32 = x_837.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_839) + 1.0f);
  let x_843 : f32 = u_xlat4.x;
  let x_845 : f32 = x_837.x_MainLightShadowParams.x;
  let x_847 : f32 = u_xlat46;
  u_xlat4.x = ((x_843 * x_845) + x_847);
  let x_852 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_852);
  let x_856 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_856 >= 1.0f);
  let x_858 : bool = u_xlatb46;
  let x_859 : bool = u_xlatb47;
  u_xlatb46 = (x_858 | x_859);
  let x_861 : bool = u_xlatb46;
  if (x_861) {
    x_862 = 1.0f;
  } else {
    let x_867 : f32 = u_xlat4.x;
    x_862 = x_867;
  }
  let x_868 : f32 = x_862;
  u_xlat4.x = x_868;
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_874 : vec3<f32> = (x_870 + -(x_872));
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat7;
  let x_879 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat46;
  let x_884 : f32 = x_837.x_MainLightShadowParams.z;
  let x_887 : f32 = x_837.x_MainLightShadowParams.w;
  u_xlat46 = ((x_882 * x_884) + x_887);
  let x_889 : f32 = u_xlat46;
  u_xlat46 = clamp(x_889, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat4.x;
  u_xlat47 = (-(x_893) + 1.0f);
  let x_896 : f32 = u_xlat46;
  let x_897 : f32 = u_xlat47;
  let x_900 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_896 * x_897) + x_900);
  let x_903 : f32 = u_xlat32;
  let x_906 : vec4<f32> = x_128.x_MainLightColor;
  let x_908 : vec3<f32> = (vec3<f32>(x_903, x_903, x_903) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat1;
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(-(vec3<f32>(x_911.x, x_911.y, x_911.z)), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : f32 = u_xlat46;
  let x_918 : f32 = u_xlat46;
  u_xlat46 = (x_917 + x_918);
  let x_920 : vec4<f32> = u_xlat2;
  let x_922 : f32 = u_xlat46;
  let x_926 : vec4<f32> = u_xlat1;
  let x_929 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * -(vec3<f32>(x_922, x_922, x_922))) + -(vec3<f32>(x_926.x, x_926.y, x_926.z)));
  let x_930 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : f32 = u_xlat46;
  u_xlat46 = clamp(x_937, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat46;
  u_xlat46 = (-(x_939) + 1.0f);
  let x_942 : f32 = u_xlat46;
  let x_943 : f32 = u_xlat46;
  u_xlat46 = (x_942 * x_943);
  let x_945 : f32 = u_xlat46;
  let x_946 : f32 = u_xlat46;
  u_xlat46 = (x_945 * x_946);
  let x_949 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_949) * 0.699999988f) + 1.700000048f);
  let x_956 : f32 = u_xlat0.x;
  let x_957 : f32 = u_xlat47;
  u_xlat0.x = (x_956 * x_957);
  let x_961 : f32 = u_xlat0.x;
  u_xlat0.x = (x_961 * 6.0f);
  let x_973 : vec4<f32> = u_xlat8;
  let x_976 : f32 = u_xlat0.x;
  let x_977 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_973.x, x_973.y, x_973.z), x_976);
  u_xlat8 = x_977;
  let x_979 : f32 = u_xlat8.w;
  u_xlat0.x = (x_979 + -1.0f);
  let x_983 : f32 = x_623.unity_SpecCube0_HDR.w;
  let x_985 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_983 * x_985) + 1.0f);
  let x_990 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_990, 0.0f);
  let x_994 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_994);
  let x_998 : f32 = u_xlat0.x;
  let x_1000 : f32 = x_623.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_998 * x_1000);
  let x_1004 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1004);
  let x_1008 : f32 = u_xlat0.x;
  let x_1010 : f32 = x_623.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1008 * x_1010);
  let x_1013 : vec4<f32> = u_xlat8;
  let x_1015 : vec3<f32> = u_xlat0;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(x_1015.x, x_1015.x, x_1015.x));
  let x_1018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : f32 = u_xlat28;
  let x_1022 : f32 = u_xlat28;
  let x_1026 : vec2<f32> = ((vec2<f32>(x_1020, x_1020) * vec2<f32>(x_1022, x_1022)) + vec2<f32>(-1.0f, 1.0f));
  let x_1027 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1026.x, x_1027.y, x_1026.y);
  let x_1030 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1030);
  let x_1032 : vec4<f32> = u_xlat5;
  let x_1035 : f32 = u_xlat45;
  let x_1037 : vec3<f32> = (-(vec3<f32>(x_1032.x, x_1032.y, x_1032.z)) + vec3<f32>(x_1035, x_1035, x_1035));
  let x_1038 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : f32 = u_xlat46;
  let x_1042 : vec4<f32> = u_xlat9;
  let x_1045 : vec4<f32> = u_xlat5;
  let x_1047 : vec3<f32> = ((vec3<f32>(x_1040, x_1040, x_1040) * vec3<f32>(x_1042.x, x_1042.y, x_1042.z)) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : f32 = u_xlat28;
  let x_1052 : vec4<f32> = u_xlat9;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1050, x_1050, x_1050) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat8;
  let x_1059 : vec4<f32> = u_xlat9;
  let x_1061 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat3;
  let x_1066 : vec4<f32> = u_xlat6;
  let x_1069 : vec4<f32> = u_xlat8;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1075 : f32 = u_xlat4.x;
  let x_1077 : f32 = x_623.unity_LightData.z;
  u_xlat28 = (x_1075 * x_1077);
  let x_1079 : vec4<f32> = u_xlat2;
  let x_1082 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1085, 0.0f, 1.0f);
  let x_1087 : f32 = u_xlat28;
  let x_1088 : f32 = u_xlat45;
  u_xlat28 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat28;
  let x_1092 : vec4<f32> = u_xlat7;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat1;
  let x_1100 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat8;
  let x_1107 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : f32 = u_xlat28;
  u_xlat28 = max(x_1110, 1.17549435e-37f);
  let x_1113 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1113);
  let x_1115 : f32 = u_xlat28;
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat2;
  let x_1124 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1127, 0.0f, 1.0f);
  let x_1130 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1132 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1130.x, x_1130.y, x_1130.z), vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1135, 0.0f, 1.0f);
  let x_1137 : f32 = u_xlat28;
  let x_1138 : f32 = u_xlat28;
  u_xlat28 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat28;
  let x_1142 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1140 * x_1142) + 1.000010014f);
  let x_1146 : f32 = u_xlat45;
  let x_1147 : f32 = u_xlat45;
  u_xlat45 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat28;
  let x_1150 : f32 = u_xlat28;
  u_xlat28 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat45;
  u_xlat45 = max(x_1152, 0.100000001f);
  let x_1155 : f32 = u_xlat28;
  let x_1156 : f32 = u_xlat45;
  u_xlat28 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat18;
  let x_1159 : f32 = u_xlat28;
  u_xlat28 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat44;
  let x_1162 : f32 = u_xlat28;
  u_xlat28 = (x_1161 / x_1162);
  let x_1164 : vec4<f32> = u_xlat5;
  let x_1166 : f32 = u_xlat28;
  let x_1169 : vec4<f32> = u_xlat6;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1166, x_1166, x_1166)) + vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat7;
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1182 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1184 : f32 = x_623.unity_LightData.y;
  u_xlat28 = min(x_1182, x_1184);
  let x_1188 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1188));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1200 : u32 = u_xlatu_loop_1;
    let x_1201 : u32 = u_xlatu28;
    if ((x_1200 < x_1201)) {
    } else {
      break;
    }
    let x_1204 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_1204 >> 2u);
    let x_1208 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1208 & 3u));
    let x_1211 : u32 = u_xlatu4;
    let x_1214 : vec4<f32> = x_623.unity_LightIndices[bitcast<i32>(x_1211)];
    let x_1224 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1229 : vec4<u32> = indexable[x_1224];
    u_xlat4.x = dot(x_1214, bitcast<vec4<f32>>(x_1229));
    let x_1235 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_1235);
    let x_1237 : vec3<f32> = vs_TEXCOORD7;
    let x_1249 : i32 = u_xlati4;
    let x_1251 : vec4<f32> = x_1248.x_AdditionalLightsPosition[x_1249];
    let x_1254 : i32 = u_xlati4;
    let x_1256 : vec4<f32> = x_1248.x_AdditionalLightsPosition[x_1254];
    let x_1258 : vec3<f32> = ((-(x_1237) * vec3<f32>(x_1251.w, x_1251.w, x_1251.w)) + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
    let x_1259 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
    let x_1261 : vec4<f32> = u_xlat9;
    let x_1263 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
    let x_1266 : f32 = u_xlat46;
    u_xlat46 = max(x_1266, 6.10351562e-05f);
    let x_1268 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1268);
    let x_1270 : f32 = u_xlat47;
    let x_1272 : vec4<f32> = u_xlat9;
    let x_1274 : vec3<f32> = (vec3<f32>(x_1270, x_1270, x_1270) * vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
    let x_1275 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
    let x_1278 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1278);
    let x_1280 : f32 = u_xlat46;
    let x_1281 : i32 = u_xlati4;
    let x_1283 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1281].x;
    u_xlat46 = (x_1280 * x_1283);
    let x_1285 : f32 = u_xlat46;
    let x_1287 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1285) * x_1287) + 1.0f);
    let x_1290 : f32 = u_xlat46;
    u_xlat46 = max(x_1290, 0.0f);
    let x_1292 : f32 = u_xlat46;
    let x_1293 : f32 = u_xlat46;
    u_xlat46 = (x_1292 * x_1293);
    let x_1295 : f32 = u_xlat46;
    let x_1296 : f32 = u_xlat48;
    u_xlat46 = (x_1295 * x_1296);
    let x_1298 : i32 = u_xlati4;
    let x_1300 : vec4<f32> = x_1248.x_AdditionalLightsSpotDir[x_1298];
    let x_1302 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
    let x_1305 : f32 = u_xlat48;
    let x_1306 : i32 = u_xlati4;
    let x_1308 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1306].z;
    let x_1310 : i32 = u_xlati4;
    let x_1312 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1310].w;
    u_xlat48 = ((x_1305 * x_1308) + x_1312);
    let x_1314 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1314, 0.0f, 1.0f);
    let x_1316 : f32 = u_xlat48;
    let x_1317 : f32 = u_xlat48;
    u_xlat48 = (x_1316 * x_1317);
    let x_1319 : f32 = u_xlat46;
    let x_1320 : f32 = u_xlat48;
    u_xlat46 = (x_1319 * x_1320);
    let x_1322 : f32 = u_xlat32;
    let x_1324 : i32 = u_xlati4;
    let x_1326 : vec4<f32> = x_1248.x_AdditionalLightsColor[x_1324];
    let x_1328 : vec3<f32> = (vec3<f32>(x_1322, x_1322, x_1322) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1331 : vec4<f32> = u_xlat2;
    let x_1333 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
    let x_1338 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1338, 0.0f, 1.0f);
    let x_1342 : f32 = u_xlat4.x;
    let x_1343 : f32 = u_xlat46;
    u_xlat4.x = (x_1342 * x_1343);
    let x_1346 : vec4<f32> = u_xlat4;
    let x_1348 : vec4<f32> = u_xlat11;
    let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.x, x_1346.x) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1351 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
    let x_1353 : vec4<f32> = u_xlat9;
    let x_1355 : f32 = u_xlat47;
    let x_1358 : vec4<f32> = u_xlat1;
    let x_1360 : vec3<f32> = ((vec3<f32>(x_1353.x, x_1353.y, x_1353.z) * vec3<f32>(x_1355, x_1355, x_1355)) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
    let x_1363 : vec4<f32> = u_xlat9;
    let x_1365 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1363.x, x_1363.y, x_1363.z), vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1370 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_1370, 1.17549435e-37f);
    let x_1374 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_1374);
    let x_1377 : vec4<f32> = u_xlat4;
    let x_1379 : vec4<f32> = u_xlat9;
    let x_1381 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.x, x_1377.x) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
    let x_1382 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
    let x_1384 : vec4<f32> = u_xlat2;
    let x_1386 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1384.x, x_1384.y, x_1384.z), vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1391 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1391, 0.0f, 1.0f);
    let x_1394 : vec4<f32> = u_xlat10;
    let x_1396 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_1394.x, x_1394.y, x_1394.z), vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
    let x_1401 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_1401, 0.0f, 1.0f);
    let x_1404 : vec4<f32> = u_xlat4;
    let x_1406 : vec4<f32> = u_xlat4;
    let x_1408 : vec2<f32> = (vec2<f32>(x_1404.x, x_1404.w) * vec2<f32>(x_1406.x, x_1406.w));
    let x_1409 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1408.x, x_1409.y, x_1409.z, x_1408.y);
    let x_1412 : f32 = u_xlat4.x;
    let x_1414 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_1412 * x_1414) + 1.000010014f);
    let x_1419 : f32 = u_xlat4.x;
    let x_1421 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1419 * x_1421);
    let x_1425 : f32 = u_xlat4.w;
    u_xlat46 = max(x_1425, 0.100000001f);
    let x_1427 : f32 = u_xlat46;
    let x_1429 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1427 * x_1429);
    let x_1432 : f32 = u_xlat18;
    let x_1434 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1432 * x_1434);
    let x_1437 : f32 = u_xlat44;
    let x_1439 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1437 / x_1439);
    let x_1442 : vec4<f32> = u_xlat5;
    let x_1444 : vec4<f32> = u_xlat4;
    let x_1447 : vec4<f32> = u_xlat6;
    let x_1449 : vec3<f32> = ((vec3<f32>(x_1442.x, x_1442.y, x_1442.z) * vec3<f32>(x_1444.x, x_1444.x, x_1444.x)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
    let x_1452 : vec4<f32> = u_xlat9;
    let x_1454 : vec4<f32> = u_xlat11;
    let x_1457 : vec4<f32> = u_xlat8;
    let x_1459 : vec3<f32> = ((vec3<f32>(x_1452.x, x_1452.y, x_1452.z) * vec3<f32>(x_1454.x, x_1454.y, x_1454.z)) + vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
    let x_1460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);

    continuing {
      let x_1462 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1462 + bitcast<u32>(1i));
    }
  }
  let x_1464 : vec4<f32> = u_xlat3;
  let x_1466 : f32 = u_xlat14;
  let x_1469 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1466, x_1466, x_1466)) + vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
  let x_1472 : vec4<f32> = u_xlat8;
  let x_1474 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) + x_1474);
  let x_1476 : f32 = u_xlat43;
  let x_1477 : f32 = u_xlat43;
  u_xlat1.x = (x_1476 * -(x_1477));
  let x_1482 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1482);
  let x_1485 : vec3<f32> = u_xlat0;
  let x_1486 : f32 = u_xlat42;
  let x_1490 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_1485 * vec3<f32>(x_1486, x_1486, x_1486)) + -(vec3<f32>(x_1490.x, x_1490.y, x_1490.z)));
  let x_1496 : vec4<f32> = u_xlat1;
  let x_1498 : vec3<f32> = u_xlat0;
  let x_1501 : vec4<f32> = x_128.unity_FogColor;
  let x_1503 : vec3<f32> = ((vec3<f32>(x_1496.x, x_1496.x, x_1496.x) * x_1498) + vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
  let x_1504 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
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

