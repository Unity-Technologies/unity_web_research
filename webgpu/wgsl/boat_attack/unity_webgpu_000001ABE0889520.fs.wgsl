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

@group(1) @binding(2) var<uniform> x_635 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_849 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1260 : AdditionalLights;

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
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_573 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_874 : f32;
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
  let x_293 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb44;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat43;
  u_xlat43 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat43;
  u_xlat4 = (x_307 / vec4<f32>(x_308, x_308, x_308, x_308));
  let x_311 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.y, x_319.y, x_319.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat12;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = u_xlat11;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_349 : vec3<f32> = (vec3<f32>(x_344.z, x_344.z, x_344.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat7;
  let x_354 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat5;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.w, x_362.w, x_362.w) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_387;
  let x_390 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_390;
  let x_393 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_393;
  let x_396 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_396;
  let x_399 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_399;
  let x_402 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_404 + x_405);
  let x_408 : f32 = u_xlat0.z;
  u_xlat7.x = x_408;
  let x_411 : f32 = u_xlat1.z;
  u_xlat7.y = x_411;
  let x_414 : f32 = u_xlat2.z;
  u_xlat7.z = x_414;
  let x_417 : f32 = u_xlat3.y;
  u_xlat7.w = x_417;
  let x_419 : vec4<f32> = u_xlat9;
  let x_422 : f32 = x_30.x_Smoothness0;
  let x_424 : f32 = x_30.x_Smoothness1;
  let x_426 : f32 = x_30.x_Smoothness2;
  let x_428 : f32 = x_30.x_Smoothness3;
  let x_431 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_419) * vec4<f32>(x_422, x_424, x_426, x_428)) + x_431);
  let x_435 : f32 = x_30.x_LayerHasMask0;
  let x_438 : f32 = x_30.x_LayerHasMask1;
  let x_441 : f32 = x_30.x_LayerHasMask2;
  let x_444 : f32 = x_30.x_LayerHasMask3;
  let x_446 : vec4<f32> = u_xlat7;
  let x_448 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_435, x_438, x_441, x_444) * x_446) + x_448);
  let x_451 : vec4<f32> = u_xlat4;
  let x_452 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_451, x_452);
  let x_455 : f32 = u_xlat0.x;
  u_xlat7.x = x_455;
  let x_458 : f32 = u_xlat1.x;
  u_xlat7.y = x_458;
  let x_461 : f32 = u_xlat2.x;
  u_xlat7.z = x_461;
  let x_464 : f32 = u_xlat3.x;
  u_xlat7.w = x_464;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_30.x_Metallic0;
  let x_472 : f32 = x_30.x_Metallic1;
  let x_475 : f32 = x_30.x_Metallic2;
  let x_478 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_466 + -(vec4<f32>(x_469, x_472, x_475, x_478)));
  let x_483 : f32 = x_30.x_LayerHasMask0;
  let x_485 : f32 = x_30.x_LayerHasMask1;
  let x_487 : f32 = x_30.x_LayerHasMask2;
  let x_489 : f32 = x_30.x_LayerHasMask3;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : f32 = x_30.x_Metallic0;
  let x_496 : f32 = x_30.x_Metallic1;
  let x_498 : f32 = x_30.x_Metallic2;
  let x_500 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_483, x_485, x_487, x_489) * x_491) + vec4<f32>(x_494, x_496, x_498, x_500));
  let x_503 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat0.y;
  u_xlat3.x = x_508;
  let x_511 : f32 = u_xlat1.y;
  u_xlat3.y = x_511;
  let x_514 : f32 = u_xlat2.y;
  u_xlat3.z = x_514;
  let x_516 : vec4<f32> = u_xlat6;
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_516) + x_518);
  let x_521 : f32 = x_30.x_LayerHasMask0;
  let x_523 : f32 = x_30.x_LayerHasMask1;
  let x_525 : f32 = x_30.x_LayerHasMask2;
  let x_527 : f32 = x_30.x_LayerHasMask3;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_521, x_523, x_525, x_527) * x_529) + x_531);
  let x_534 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_534, x_535);
  let x_539 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_539 == 0.0f);
  let x_544 : vec3<f32> = vs_TEXCOORD7;
  let x_548 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_544) + x_548);
  let x_550 : vec3<f32> = u_xlat15;
  let x_551 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_555);
  let x_558 : vec3<f32> = u_xlat15;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x));
  let x_563 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_563;
  let x_566 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_566;
  let x_570 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_570;
  let x_572 : bool = u_xlatb1;
  if (x_572) {
    let x_576 : vec3<f32> = u_xlat15;
    x_573 = x_576;
  } else {
    let x_578 : vec4<f32> = u_xlat2;
    x_573 = vec3<f32>(x_578.x, x_578.y, x_578.z);
  }
  let x_580 : vec3<f32> = x_573;
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_587);
  let x_589 : f32 = u_xlat43;
  let x_591 : vec3<f32> = vs_TEXCOORD3;
  let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = vs_TEXCOORD7.y;
  let x_598 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_596 * x_598);
  let x_601 : f32 = x_128.unity_MatrixV[0i].z;
  let x_603 : f32 = vs_TEXCOORD7.x;
  let x_605 : f32 = u_xlat43;
  u_xlat43 = ((x_601 * x_603) + x_605);
  let x_608 : f32 = x_128.unity_MatrixV[2i].z;
  let x_610 : f32 = vs_TEXCOORD7.z;
  let x_612 : f32 = u_xlat43;
  u_xlat43 = ((x_608 * x_610) + x_612);
  let x_614 : f32 = u_xlat43;
  let x_617 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_614 + x_617);
  let x_619 : f32 = u_xlat43;
  let x_622 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_619) + -(x_622));
  let x_625 : f32 = u_xlat43;
  u_xlat43 = max(x_625, 0.0f);
  let x_627 : f32 = u_xlat43;
  let x_629 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_627 * x_629);
  u_xlat2.w = 1.0f;
  let x_637 : vec4<f32> = x_635.unity_SHAr;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_637, x_638);
  let x_642 : vec4<f32> = x_635.unity_SHAg;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_635.unity_SHAb;
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_647, x_648);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_651.y, x_651.z, x_651.z, x_651.x) * vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.z));
  let x_657 : vec4<f32> = x_635.unity_SHBr;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_657, x_658);
  let x_662 : vec4<f32> = x_635.unity_SHBg;
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_662, x_663);
  let x_667 : vec4<f32> = x_635.unity_SHBb;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_667, x_668);
  let x_673 : f32 = u_xlat2.y;
  let x_675 : f32 = u_xlat2.y;
  u_xlat44 = (x_673 * x_675);
  let x_678 : f32 = u_xlat2.x;
  let x_680 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat44;
  u_xlat44 = ((x_678 * x_680) + -(x_682));
  let x_687 : vec4<f32> = x_635.unity_SHC;
  let x_689 : f32 = u_xlat44;
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat3;
  let x_707 : vec3<f32> = max(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_712 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
  let x_717 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_713.x, x_713.y));
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec4<f32> = hlslcc_FragCoord;
  let x_724 : vec2<f32> = (vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_728 : f32 = u_xlat4.y;
  let x_730 : f32 = x_128.x_ScaleBiasRt.x;
  let x_733 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_728 * x_730) + x_733);
  let x_735 : f32 = u_xlat44;
  u_xlat4.z = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_740) * 0.959999979f) + 0.959999979f);
  let x_746 : f32 = u_xlat28;
  let x_747 : f32 = u_xlat44;
  u_xlat45 = (x_746 + -(x_747));
  let x_750 : f32 = u_xlat44;
  let x_752 : vec4<f32> = u_xlat5;
  let x_754 : vec3<f32> = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat5;
  let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_762 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat0;
  let x_766 : vec4<f32> = u_xlat5;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.x, x_764.x) * vec3<f32>(x_766.x, x_766.y, x_766.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : f32 = u_xlat28;
  u_xlat0.x = (-(x_774) + 1.0f);
  let x_779 : f32 = u_xlat0.x;
  let x_781 : f32 = u_xlat0.x;
  u_xlat28 = (x_779 * x_781);
  let x_783 : f32 = u_xlat28;
  u_xlat28 = max(x_783, 0.0078125f);
  let x_786 : f32 = u_xlat28;
  let x_787 : f32 = u_xlat28;
  u_xlat44 = (x_786 * x_787);
  let x_789 : f32 = u_xlat45;
  u_xlat45 = (x_789 + 1.0f);
  let x_791 : f32 = u_xlat45;
  u_xlat45 = clamp(x_791, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat28;
  u_xlat18 = ((x_794 * 4.0f) + 2.0f);
  let x_803 : vec4<f32> = u_xlat4;
  let x_806 : f32 = x_128.x_GlobalMipBias.x;
  let x_807 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_803.x, x_803.z), x_806);
  u_xlat4.x = x_807.x;
  let x_812 : f32 = u_xlat4.x;
  u_xlat32 = (x_812 + -1.0f);
  let x_815 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_816 : f32 = u_xlat32;
  u_xlat32 = ((x_815 * x_816) + 1.0f);
  let x_819 : f32 = u_xlat14;
  let x_821 : f32 = u_xlat4.x;
  u_xlat14 = min(x_819, x_821);
  let x_825 : vec4<f32> = vs_TEXCOORD8;
  let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
  let x_828 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_826.x, x_826.y, x_828);
  let x_840 : vec3<f32> = txVec0;
  let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
  u_xlat4.x = x_842;
  let x_851 : f32 = x_849.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_851) + 1.0f);
  let x_855 : f32 = u_xlat4.x;
  let x_857 : f32 = x_849.x_MainLightShadowParams.x;
  let x_859 : f32 = u_xlat46;
  u_xlat4.x = ((x_855 * x_857) + x_859);
  let x_864 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_864);
  let x_868 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_868 >= 1.0f);
  let x_870 : bool = u_xlatb46;
  let x_871 : bool = u_xlatb47;
  u_xlatb46 = (x_870 | x_871);
  let x_873 : bool = u_xlatb46;
  if (x_873) {
    x_874 = 1.0f;
  } else {
    let x_879 : f32 = u_xlat4.x;
    x_874 = x_879;
  }
  let x_880 : f32 = x_874;
  u_xlat4.x = x_880;
  let x_882 : vec3<f32> = vs_TEXCOORD7;
  let x_884 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_886 : vec3<f32> = (x_882 + -(x_884));
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat7;
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat46;
  let x_896 : f32 = x_849.x_MainLightShadowParams.z;
  let x_899 : f32 = x_849.x_MainLightShadowParams.w;
  u_xlat46 = ((x_894 * x_896) + x_899);
  let x_901 : f32 = u_xlat46;
  u_xlat46 = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat4.x;
  u_xlat47 = (-(x_905) + 1.0f);
  let x_908 : f32 = u_xlat46;
  let x_909 : f32 = u_xlat47;
  let x_912 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_908 * x_909) + x_912);
  let x_915 : f32 = u_xlat32;
  let x_918 : vec4<f32> = x_128.x_MainLightColor;
  let x_920 : vec3<f32> = (vec3<f32>(x_915, x_915, x_915) * vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat1;
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(-(vec3<f32>(x_923.x, x_923.y, x_923.z)), vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat46;
  let x_930 : f32 = u_xlat46;
  u_xlat46 = (x_929 + x_930);
  let x_932 : vec4<f32> = u_xlat2;
  let x_934 : f32 = u_xlat46;
  let x_938 : vec4<f32> = u_xlat1;
  let x_941 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * -(vec3<f32>(x_934, x_934, x_934))) + -(vec3<f32>(x_938.x, x_938.y, x_938.z)));
  let x_942 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat2;
  let x_946 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat46;
  u_xlat46 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat46;
  u_xlat46 = (-(x_951) + 1.0f);
  let x_954 : f32 = u_xlat46;
  let x_955 : f32 = u_xlat46;
  u_xlat46 = (x_954 * x_955);
  let x_957 : f32 = u_xlat46;
  let x_958 : f32 = u_xlat46;
  u_xlat46 = (x_957 * x_958);
  let x_961 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_961) * 0.699999988f) + 1.700000048f);
  let x_968 : f32 = u_xlat0.x;
  let x_969 : f32 = u_xlat47;
  u_xlat0.x = (x_968 * x_969);
  let x_973 : f32 = u_xlat0.x;
  u_xlat0.x = (x_973 * 6.0f);
  let x_985 : vec4<f32> = u_xlat8;
  let x_988 : f32 = u_xlat0.x;
  let x_989 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_985.x, x_985.y, x_985.z), x_988);
  u_xlat8 = x_989;
  let x_991 : f32 = u_xlat8.w;
  u_xlat0.x = (x_991 + -1.0f);
  let x_995 : f32 = x_635.unity_SpecCube0_HDR.w;
  let x_997 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_995 * x_997) + 1.0f);
  let x_1002 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1002, 0.0f);
  let x_1006 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1006);
  let x_1010 : f32 = u_xlat0.x;
  let x_1012 : f32 = x_635.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1010 * x_1012);
  let x_1016 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1016);
  let x_1020 : f32 = u_xlat0.x;
  let x_1022 : f32 = x_635.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1020 * x_1022);
  let x_1025 : vec4<f32> = u_xlat8;
  let x_1027 : vec3<f32> = u_xlat0;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025.x, x_1025.y, x_1025.z) * vec3<f32>(x_1027.x, x_1027.x, x_1027.x));
  let x_1030 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : f32 = u_xlat28;
  let x_1034 : f32 = u_xlat28;
  let x_1038 : vec2<f32> = ((vec2<f32>(x_1032, x_1032) * vec2<f32>(x_1034, x_1034)) + vec2<f32>(-1.0f, 1.0f));
  let x_1039 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1038.x, x_1039.y, x_1038.y);
  let x_1042 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1042);
  let x_1044 : vec4<f32> = u_xlat5;
  let x_1047 : f32 = u_xlat45;
  let x_1049 : vec3<f32> = (-(vec3<f32>(x_1044.x, x_1044.y, x_1044.z)) + vec3<f32>(x_1047, x_1047, x_1047));
  let x_1050 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : f32 = u_xlat46;
  let x_1054 : vec4<f32> = u_xlat9;
  let x_1057 : vec4<f32> = u_xlat5;
  let x_1059 : vec3<f32> = ((vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z)) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : f32 = u_xlat28;
  let x_1064 : vec4<f32> = u_xlat9;
  let x_1066 : vec3<f32> = (vec3<f32>(x_1062, x_1062, x_1062) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat8;
  let x_1071 : vec4<f32> = u_xlat9;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat3;
  let x_1078 : vec4<f32> = u_xlat6;
  let x_1081 : vec4<f32> = u_xlat8;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1087 : f32 = u_xlat4.x;
  let x_1089 : f32 = x_635.unity_LightData.z;
  u_xlat28 = (x_1087 * x_1089);
  let x_1091 : vec4<f32> = u_xlat2;
  let x_1094 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1097, 0.0f, 1.0f);
  let x_1099 : f32 = u_xlat28;
  let x_1100 : f32 = u_xlat45;
  u_xlat28 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat28;
  let x_1104 : vec4<f32> = u_xlat7;
  let x_1106 : vec3<f32> = (vec3<f32>(x_1102, x_1102, x_1102) * vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat1;
  let x_1112 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1119 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1117.x, x_1117.y, x_1117.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : f32 = u_xlat28;
  u_xlat28 = max(x_1122, 1.17549435e-37f);
  let x_1125 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1125);
  let x_1127 : f32 = u_xlat28;
  let x_1129 : vec4<f32> = u_xlat8;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat2;
  let x_1136 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1139, 0.0f, 1.0f);
  let x_1142 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1144 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1147, 0.0f, 1.0f);
  let x_1149 : f32 = u_xlat28;
  let x_1150 : f32 = u_xlat28;
  u_xlat28 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat28;
  let x_1154 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1152 * x_1154) + 1.000010014f);
  let x_1158 : f32 = u_xlat45;
  let x_1159 : f32 = u_xlat45;
  u_xlat45 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat28;
  let x_1162 : f32 = u_xlat28;
  u_xlat28 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = max(x_1164, 0.100000001f);
  let x_1167 : f32 = u_xlat28;
  let x_1168 : f32 = u_xlat45;
  u_xlat28 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat18;
  let x_1171 : f32 = u_xlat28;
  u_xlat28 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat44;
  let x_1174 : f32 = u_xlat28;
  u_xlat28 = (x_1173 / x_1174);
  let x_1176 : vec4<f32> = u_xlat5;
  let x_1178 : f32 = u_xlat28;
  let x_1181 : vec4<f32> = u_xlat6;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178, x_1178, x_1178)) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat7;
  let x_1188 : vec4<f32> = u_xlat8;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1194 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1196 : f32 = x_635.unity_LightData.y;
  u_xlat28 = min(x_1194, x_1196);
  let x_1200 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1200));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1212 : u32 = u_xlatu_loop_1;
    let x_1213 : u32 = u_xlatu28;
    if ((x_1212 < x_1213)) {
    } else {
      break;
    }
    let x_1216 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_1216 >> 2u);
    let x_1220 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1220 & 3u));
    let x_1223 : u32 = u_xlatu4;
    let x_1226 : vec4<f32> = x_635.unity_LightIndices[bitcast<i32>(x_1223)];
    let x_1236 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1241 : vec4<u32> = indexable[x_1236];
    u_xlat4.x = dot(x_1226, bitcast<vec4<f32>>(x_1241));
    let x_1247 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_1247);
    let x_1249 : vec3<f32> = vs_TEXCOORD7;
    let x_1261 : i32 = u_xlati4;
    let x_1263 : vec4<f32> = x_1260.x_AdditionalLightsPosition[x_1261];
    let x_1266 : i32 = u_xlati4;
    let x_1268 : vec4<f32> = x_1260.x_AdditionalLightsPosition[x_1266];
    let x_1270 : vec3<f32> = ((-(x_1249) * vec3<f32>(x_1263.w, x_1263.w, x_1263.w)) + vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
    let x_1271 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
    let x_1273 : vec4<f32> = u_xlat9;
    let x_1275 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
    let x_1278 : f32 = u_xlat46;
    u_xlat46 = max(x_1278, 6.10351562e-05f);
    let x_1280 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1280);
    let x_1282 : f32 = u_xlat47;
    let x_1284 : vec4<f32> = u_xlat9;
    let x_1286 : vec3<f32> = (vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
    let x_1287 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
    let x_1290 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1290);
    let x_1292 : f32 = u_xlat46;
    let x_1293 : i32 = u_xlati4;
    let x_1295 : f32 = x_1260.x_AdditionalLightsAttenuation[x_1293].x;
    u_xlat46 = (x_1292 * x_1295);
    let x_1297 : f32 = u_xlat46;
    let x_1299 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1297) * x_1299) + 1.0f);
    let x_1302 : f32 = u_xlat46;
    u_xlat46 = max(x_1302, 0.0f);
    let x_1304 : f32 = u_xlat46;
    let x_1305 : f32 = u_xlat46;
    u_xlat46 = (x_1304 * x_1305);
    let x_1307 : f32 = u_xlat46;
    let x_1308 : f32 = u_xlat48;
    u_xlat46 = (x_1307 * x_1308);
    let x_1310 : i32 = u_xlati4;
    let x_1312 : vec4<f32> = x_1260.x_AdditionalLightsSpotDir[x_1310];
    let x_1314 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1312.x, x_1312.y, x_1312.z), vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
    let x_1317 : f32 = u_xlat48;
    let x_1318 : i32 = u_xlati4;
    let x_1320 : f32 = x_1260.x_AdditionalLightsAttenuation[x_1318].z;
    let x_1322 : i32 = u_xlati4;
    let x_1324 : f32 = x_1260.x_AdditionalLightsAttenuation[x_1322].w;
    u_xlat48 = ((x_1317 * x_1320) + x_1324);
    let x_1326 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1326, 0.0f, 1.0f);
    let x_1328 : f32 = u_xlat48;
    let x_1329 : f32 = u_xlat48;
    u_xlat48 = (x_1328 * x_1329);
    let x_1331 : f32 = u_xlat46;
    let x_1332 : f32 = u_xlat48;
    u_xlat46 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat32;
    let x_1336 : i32 = u_xlati4;
    let x_1338 : vec4<f32> = x_1260.x_AdditionalLightsColor[x_1336];
    let x_1340 : vec3<f32> = (vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
    let x_1341 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
    let x_1343 : vec4<f32> = u_xlat2;
    let x_1345 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_1343.x, x_1343.y, x_1343.z), vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
    let x_1350 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1350, 0.0f, 1.0f);
    let x_1354 : f32 = u_xlat4.x;
    let x_1355 : f32 = u_xlat46;
    u_xlat4.x = (x_1354 * x_1355);
    let x_1358 : vec4<f32> = u_xlat4;
    let x_1360 : vec4<f32> = u_xlat11;
    let x_1362 : vec3<f32> = (vec3<f32>(x_1358.x, x_1358.x, x_1358.x) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
    let x_1363 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
    let x_1365 : vec4<f32> = u_xlat9;
    let x_1367 : f32 = u_xlat47;
    let x_1370 : vec4<f32> = u_xlat1;
    let x_1372 : vec3<f32> = ((vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(x_1367, x_1367, x_1367)) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
    let x_1375 : vec4<f32> = u_xlat9;
    let x_1377 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1375.x, x_1375.y, x_1375.z), vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1382 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_1382, 1.17549435e-37f);
    let x_1386 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_1386);
    let x_1389 : vec4<f32> = u_xlat4;
    let x_1391 : vec4<f32> = u_xlat9;
    let x_1393 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.x, x_1389.x) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
    let x_1396 : vec4<f32> = u_xlat2;
    let x_1398 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
    let x_1403 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1403, 0.0f, 1.0f);
    let x_1406 : vec4<f32> = u_xlat10;
    let x_1408 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_1406.x, x_1406.y, x_1406.z), vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
    let x_1413 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_1413, 0.0f, 1.0f);
    let x_1416 : vec4<f32> = u_xlat4;
    let x_1418 : vec4<f32> = u_xlat4;
    let x_1420 : vec2<f32> = (vec2<f32>(x_1416.x, x_1416.w) * vec2<f32>(x_1418.x, x_1418.w));
    let x_1421 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1420.x, x_1421.y, x_1421.z, x_1420.y);
    let x_1424 : f32 = u_xlat4.x;
    let x_1426 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_1424 * x_1426) + 1.000010014f);
    let x_1431 : f32 = u_xlat4.x;
    let x_1433 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1431 * x_1433);
    let x_1437 : f32 = u_xlat4.w;
    u_xlat46 = max(x_1437, 0.100000001f);
    let x_1439 : f32 = u_xlat46;
    let x_1441 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1439 * x_1441);
    let x_1444 : f32 = u_xlat18;
    let x_1446 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1444 * x_1446);
    let x_1449 : f32 = u_xlat44;
    let x_1451 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1449 / x_1451);
    let x_1454 : vec4<f32> = u_xlat5;
    let x_1456 : vec4<f32> = u_xlat4;
    let x_1459 : vec4<f32> = u_xlat6;
    let x_1461 : vec3<f32> = ((vec3<f32>(x_1454.x, x_1454.y, x_1454.z) * vec3<f32>(x_1456.x, x_1456.x, x_1456.x)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1462 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
    let x_1464 : vec4<f32> = u_xlat9;
    let x_1466 : vec4<f32> = u_xlat11;
    let x_1469 : vec4<f32> = u_xlat8;
    let x_1471 : vec3<f32> = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1466.x, x_1466.y, x_1466.z)) + vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
    let x_1472 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);

    continuing {
      let x_1474 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1474 + bitcast<u32>(1i));
    }
  }
  let x_1476 : vec4<f32> = u_xlat3;
  let x_1478 : f32 = u_xlat14;
  let x_1481 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1476.x, x_1476.y, x_1476.z) * vec3<f32>(x_1478, x_1478, x_1478)) + vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
  let x_1484 : vec4<f32> = u_xlat8;
  let x_1486 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1484.x, x_1484.y, x_1484.z) + x_1486);
  let x_1488 : f32 = u_xlat42;
  let x_1490 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1488, x_1488, x_1488) * x_1490);
  let x_1492 : f32 = u_xlat43;
  let x_1493 : f32 = u_xlat43;
  u_xlat42 = (x_1492 * -(x_1493));
  let x_1496 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1496);
  let x_1500 : vec3<f32> = u_xlat0;
  let x_1501 : f32 = u_xlat42;
  let x_1503 : vec3<f32> = (x_1500 * vec3<f32>(x_1501, x_1501, x_1501));
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

