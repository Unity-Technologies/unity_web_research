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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1070 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1744 : AdditionalLights;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat16 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1301 : f32;
  var u_xlat30 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
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
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : f32 = x_128.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_385.x, x_385.y), x_388);
  let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat6.x;
  let x_396 : f32 = u_xlat6.z;
  u_xlat6.x = (x_394 * x_396);
  let x_399 : vec4<f32> = u_xlat6;
  let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat43;
  u_xlat43 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat43;
  u_xlat43 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_417);
  let x_419 : f32 = u_xlat43;
  u_xlat7.z = max(x_419, 1.00000002e-16f);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : f32 = x_30.x_NormalScale0;
  let x_428 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426, x_426));
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_435 : vec4<f32> = vs_TEXCOORD1;
  let x_438 : f32 = x_128.x_GlobalMipBias.x;
  let x_439 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_435.z, x_435.w), x_438);
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat6.z;
  u_xlat6.x = (x_444 * x_446);
  let x_449 : vec4<f32> = u_xlat6;
  let x_452 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat43;
  u_xlat43 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat43;
  u_xlat43 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_465);
  let x_467 : f32 = u_xlat43;
  u_xlat8.z = max(x_467, 1.00000002e-16f);
  let x_470 : vec4<f32> = u_xlat6;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_475 : f32 = x_30.x_NormalScale1;
  let x_476 : vec2<f32> = vec2<f32>(x_473, x_475);
  let x_480 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_476.x, x_476.y));
  let x_481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec4<f32> = u_xlat8;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.y, x_483.y, x_483.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec4<f32> = u_xlat6;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.x, x_490.x) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_504 : vec4<f32> = vs_TEXCOORD2;
  let x_507 : f32 = x_128.x_GlobalMipBias.x;
  let x_508 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_504.x, x_504.y), x_507);
  let x_509 : vec3<f32> = vec3<f32>(x_508.x, x_508.y, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat7.x;
  let x_515 : f32 = u_xlat7.z;
  u_xlat7.x = (x_513 * x_515);
  let x_518 : vec4<f32> = u_xlat7;
  let x_521 : vec2<f32> = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat43;
  u_xlat43 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat43;
  u_xlat43 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_534);
  let x_536 : f32 = u_xlat43;
  u_xlat8.z = max(x_536, 1.00000002e-16f);
  let x_539 : vec4<f32> = u_xlat7;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_545 : f32 = x_30.x_NormalScale2;
  let x_546 : vec2<f32> = vec2<f32>(x_543, x_545);
  let x_550 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = u_xlat8;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_567 : vec4<f32> = vs_TEXCOORD2;
  let x_570 : f32 = x_128.x_GlobalMipBias.x;
  let x_571 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_567.z, x_567.w), x_570);
  let x_572 : vec3<f32> = vec3<f32>(x_571.x, x_571.y, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_576 : f32 = u_xlat7.x;
  let x_578 : f32 = u_xlat7.z;
  u_xlat7.x = (x_576 * x_578);
  let x_581 : vec4<f32> = u_xlat7;
  let x_584 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat43;
  u_xlat43 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat43;
  u_xlat43 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_597);
  let x_599 : f32 = u_xlat43;
  u_xlat8.z = max(x_599, 1.00000002e-16f);
  let x_602 : vec4<f32> = u_xlat7;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_608 : f32 = x_30.x_NormalScale3;
  let x_609 : vec2<f32> = vec2<f32>(x_606, x_608);
  let x_613 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_609.x, x_609.y));
  let x_614 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat4;
  let x_618 : vec4<f32> = u_xlat8;
  let x_621 : vec4<f32> = u_xlat6;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.w, x_616.w, x_616.w) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat6.z;
  u_xlat6.w = (x_627 + 0.00001f);
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat43;
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.w));
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_664;
  let x_667 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_669 + x_670);
  let x_673 : f32 = u_xlat0.z;
  u_xlat8.x = x_673;
  let x_676 : f32 = u_xlat1.z;
  u_xlat8.y = x_676;
  let x_679 : f32 = u_xlat2.z;
  u_xlat8.z = x_679;
  let x_682 : f32 = u_xlat3.y;
  u_xlat8.w = x_682;
  let x_684 : vec4<f32> = u_xlat9;
  let x_687 : f32 = x_30.x_Smoothness0;
  let x_689 : f32 = x_30.x_Smoothness1;
  let x_691 : f32 = x_30.x_Smoothness2;
  let x_693 : f32 = x_30.x_Smoothness3;
  let x_696 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_684) * vec4<f32>(x_687, x_689, x_691, x_693)) + x_696);
  let x_700 : f32 = x_30.x_LayerHasMask0;
  let x_703 : f32 = x_30.x_LayerHasMask1;
  let x_706 : f32 = x_30.x_LayerHasMask2;
  let x_709 : f32 = x_30.x_LayerHasMask3;
  let x_711 : vec4<f32> = u_xlat8;
  let x_713 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_700, x_703, x_706, x_709) * x_711) + x_713);
  let x_716 : vec4<f32> = u_xlat4;
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_716, x_717);
  let x_720 : f32 = u_xlat0.x;
  u_xlat8.x = x_720;
  let x_723 : f32 = u_xlat1.x;
  u_xlat8.y = x_723;
  let x_726 : f32 = u_xlat2.x;
  u_xlat8.z = x_726;
  let x_729 : f32 = u_xlat3.x;
  u_xlat8.w = x_729;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_30.x_Metallic0;
  let x_737 : f32 = x_30.x_Metallic1;
  let x_740 : f32 = x_30.x_Metallic2;
  let x_743 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_731 + -(vec4<f32>(x_734, x_737, x_740, x_743)));
  let x_748 : f32 = x_30.x_LayerHasMask0;
  let x_750 : f32 = x_30.x_LayerHasMask1;
  let x_752 : f32 = x_30.x_LayerHasMask2;
  let x_754 : f32 = x_30.x_LayerHasMask3;
  let x_756 : vec4<f32> = u_xlat8;
  let x_759 : f32 = x_30.x_Metallic0;
  let x_761 : f32 = x_30.x_Metallic1;
  let x_763 : f32 = x_30.x_Metallic2;
  let x_765 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_748, x_750, x_752, x_754) * x_756) + vec4<f32>(x_759, x_761, x_763, x_765));
  let x_768 : vec4<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_768, x_769);
  let x_773 : f32 = u_xlat0.y;
  u_xlat3.x = x_773;
  let x_776 : f32 = u_xlat1.y;
  u_xlat3.y = x_776;
  let x_779 : f32 = u_xlat2.y;
  u_xlat3.z = x_779;
  let x_781 : vec4<f32> = u_xlat7;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_781) + x_783);
  let x_786 : f32 = x_30.x_LayerHasMask0;
  let x_788 : f32 = x_30.x_LayerHasMask1;
  let x_790 : f32 = x_30.x_LayerHasMask2;
  let x_792 : f32 = x_30.x_LayerHasMask3;
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_786, x_788, x_790, x_792) * x_794) + x_796);
  let x_799 : vec4<f32> = u_xlat4;
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_799, x_800);
  let x_802 : vec4<f32> = u_xlat6;
  let x_805 : vec4<f32> = vs_TEXCOORD5;
  let x_807 : vec3<f32> = (vec3<f32>(x_802.y, x_802.y, x_802.y) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD4;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.x, x_810.x) * -(vec3<f32>(x_813.x, x_813.y, x_813.z))) + vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = vs_TEXCOORD3;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.z, x_822.z, x_822.z) * vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat43;
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_849 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec3<f32> = vs_TEXCOORD7;
  let x_864 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres1;
  let x_867 : vec3<f32> = (x_862 + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres2;
  let x_875 : vec3<f32> = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = vs_TEXCOORD7;
  let x_880 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres3;
  let x_883 : vec3<f32> = (x_878 + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_904 : vec4<f32> = u_xlat6;
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = x_854.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_912 < x_914);
  let x_917 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_921);
  let x_925 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_925);
  let x_929 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_929);
  let x_933 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_933);
  let x_938 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_938);
  let x_942 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_942);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.y, x_947.z, x_947.w));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = max(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_955.z);
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_964) + 4.0f);
  let x_971 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_971);
  let x_975 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_975) << bitcast<u32>(2i));
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_988 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_981 + 1i) / 4i)][((x_984 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : i32 = u_xlati2;
  let x_993 : i32 = u_xlati2;
  let x_996 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_991 / 4i)][(x_993 % 4i)];
  let x_998 : vec3<f32> = vs_TEXCOORD7;
  let x_1001 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.x, x_998.x)) + x_1001);
  let x_1003 : i32 = u_xlati2;
  let x_1006 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat16;
  let x_1018 : i32 = u_xlati2;
  let x_1021 : i32 = u_xlati2;
  let x_1025 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1018 + 3i) / 4i)][((x_1021 + 3i) % 4i)];
  let x_1027 : vec3<f32> = (x_1017 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1032 : f32 = vs_TEXCOORD7.y;
  let x_1034 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat44 = (x_1032 * x_1034);
  let x_1037 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1039 : f32 = vs_TEXCOORD7.x;
  let x_1041 : f32 = u_xlat44;
  u_xlat44 = ((x_1037 * x_1039) + x_1041);
  let x_1044 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1046 : f32 = vs_TEXCOORD7.z;
  let x_1048 : f32 = u_xlat44;
  u_xlat44 = ((x_1044 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat44;
  let x_1052 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat44 = (x_1050 + x_1052);
  let x_1054 : f32 = u_xlat44;
  let x_1057 : f32 = x_128.x_ProjectionParams.y;
  u_xlat44 = (-(x_1054) + -(x_1057));
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = max(x_1060, 0.0f);
  let x_1062 : f32 = u_xlat44;
  let x_1064 : f32 = x_128.unity_FogParams.x;
  u_xlat44 = (x_1062 * x_1064);
  u_xlat1.w = 1.0f;
  let x_1072 : vec4<f32> = x_1070.unity_SHAr;
  let x_1073 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1072, x_1073);
  let x_1077 : vec4<f32> = x_1070.unity_SHAg;
  let x_1078 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1077, x_1078);
  let x_1082 : vec4<f32> = x_1070.unity_SHAb;
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1082, x_1083);
  let x_1086 : vec4<f32> = u_xlat1;
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1086.y, x_1086.z, x_1086.z, x_1086.x) * vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.z));
  let x_1092 : vec4<f32> = x_1070.unity_SHBr;
  let x_1093 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1092, x_1093);
  let x_1097 : vec4<f32> = x_1070.unity_SHBg;
  let x_1098 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1097, x_1098);
  let x_1102 : vec4<f32> = x_1070.unity_SHBb;
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1102, x_1103);
  let x_1107 : f32 = u_xlat1.y;
  let x_1109 : f32 = u_xlat1.y;
  u_xlat43 = (x_1107 * x_1109);
  let x_1112 : f32 = u_xlat1.x;
  let x_1114 : f32 = u_xlat1.x;
  let x_1116 : f32 = u_xlat43;
  u_xlat43 = ((x_1112 * x_1114) + -(x_1116));
  let x_1121 : vec4<f32> = x_1070.unity_SHC;
  let x_1123 : f32 = u_xlat43;
  let x_1126 : vec4<f32> = u_xlat6;
  let x_1128 : vec3<f32> = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123, x_1123, x_1123)) + vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec4<f32> = u_xlat3;
  let x_1133 : vec4<f32> = u_xlat4;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat3;
  let x_1140 : vec3<f32> = max(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1145 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1146 : vec2<f32> = vec2<f32>(x_1145.x, x_1145.y);
  let x_1150 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1146.x, x_1146.y));
  let x_1151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat4;
  let x_1155 : vec4<f32> = hlslcc_FragCoord;
  let x_1157 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1155.x, x_1155.y));
  let x_1158 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
  let x_1161 : f32 = u_xlat4.y;
  let x_1163 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1166 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1161 * x_1163) + x_1166);
  let x_1168 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1168) + 1.0f);
  let x_1173 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1173) * 0.959999979f) + 0.959999979f);
  let x_1179 : f32 = u_xlat43;
  u_xlat45 = (-(x_1179) + 1.0f);
  let x_1182 : f32 = u_xlat43;
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec4<f32> = u_xlat5;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec3<f32> = u_xlat0;
  let x_1198 : vec4<f32> = u_xlat5;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.x, x_1196.x) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat0.x;
  let x_1213 : f32 = u_xlat0.x;
  u_xlat43 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat43;
  u_xlat43 = max(x_1215, 0.0078125f);
  let x_1219 : f32 = u_xlat43;
  let x_1220 : f32 = u_xlat43;
  u_xlat18 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat28;
  let x_1223 : f32 = u_xlat45;
  u_xlat28 = (x_1222 + x_1223);
  let x_1225 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : f32 = u_xlat43;
  u_xlat45 = ((x_1227 * 4.0f) + 2.0f);
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1238 : f32 = x_128.x_GlobalMipBias.x;
  let x_1239 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1235.x, x_1235.z), x_1238);
  u_xlat4.x = x_1239.x;
  let x_1244 : f32 = u_xlat4.x;
  u_xlat32 = (x_1244 + -1.0f);
  let x_1247 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1248 : f32 = u_xlat32;
  u_xlat32 = ((x_1247 * x_1248) + 1.0f);
  let x_1251 : f32 = u_xlat14;
  let x_1253 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1251, x_1253);
  let x_1256 : vec4<f32> = u_xlat2;
  let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
  let x_1259 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
  let x_1271 : vec3<f32> = txVec0;
  let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
  u_xlat2.x = x_1273;
  let x_1276 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1276) + 1.0f);
  let x_1281 : f32 = u_xlat2.x;
  let x_1283 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1286 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1281 * x_1283) + x_1286);
  let x_1291 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1291);
  let x_1295 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1295 >= 1.0f);
  let x_1297 : bool = u_xlatb30;
  let x_1298 : bool = u_xlatb16;
  u_xlatb16 = (x_1297 | x_1298);
  let x_1300 : bool = u_xlatb16;
  if (x_1300) {
    x_1301 = 1.0f;
  } else {
    let x_1306 : f32 = u_xlat2.x;
    x_1301 = x_1306;
  }
  let x_1307 : f32 = x_1301;
  u_xlat2.x = x_1307;
  let x_1309 : vec3<f32> = vs_TEXCOORD7;
  let x_1312 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1314 : vec3<f32> = (x_1309 + -(x_1312));
  let x_1315 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1317 : vec4<f32> = u_xlat7;
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1324 : f32 = u_xlat16.x;
  let x_1326 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1329 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1324 * x_1326) + x_1329);
  let x_1333 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1333, 0.0f, 1.0f);
  let x_1338 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1338) + 1.0f);
  let x_1342 : f32 = u_xlat16.x;
  let x_1343 : f32 = u_xlat30;
  let x_1346 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1342 * x_1343) + x_1346);
  let x_1349 : f32 = u_xlat32;
  let x_1352 : vec4<f32> = x_128.x_MainLightColor;
  let x_1354 : vec3<f32> = (vec3<f32>(x_1349, x_1349, x_1349) * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1358 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1358;
  let x_1361 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1361;
  let x_1364 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1364;
  let x_1366 : vec4<f32> = u_xlat8;
  let x_1369 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1366.x, x_1366.y, x_1366.z)), vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1374 : f32 = u_xlat16.x;
  let x_1376 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1374 + x_1376);
  let x_1379 : vec4<f32> = u_xlat1;
  let x_1381 : vec3<f32> = u_xlat16;
  let x_1385 : vec4<f32> = u_xlat8;
  let x_1388 : vec3<f32> = ((vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * -(vec3<f32>(x_1381.x, x_1381.x, x_1381.x))) + -(vec3<f32>(x_1385.x, x_1385.y, x_1385.z)));
  let x_1389 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1391 : vec4<f32> = u_xlat1;
  let x_1393 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1391.x, x_1391.y, x_1391.z), vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1398 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1398, 0.0f, 1.0f);
  let x_1402 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1402) + 1.0f);
  let x_1407 : f32 = u_xlat16.x;
  let x_1409 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1407 * x_1409);
  let x_1413 : f32 = u_xlat16.x;
  let x_1415 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1413 * x_1415);
  let x_1419 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1419) * 0.699999988f) + 1.700000048f);
  let x_1426 : f32 = u_xlat0.x;
  let x_1427 : f32 = u_xlat30;
  u_xlat0.x = (x_1426 * x_1427);
  let x_1431 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1431 * 6.0f);
  let x_1443 : vec4<f32> = u_xlat9;
  let x_1446 : f32 = u_xlat0.x;
  let x_1447 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1443.x, x_1443.y, x_1443.z), x_1446);
  u_xlat9 = x_1447;
  let x_1449 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1449 + -1.0f);
  let x_1453 : f32 = x_1070.unity_SpecCube0_HDR.w;
  let x_1455 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1453 * x_1455) + 1.0f);
  let x_1460 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1460, 0.0f);
  let x_1464 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1464);
  let x_1468 : f32 = u_xlat0.x;
  let x_1470 : f32 = x_1070.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1468 * x_1470);
  let x_1474 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1474);
  let x_1478 : f32 = u_xlat0.x;
  let x_1480 : f32 = x_1070.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1478 * x_1480);
  let x_1483 : vec4<f32> = u_xlat9;
  let x_1485 : vec3<f32> = u_xlat0;
  let x_1487 : vec3<f32> = (vec3<f32>(x_1483.x, x_1483.y, x_1483.z) * vec3<f32>(x_1485.x, x_1485.x, x_1485.x));
  let x_1488 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
  let x_1490 : f32 = u_xlat43;
  let x_1492 : f32 = u_xlat43;
  let x_1496 : vec2<f32> = ((vec2<f32>(x_1490, x_1490) * vec2<f32>(x_1492, x_1492)) + vec2<f32>(-1.0f, 1.0f));
  let x_1497 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1496.x, x_1497.y, x_1497.z, x_1496.y);
  let x_1500 : f32 = u_xlat4.w;
  u_xlat0.x = (1.0f / x_1500);
  let x_1503 : vec4<f32> = u_xlat5;
  let x_1506 : f32 = u_xlat28;
  let x_1508 : vec3<f32> = (-(vec3<f32>(x_1503.x, x_1503.y, x_1503.z)) + vec3<f32>(x_1506, x_1506, x_1506));
  let x_1509 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
  let x_1511 : vec3<f32> = u_xlat16;
  let x_1513 : vec4<f32> = u_xlat10;
  let x_1516 : vec4<f32> = u_xlat5;
  let x_1518 : vec3<f32> = ((vec3<f32>(x_1511.x, x_1511.x, x_1511.x) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z)) + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
  let x_1521 : vec3<f32> = u_xlat0;
  let x_1523 : vec4<f32> = u_xlat10;
  let x_1525 : vec3<f32> = (vec3<f32>(x_1521.x, x_1521.x, x_1521.x) * vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
  let x_1526 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
  let x_1528 : vec4<f32> = u_xlat9;
  let x_1530 : vec4<f32> = u_xlat10;
  let x_1532 : vec3<f32> = (vec3<f32>(x_1528.x, x_1528.y, x_1528.z) * vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
  let x_1533 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1535 : vec4<f32> = u_xlat3;
  let x_1537 : vec4<f32> = u_xlat6;
  let x_1540 : vec4<f32> = u_xlat9;
  let x_1542 : vec3<f32> = ((vec3<f32>(x_1535.x, x_1535.y, x_1535.z) * vec3<f32>(x_1537.x, x_1537.y, x_1537.z)) + vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
  let x_1543 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  let x_1546 : f32 = u_xlat2.x;
  let x_1548 : f32 = x_1070.unity_LightData.z;
  u_xlat0.x = (x_1546 * x_1548);
  let x_1551 : vec4<f32> = u_xlat1;
  let x_1554 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1551.x, x_1551.y, x_1551.z), vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1557, 0.0f, 1.0f);
  let x_1559 : f32 = u_xlat28;
  let x_1561 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1559 * x_1561);
  let x_1564 : vec3<f32> = u_xlat0;
  let x_1566 : vec4<f32> = u_xlat7;
  let x_1568 : vec3<f32> = (vec3<f32>(x_1564.x, x_1564.x, x_1564.x) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
  let x_1569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
  let x_1571 : vec4<f32> = u_xlat8;
  let x_1574 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1576 : vec3<f32> = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  let x_1579 : vec4<f32> = u_xlat7;
  let x_1581 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1579.x, x_1579.y, x_1579.z), vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
  let x_1586 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1586, 1.17549435e-37f);
  let x_1591 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1591);
  let x_1594 : vec3<f32> = u_xlat0;
  let x_1596 : vec4<f32> = u_xlat7;
  let x_1598 : vec3<f32> = (vec3<f32>(x_1594.x, x_1594.x, x_1594.x) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1601 : vec4<f32> = u_xlat1;
  let x_1603 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1601.x, x_1601.y, x_1601.z), vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1608 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1608, 0.0f, 1.0f);
  let x_1612 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1614 : vec4<f32> = u_xlat7;
  u_xlat0.z = dot(vec3<f32>(x_1612.x, x_1612.y, x_1612.z), vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1619 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1619, 0.0f, 1.0f);
  let x_1622 : vec3<f32> = u_xlat0;
  let x_1624 : vec3<f32> = u_xlat0;
  let x_1626 : vec2<f32> = (vec2<f32>(x_1622.x, x_1622.z) * vec2<f32>(x_1624.x, x_1624.z));
  let x_1627 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1626.x, x_1627.y, x_1626.y);
  let x_1630 : f32 = u_xlat0.x;
  let x_1632 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_1630 * x_1632) + 1.000010014f);
  let x_1638 : f32 = u_xlat0.x;
  let x_1640 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1638 * x_1640);
  let x_1644 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1644, 0.100000001f);
  let x_1647 : f32 = u_xlat28;
  let x_1649 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1647 * x_1649);
  let x_1652 : f32 = u_xlat45;
  let x_1654 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1652 * x_1654);
  let x_1657 : f32 = u_xlat18;
  let x_1659 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1657 / x_1659);
  let x_1662 : vec4<f32> = u_xlat5;
  let x_1664 : vec3<f32> = u_xlat0;
  let x_1667 : vec4<f32> = u_xlat6;
  let x_1669 : vec3<f32> = ((vec3<f32>(x_1662.x, x_1662.y, x_1662.z) * vec3<f32>(x_1664.x, x_1664.x, x_1664.x)) + vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1672 : vec4<f32> = u_xlat2;
  let x_1674 : vec4<f32> = u_xlat7;
  let x_1676 : vec3<f32> = (vec3<f32>(x_1672.x, x_1672.y, x_1672.z) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1680 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1682 : f32 = x_1070.unity_LightData.y;
  u_xlat0.x = min(x_1680, x_1682);
  let x_1687 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1687));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1699 : u32 = u_xlatu_loop_1;
    let x_1700 : u32 = u_xlatu0;
    if ((x_1699 < x_1700)) {
    } else {
      break;
    }
    let x_1703 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1703 >> 2u);
    let x_1706 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1706 & 3u));
    let x_1709 : u32 = u_xlatu43;
    let x_1712 : vec4<f32> = x_1070.unity_LightIndices[bitcast<i32>(x_1709)];
    let x_1722 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1727 : vec4<u32> = indexable[x_1722];
    u_xlat43 = dot(x_1712, bitcast<vec4<f32>>(x_1727));
    let x_1731 : f32 = u_xlat43;
    u_xlati43 = i32(x_1731);
    let x_1733 : vec3<f32> = vs_TEXCOORD7;
    let x_1745 : i32 = u_xlati43;
    let x_1747 : vec4<f32> = x_1744.x_AdditionalLightsPosition[x_1745];
    let x_1750 : i32 = u_xlati43;
    let x_1752 : vec4<f32> = x_1744.x_AdditionalLightsPosition[x_1750];
    let x_1754 : vec3<f32> = ((-(x_1733) * vec3<f32>(x_1747.w, x_1747.w, x_1747.w)) + vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
    let x_1755 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
    let x_1758 : vec4<f32> = u_xlat9;
    let x_1760 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1758.x, x_1758.y, x_1758.z), vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
    let x_1763 : f32 = u_xlat46;
    u_xlat46 = max(x_1763, 6.10351562e-05f);
    let x_1766 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1766);
    let x_1768 : f32 = u_xlat47;
    let x_1770 : vec4<f32> = u_xlat9;
    let x_1772 : vec3<f32> = (vec3<f32>(x_1768, x_1768, x_1768) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
    let x_1773 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
    let x_1776 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1776);
    let x_1778 : f32 = u_xlat46;
    let x_1779 : i32 = u_xlati43;
    let x_1781 : f32 = x_1744.x_AdditionalLightsAttenuation[x_1779].x;
    u_xlat46 = (x_1778 * x_1781);
    let x_1783 : f32 = u_xlat46;
    let x_1785 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1783) * x_1785) + 1.0f);
    let x_1788 : f32 = u_xlat46;
    u_xlat46 = max(x_1788, 0.0f);
    let x_1790 : f32 = u_xlat46;
    let x_1791 : f32 = u_xlat46;
    u_xlat46 = (x_1790 * x_1791);
    let x_1793 : f32 = u_xlat46;
    let x_1794 : f32 = u_xlat48;
    u_xlat46 = (x_1793 * x_1794);
    let x_1796 : i32 = u_xlati43;
    let x_1798 : vec4<f32> = x_1744.x_AdditionalLightsSpotDir[x_1796];
    let x_1800 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
    let x_1803 : f32 = u_xlat48;
    let x_1804 : i32 = u_xlati43;
    let x_1806 : f32 = x_1744.x_AdditionalLightsAttenuation[x_1804].z;
    let x_1808 : i32 = u_xlati43;
    let x_1810 : f32 = x_1744.x_AdditionalLightsAttenuation[x_1808].w;
    u_xlat48 = ((x_1803 * x_1806) + x_1810);
    let x_1812 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1812, 0.0f, 1.0f);
    let x_1814 : f32 = u_xlat48;
    let x_1815 : f32 = u_xlat48;
    u_xlat48 = (x_1814 * x_1815);
    let x_1817 : f32 = u_xlat46;
    let x_1818 : f32 = u_xlat48;
    u_xlat46 = (x_1817 * x_1818);
    let x_1820 : f32 = u_xlat32;
    let x_1822 : i32 = u_xlati43;
    let x_1824 : vec4<f32> = x_1744.x_AdditionalLightsColor[x_1822];
    let x_1826 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
    let x_1827 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
    let x_1829 : vec4<f32> = u_xlat1;
    let x_1831 : vec4<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1829.x, x_1829.y, x_1829.z), vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
    let x_1834 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1834, 0.0f, 1.0f);
    let x_1836 : f32 = u_xlat43;
    let x_1837 : f32 = u_xlat46;
    u_xlat43 = (x_1836 * x_1837);
    let x_1839 : f32 = u_xlat43;
    let x_1841 : vec4<f32> = u_xlat11;
    let x_1843 : vec3<f32> = (vec3<f32>(x_1839, x_1839, x_1839) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
    let x_1844 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
    let x_1846 : vec4<f32> = u_xlat9;
    let x_1848 : f32 = u_xlat47;
    let x_1851 : vec4<f32> = u_xlat8;
    let x_1853 : vec3<f32> = ((vec3<f32>(x_1846.x, x_1846.y, x_1846.z) * vec3<f32>(x_1848, x_1848, x_1848)) + vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
    let x_1856 : vec4<f32> = u_xlat9;
    let x_1858 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_1856.x, x_1856.y, x_1856.z), vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
    let x_1861 : f32 = u_xlat43;
    u_xlat43 = max(x_1861, 1.17549435e-37f);
    let x_1863 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1863);
    let x_1865 : f32 = u_xlat43;
    let x_1867 : vec4<f32> = u_xlat9;
    let x_1869 : vec3<f32> = (vec3<f32>(x_1865, x_1865, x_1865) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
    let x_1872 : vec4<f32> = u_xlat1;
    let x_1874 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_1872.x, x_1872.y, x_1872.z), vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1877, 0.0f, 1.0f);
    let x_1879 : vec4<f32> = u_xlat10;
    let x_1881 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1879.x, x_1879.y, x_1879.z), vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1884, 0.0f, 1.0f);
    let x_1886 : f32 = u_xlat43;
    let x_1887 : f32 = u_xlat43;
    u_xlat43 = (x_1886 * x_1887);
    let x_1889 : f32 = u_xlat43;
    let x_1891 : f32 = u_xlat4.x;
    u_xlat43 = ((x_1889 * x_1891) + 1.000010014f);
    let x_1894 : f32 = u_xlat46;
    let x_1895 : f32 = u_xlat46;
    u_xlat46 = (x_1894 * x_1895);
    let x_1897 : f32 = u_xlat43;
    let x_1898 : f32 = u_xlat43;
    u_xlat43 = (x_1897 * x_1898);
    let x_1900 : f32 = u_xlat46;
    u_xlat46 = max(x_1900, 0.100000001f);
    let x_1902 : f32 = u_xlat43;
    let x_1903 : f32 = u_xlat46;
    u_xlat43 = (x_1902 * x_1903);
    let x_1905 : f32 = u_xlat45;
    let x_1906 : f32 = u_xlat43;
    u_xlat43 = (x_1905 * x_1906);
    let x_1908 : f32 = u_xlat18;
    let x_1909 : f32 = u_xlat43;
    u_xlat43 = (x_1908 / x_1909);
    let x_1911 : vec4<f32> = u_xlat5;
    let x_1913 : f32 = u_xlat43;
    let x_1916 : vec4<f32> = u_xlat6;
    let x_1918 : vec3<f32> = ((vec3<f32>(x_1911.x, x_1911.y, x_1911.z) * vec3<f32>(x_1913, x_1913, x_1913)) + vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
    let x_1919 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
    let x_1921 : vec4<f32> = u_xlat9;
    let x_1923 : vec4<f32> = u_xlat11;
    let x_1926 : vec4<f32> = u_xlat7;
    let x_1928 : vec3<f32> = ((vec3<f32>(x_1921.x, x_1921.y, x_1921.z) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z)) + vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
    let x_1929 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);

    continuing {
      let x_1931 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1931 + bitcast<u32>(1i));
    }
  }
  let x_1933 : vec4<f32> = u_xlat3;
  let x_1935 : f32 = u_xlat14;
  let x_1938 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1933.x, x_1933.y, x_1933.z) * vec3<f32>(x_1935, x_1935, x_1935)) + vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1943 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1941.x, x_1941.y, x_1941.z) + x_1943);
  let x_1945 : f32 = u_xlat42;
  let x_1947 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1945, x_1945, x_1945) * x_1947);
  let x_1949 : f32 = u_xlat44;
  let x_1950 : f32 = u_xlat44;
  u_xlat42 = (x_1949 * -(x_1950));
  let x_1953 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1953);
  let x_1957 : vec3<f32> = u_xlat0;
  let x_1958 : f32 = u_xlat42;
  let x_1960 : vec3<f32> = (x_1957 * vec3<f32>(x_1958, x_1958, x_1958));
  let x_1961 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

