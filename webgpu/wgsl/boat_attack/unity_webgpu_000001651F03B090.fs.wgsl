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
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1360 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1626 : AdditionalLights;

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
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1206 : f32;
  var u_xlat30 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati47 : i32;
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
  let x_132 : f32 = x_127.x_GlobalMipBias.x;
  let x_133 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_132);
  u_xlat4 = x_133;
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_146 : vec4<f32> = vs_TEXCOORD1;
  let x_149 : f32 = x_127.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_146.x, x_146.y), x_149);
  u_xlat5 = x_150;
  let x_156 : vec4<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_127.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_156.z, x_156.w), x_159);
  u_xlat6 = x_160;
  let x_167 : vec4<f32> = vs_TEXCOORD2;
  let x_170 : f32 = x_127.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_167.x, x_167.y), x_170);
  u_xlat7 = x_171;
  let x_177 : vec4<f32> = vs_TEXCOORD2;
  let x_180 : f32 = x_127.x_GlobalMipBias.x;
  let x_181 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_177.z, x_177.w), x_180);
  u_xlat8 = x_181;
  let x_184 : f32 = u_xlat5.w;
  u_xlat9.x = x_184;
  let x_187 : f32 = u_xlat6.w;
  u_xlat9.y = x_187;
  let x_191 : f32 = u_xlat7.w;
  u_xlat9.z = x_191;
  let x_195 : f32 = u_xlat8.w;
  u_xlat9.w = x_195;
  let x_198 : vec4<f32> = u_xlat9;
  let x_201 : f32 = x_30.x_Smoothness0;
  let x_204 : f32 = x_30.x_Smoothness1;
  let x_207 : f32 = x_30.x_Smoothness2;
  let x_210 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_198 * vec4<f32>(x_201, x_204, x_207, x_210));
  let x_219 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_219);
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_222) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat9;
  let x_226 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_225 + -(x_226));
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_229 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_233, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_238 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_242);
  let x_245 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_245 + -(x_246));
  let x_251 : f32 = u_xlat12.x;
  let x_254 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.y;
  let x_261 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_258 * x_261);
  let x_265 : f32 = u_xlat12.z;
  let x_268 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.w;
  let x_275 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_272 * x_275);
  let x_278 : vec4<f32> = u_xlat11;
  let x_279 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_278 + x_279);
  let x_281 : bool = u_xlatb43;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_292 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_292);
  let x_294 : bool = u_xlatb44;
  if (((select(0i, 1i, x_294) * -1i) != 0i)) {
    discard;
  }
  let x_303 : f32 = u_xlat43;
  u_xlat43 = (x_303 + 6.10351562e-05f);
  let x_306 : vec4<f32> = u_xlat4;
  let x_307 : f32 = u_xlat43;
  u_xlat4 = (x_306 / vec4<f32>(x_307, x_307, x_307, x_307));
  let x_310 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_315 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec4<f32> = u_xlat12;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat11;
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.y, x_335.z)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat4;
  let x_346 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_348 : vec3<f32> = (vec3<f32>(x_343.z, x_343.z, x_343.z) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.y, x_353.z)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat4;
  let x_364 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_366 : vec3<f32> = (vec3<f32>(x_361.w, x_361.w, x_361.w) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat8;
  let x_371 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat5;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_384 : vec4<f32> = vs_TEXCOORD1;
  let x_387 : f32 = x_127.x_GlobalMipBias.x;
  let x_388 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_384.x, x_384.y), x_387);
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.w);
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat6.x;
  let x_395 : f32 = u_xlat6.z;
  u_xlat6.x = (x_393 * x_395);
  let x_398 : vec4<f32> = u_xlat6;
  let x_403 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat6;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
  let x_411 : f32 = u_xlat43;
  u_xlat43 = min(x_411, 1.0f);
  let x_413 : f32 = u_xlat43;
  u_xlat43 = (-(x_413) + 1.0f);
  let x_416 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_416);
  let x_418 : f32 = u_xlat43;
  u_xlat7.z = max(x_418, 1.00000002e-16f);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : f32 = x_30.x_NormalScale0;
  let x_427 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425, x_425));
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_434 : vec4<f32> = vs_TEXCOORD1;
  let x_437 : f32 = x_127.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_434.z, x_434.w), x_437);
  let x_439 : vec3<f32> = vec3<f32>(x_438.x, x_438.y, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : f32 = u_xlat6.x;
  let x_445 : f32 = u_xlat6.z;
  u_xlat6.x = (x_443 * x_445);
  let x_448 : vec4<f32> = u_xlat6;
  let x_451 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_454.x, x_454.y), vec2<f32>(x_456.x, x_456.y));
  let x_459 : f32 = u_xlat43;
  u_xlat43 = min(x_459, 1.0f);
  let x_461 : f32 = u_xlat43;
  u_xlat43 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_464);
  let x_466 : f32 = u_xlat43;
  u_xlat8.z = max(x_466, 1.00000002e-16f);
  let x_469 : vec4<f32> = u_xlat6;
  let x_472 : f32 = x_30.x_NormalScale1;
  let x_474 : f32 = x_30.x_NormalScale1;
  let x_475 : vec2<f32> = vec2<f32>(x_472, x_474);
  let x_479 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_475.x, x_475.y));
  let x_480 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = u_xlat8;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.y, x_482.y, x_482.y) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec4<f32> = u_xlat6;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.x, x_489.x) * vec3<f32>(x_491.x, x_491.y, x_491.z)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_503 : vec4<f32> = vs_TEXCOORD2;
  let x_506 : f32 = x_127.x_GlobalMipBias.x;
  let x_507 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_503.x, x_503.y), x_506);
  let x_508 : vec3<f32> = vec3<f32>(x_507.x, x_507.y, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = u_xlat7.x;
  let x_514 : f32 = u_xlat7.z;
  u_xlat7.x = (x_512 * x_514);
  let x_517 : vec4<f32> = u_xlat7;
  let x_520 : vec2<f32> = ((vec2<f32>(x_517.x, x_517.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat7;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat43;
  u_xlat43 = min(x_528, 1.0f);
  let x_530 : f32 = u_xlat43;
  u_xlat43 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_533);
  let x_535 : f32 = u_xlat43;
  u_xlat8.z = max(x_535, 1.00000002e-16f);
  let x_538 : vec4<f32> = u_xlat7;
  let x_542 : f32 = x_30.x_NormalScale2;
  let x_544 : f32 = x_30.x_NormalScale2;
  let x_545 : vec2<f32> = vec2<f32>(x_542, x_544);
  let x_549 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_545.x, x_545.y));
  let x_550 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec4<f32> = u_xlat8;
  let x_557 : vec4<f32> = u_xlat6;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.z, x_552.z, x_552.z) * vec3<f32>(x_554.x, x_554.y, x_554.z)) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_566 : vec4<f32> = vs_TEXCOORD2;
  let x_569 : f32 = x_127.x_GlobalMipBias.x;
  let x_570 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_566.z, x_566.w), x_569);
  let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat7.x;
  let x_577 : f32 = u_xlat7.z;
  u_xlat7.x = (x_575 * x_577);
  let x_580 : vec4<f32> = u_xlat7;
  let x_583 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat7;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat43;
  u_xlat43 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat43;
  u_xlat43 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_596);
  let x_598 : f32 = u_xlat43;
  u_xlat8.z = max(x_598, 1.00000002e-16f);
  let x_601 : vec4<f32> = u_xlat7;
  let x_605 : f32 = x_30.x_NormalScale3;
  let x_607 : f32 = x_30.x_NormalScale3;
  let x_608 : vec2<f32> = vec2<f32>(x_605, x_607);
  let x_612 : vec2<f32> = (vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_608.x, x_608.y));
  let x_613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec4<f32> = u_xlat8;
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.w, x_615.w, x_615.w) * vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat6.z;
  u_xlat6.w = (x_626 + 0.00001f);
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_630.x, x_630.y, x_630.w), vec3<f32>(x_632.x, x_632.y, x_632.w));
  let x_635 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat43;
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.w));
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_645 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_645;
  let x_648 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_648;
  let x_651 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_651;
  let x_654 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_654;
  let x_657 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_657;
  let x_660 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_660;
  let x_663 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_663;
  let x_666 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_666;
  let x_668 : vec4<f32> = u_xlat7;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_668 + x_669);
  let x_672 : f32 = u_xlat0.z;
  u_xlat8.x = x_672;
  let x_675 : f32 = u_xlat1.z;
  u_xlat8.y = x_675;
  let x_678 : f32 = u_xlat2.z;
  u_xlat8.z = x_678;
  let x_681 : f32 = u_xlat3.y;
  u_xlat8.w = x_681;
  let x_683 : vec4<f32> = u_xlat9;
  let x_686 : f32 = x_30.x_Smoothness0;
  let x_688 : f32 = x_30.x_Smoothness1;
  let x_690 : f32 = x_30.x_Smoothness2;
  let x_692 : f32 = x_30.x_Smoothness3;
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_683) * vec4<f32>(x_686, x_688, x_690, x_692)) + x_695);
  let x_699 : f32 = x_30.x_LayerHasMask0;
  let x_702 : f32 = x_30.x_LayerHasMask1;
  let x_705 : f32 = x_30.x_LayerHasMask2;
  let x_708 : f32 = x_30.x_LayerHasMask3;
  let x_710 : vec4<f32> = u_xlat8;
  let x_712 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_699, x_702, x_705, x_708) * x_710) + x_712);
  let x_715 : vec4<f32> = u_xlat4;
  let x_716 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_715, x_716);
  let x_719 : f32 = u_xlat0.x;
  u_xlat8.x = x_719;
  let x_722 : f32 = u_xlat1.x;
  u_xlat8.y = x_722;
  let x_725 : f32 = u_xlat2.x;
  u_xlat8.z = x_725;
  let x_728 : f32 = u_xlat3.x;
  u_xlat8.w = x_728;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_30.x_Metallic0;
  let x_736 : f32 = x_30.x_Metallic1;
  let x_739 : f32 = x_30.x_Metallic2;
  let x_742 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_730 + -(vec4<f32>(x_733, x_736, x_739, x_742)));
  let x_747 : f32 = x_30.x_LayerHasMask0;
  let x_749 : f32 = x_30.x_LayerHasMask1;
  let x_751 : f32 = x_30.x_LayerHasMask2;
  let x_753 : f32 = x_30.x_LayerHasMask3;
  let x_755 : vec4<f32> = u_xlat8;
  let x_758 : f32 = x_30.x_Metallic0;
  let x_760 : f32 = x_30.x_Metallic1;
  let x_762 : f32 = x_30.x_Metallic2;
  let x_764 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_747, x_749, x_751, x_753) * x_755) + vec4<f32>(x_758, x_760, x_762, x_764));
  let x_767 : vec4<f32> = u_xlat4;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_767, x_768);
  let x_772 : f32 = u_xlat0.y;
  u_xlat3.x = x_772;
  let x_775 : f32 = u_xlat1.y;
  u_xlat3.y = x_775;
  let x_778 : f32 = u_xlat2.y;
  u_xlat3.z = x_778;
  let x_780 : vec4<f32> = u_xlat7;
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_780) + x_782);
  let x_785 : f32 = x_30.x_LayerHasMask0;
  let x_787 : f32 = x_30.x_LayerHasMask1;
  let x_789 : f32 = x_30.x_LayerHasMask2;
  let x_791 : f32 = x_30.x_LayerHasMask3;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_785, x_787, x_789, x_791) * x_793) + x_795);
  let x_798 : vec4<f32> = u_xlat4;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_798, x_799);
  let x_801 : vec4<f32> = u_xlat6;
  let x_804 : vec4<f32> = vs_TEXCOORD5;
  let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.y, x_801.y) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD4;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.x, x_809.x) * -(vec3<f32>(x_812.x, x_812.y, x_812.z))) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD3;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_821.z, x_821.z, x_821.z) * vec3<f32>(x_824.x, x_824.y, x_824.z)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat43;
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = (vec3<f32>(x_839, x_839, x_839) * vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_848 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_848 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
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
  u_xlat43 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat43;
  u_xlat43 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat43;
  u_xlatu43 = u32(x_967);
  let x_971 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati43;
  let x_979 : i32 = u_xlati43;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati43;
  let x_990 : i32 = u_xlati43;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati43;
  let x_1006 : i32 = u_xlati43;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati43;
  let x_1025 : i32 = u_xlati43;
  let x_1029 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
  let x_1031 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_127.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1049 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1050 : vec2<f32> = vec2<f32>(x_1049.x, x_1049.y);
  let x_1054 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1050.x, x_1050.y));
  let x_1055 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat4;
  let x_1059 : vec4<f32> = hlslcc_FragCoord;
  let x_1061 : vec2<f32> = (vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1059.x, x_1059.y));
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
  let x_1065 : f32 = u_xlat4.y;
  let x_1067 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1070 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1065 * x_1067) + x_1070);
  let x_1072 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1072) + 1.0f);
  let x_1077 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1077) * 0.959999979f) + 0.959999979f);
  let x_1083 : f32 = u_xlat28;
  let x_1084 : f32 = u_xlat43;
  u_xlat44 = (x_1083 + -(x_1084));
  let x_1087 : f32 = u_xlat43;
  let x_1089 : vec4<f32> = u_xlat5;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087, x_1087, x_1087) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat5;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1099 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec3<f32> = u_xlat0;
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.x, x_1101.x) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1109 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1111) + 1.0f);
  let x_1116 : f32 = u_xlat0.x;
  let x_1118 : f32 = u_xlat0.x;
  u_xlat28 = (x_1116 * x_1118);
  let x_1120 : f32 = u_xlat28;
  u_xlat28 = max(x_1120, 0.0078125f);
  let x_1123 : f32 = u_xlat28;
  let x_1124 : f32 = u_xlat28;
  u_xlat43 = (x_1123 * x_1124);
  let x_1126 : f32 = u_xlat44;
  u_xlat44 = (x_1126 + 1.0f);
  let x_1128 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1128, 0.0f, 1.0f);
  let x_1131 : f32 = u_xlat28;
  u_xlat45 = ((x_1131 * 4.0f) + 2.0f);
  let x_1139 : vec4<f32> = u_xlat4;
  let x_1142 : f32 = x_127.x_GlobalMipBias.x;
  let x_1143 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1139.x, x_1139.z), x_1142);
  u_xlat4.x = x_1143.x;
  let x_1148 : f32 = u_xlat4.x;
  u_xlat18 = (x_1148 + -1.0f);
  let x_1151 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1152 : f32 = u_xlat18;
  u_xlat18 = ((x_1151 * x_1152) + 1.0f);
  let x_1155 : f32 = u_xlat14;
  let x_1157 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1155, x_1157);
  let x_1160 : vec4<f32> = u_xlat2;
  let x_1161 : vec2<f32> = vec2<f32>(x_1160.x, x_1160.y);
  let x_1163 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
  let x_1175 : vec3<f32> = txVec0;
  let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1175.xy, x_1175.z);
  u_xlat2.x = x_1177;
  let x_1181 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1181) + 1.0f);
  let x_1186 : f32 = u_xlat2.x;
  let x_1188 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1191 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1186 * x_1188) + x_1191);
  let x_1196 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1196);
  let x_1200 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1200 >= 1.0f);
  let x_1202 : bool = u_xlatb30;
  let x_1203 : bool = u_xlatb16;
  u_xlatb16 = (x_1202 | x_1203);
  let x_1205 : bool = u_xlatb16;
  if (x_1205) {
    x_1206 = 1.0f;
  } else {
    let x_1211 : f32 = u_xlat2.x;
    x_1206 = x_1211;
  }
  let x_1212 : f32 = x_1206;
  u_xlat2.x = x_1212;
  let x_1214 : vec3<f32> = vs_TEXCOORD7;
  let x_1217 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1219 : vec3<f32> = (x_1214 + -(x_1217));
  let x_1220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1219.x, x_1220.y, x_1219.y, x_1219.z);
  let x_1222 : vec4<f32> = u_xlat4;
  let x_1224 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1222.x, x_1222.z, x_1222.w), vec3<f32>(x_1224.x, x_1224.z, x_1224.w));
  let x_1229 : f32 = u_xlat16.x;
  let x_1231 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1234 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1229 * x_1231) + x_1234);
  let x_1238 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1238, 0.0f, 1.0f);
  let x_1243 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1243) + 1.0f);
  let x_1247 : f32 = u_xlat16.x;
  let x_1248 : f32 = u_xlat30;
  let x_1251 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1247 * x_1248) + x_1251);
  let x_1254 : f32 = u_xlat18;
  let x_1257 : vec4<f32> = x_127.x_MainLightColor;
  let x_1259 : vec3<f32> = (vec3<f32>(x_1254, x_1254, x_1254) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1259.x, x_1260.y, x_1259.y, x_1259.z);
  let x_1263 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1263;
  let x_1266 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1266;
  let x_1269 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1269;
  let x_1271 : vec4<f32> = u_xlat7;
  let x_1274 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1271.x, x_1271.y, x_1271.z)), vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1279 : f32 = u_xlat16.x;
  let x_1281 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1279 + x_1281);
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1286 : vec3<f32> = u_xlat16;
  let x_1290 : vec4<f32> = u_xlat7;
  let x_1293 : vec3<f32> = ((vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * -(vec3<f32>(x_1286.x, x_1286.x, x_1286.x))) + -(vec3<f32>(x_1290.x, x_1290.y, x_1290.z)));
  let x_1294 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  let x_1296 : vec4<f32> = u_xlat1;
  let x_1298 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1303 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1303, 0.0f, 1.0f);
  let x_1307 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1307) + 1.0f);
  let x_1312 : f32 = u_xlat16.x;
  let x_1314 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1312 * x_1314);
  let x_1318 : f32 = u_xlat16.x;
  let x_1320 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1318 * x_1320);
  let x_1324 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1324) * 0.699999988f) + 1.700000048f);
  let x_1331 : f32 = u_xlat0.x;
  let x_1332 : f32 = u_xlat30;
  u_xlat0.x = (x_1331 * x_1332);
  let x_1336 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1336 * 6.0f);
  let x_1348 : vec4<f32> = u_xlat8;
  let x_1351 : f32 = u_xlat0.x;
  let x_1352 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1348.x, x_1348.y, x_1348.z), x_1351);
  u_xlat8 = x_1352;
  let x_1354 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1354 + -1.0f);
  let x_1362 : f32 = x_1360.unity_SpecCube0_HDR.w;
  let x_1364 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1362 * x_1364) + 1.0f);
  let x_1369 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1369, 0.0f);
  let x_1373 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1373);
  let x_1377 : f32 = u_xlat0.x;
  let x_1379 : f32 = x_1360.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1377 * x_1379);
  let x_1383 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1383);
  let x_1387 : f32 = u_xlat0.x;
  let x_1389 : f32 = x_1360.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1387 * x_1389);
  let x_1392 : vec4<f32> = u_xlat8;
  let x_1394 : vec3<f32> = u_xlat0;
  let x_1396 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(x_1394.x, x_1394.x, x_1394.x));
  let x_1397 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1399 : f32 = u_xlat28;
  let x_1401 : f32 = u_xlat28;
  let x_1405 : vec2<f32> = ((vec2<f32>(x_1399, x_1399) * vec2<f32>(x_1401, x_1401)) + vec2<f32>(-1.0f, 1.0f));
  let x_1406 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1405.x, x_1406.y, x_1405.y);
  let x_1409 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1409);
  let x_1411 : vec4<f32> = u_xlat5;
  let x_1414 : f32 = u_xlat44;
  let x_1416 : vec3<f32> = (-(vec3<f32>(x_1411.x, x_1411.y, x_1411.z)) + vec3<f32>(x_1414, x_1414, x_1414));
  let x_1417 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
  let x_1419 : vec3<f32> = u_xlat16;
  let x_1421 : vec4<f32> = u_xlat9;
  let x_1424 : vec4<f32> = u_xlat5;
  u_xlat16 = ((vec3<f32>(x_1419.x, x_1419.x, x_1419.x) * vec3<f32>(x_1421.x, x_1421.y, x_1421.z)) + vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : f32 = u_xlat28;
  let x_1429 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_1427, x_1427, x_1427) * x_1429);
  let x_1431 : vec3<f32> = u_xlat16;
  let x_1432 : vec4<f32> = u_xlat8;
  u_xlat16 = (x_1431 * vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
  let x_1435 : vec4<f32> = u_xlat3;
  let x_1437 : vec4<f32> = u_xlat6;
  let x_1440 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1435.x, x_1435.y, x_1435.z) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z)) + x_1440);
  let x_1443 : f32 = u_xlat2.x;
  let x_1445 : f32 = x_1360.unity_LightData.z;
  u_xlat28 = (x_1443 * x_1445);
  let x_1447 : vec4<f32> = u_xlat1;
  let x_1450 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1455 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1455, 0.0f, 1.0f);
  let x_1458 : f32 = u_xlat28;
  let x_1460 : f32 = u_xlat2.x;
  u_xlat28 = (x_1458 * x_1460);
  let x_1462 : f32 = u_xlat28;
  let x_1464 : vec4<f32> = u_xlat4;
  let x_1466 : vec3<f32> = (vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1464.x, x_1464.z, x_1464.w));
  let x_1467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : vec4<f32> = u_xlat7;
  let x_1472 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1474 : vec3<f32> = (vec3<f32>(x_1469.x, x_1469.y, x_1469.z) + vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
  let x_1475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1474.x, x_1475.y, x_1474.y, x_1474.z);
  let x_1477 : vec4<f32> = u_xlat4;
  let x_1479 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1477.x, x_1477.z, x_1477.w), vec3<f32>(x_1479.x, x_1479.z, x_1479.w));
  let x_1482 : f32 = u_xlat28;
  u_xlat28 = max(x_1482, 1.17549435e-37f);
  let x_1485 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1485);
  let x_1487 : f32 = u_xlat28;
  let x_1489 : vec4<f32> = u_xlat4;
  let x_1491 : vec3<f32> = (vec3<f32>(x_1487, x_1487, x_1487) * vec3<f32>(x_1489.x, x_1489.z, x_1489.w));
  let x_1492 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1491.x, x_1492.y, x_1491.y, x_1491.z);
  let x_1494 : vec4<f32> = u_xlat1;
  let x_1496 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1494.x, x_1494.y, x_1494.z), vec3<f32>(x_1496.x, x_1496.z, x_1496.w));
  let x_1499 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1499, 0.0f, 1.0f);
  let x_1502 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1504 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), vec3<f32>(x_1504.x, x_1504.z, x_1504.w));
  let x_1509 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1509, 0.0f, 1.0f);
  let x_1512 : f32 = u_xlat28;
  let x_1513 : f32 = u_xlat28;
  u_xlat28 = (x_1512 * x_1513);
  let x_1515 : f32 = u_xlat28;
  let x_1517 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1515 * x_1517) + 1.000010014f);
  let x_1522 : f32 = u_xlat2.x;
  let x_1524 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1522 * x_1524);
  let x_1527 : f32 = u_xlat28;
  let x_1528 : f32 = u_xlat28;
  u_xlat28 = (x_1527 * x_1528);
  let x_1531 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1531, 0.100000001f);
  let x_1535 : f32 = u_xlat28;
  let x_1537 : f32 = u_xlat2.x;
  u_xlat28 = (x_1535 * x_1537);
  let x_1539 : f32 = u_xlat45;
  let x_1540 : f32 = u_xlat28;
  u_xlat28 = (x_1539 * x_1540);
  let x_1542 : f32 = u_xlat43;
  let x_1543 : f32 = u_xlat28;
  u_xlat28 = (x_1542 / x_1543);
  let x_1545 : vec4<f32> = u_xlat5;
  let x_1547 : f32 = u_xlat28;
  let x_1550 : vec4<f32> = u_xlat6;
  let x_1552 : vec3<f32> = ((vec3<f32>(x_1545.x, x_1545.y, x_1545.z) * vec3<f32>(x_1547, x_1547, x_1547)) + vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
  let x_1553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1552.x, x_1553.y, x_1552.y, x_1552.z);
  let x_1555 : vec4<f32> = u_xlat3;
  let x_1557 : vec4<f32> = u_xlat4;
  let x_1559 : vec3<f32> = (vec3<f32>(x_1555.x, x_1555.y, x_1555.z) * vec3<f32>(x_1557.x, x_1557.z, x_1557.w));
  let x_1560 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1563 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1565 : f32 = x_1360.unity_LightData.y;
  u_xlat28 = min(x_1563, x_1565);
  let x_1568 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1568));
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1580 : u32 = u_xlatu_loop_1;
    let x_1581 : u32 = u_xlatu28;
    if ((x_1580 < x_1581)) {
    } else {
      break;
    }
    let x_1584 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1584 >> 2u);
    let x_1587 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1587 & 3u));
    let x_1591 : u32 = u_xlatu47;
    let x_1594 : vec4<f32> = x_1360.unity_LightIndices[bitcast<i32>(x_1591)];
    let x_1604 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1609 : vec4<u32> = indexable[x_1604];
    u_xlat47 = dot(x_1594, bitcast<vec4<f32>>(x_1609));
    let x_1613 : f32 = u_xlat47;
    u_xlati47 = i32(x_1613);
    let x_1615 : vec3<f32> = vs_TEXCOORD7;
    let x_1627 : i32 = u_xlati47;
    let x_1629 : vec4<f32> = x_1626.x_AdditionalLightsPosition[x_1627];
    let x_1632 : i32 = u_xlati47;
    let x_1634 : vec4<f32> = x_1626.x_AdditionalLightsPosition[x_1632];
    let x_1636 : vec3<f32> = ((-(x_1615) * vec3<f32>(x_1629.w, x_1629.w, x_1629.w)) + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
    let x_1637 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
    let x_1640 : vec4<f32> = u_xlat8;
    let x_1642 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1640.x, x_1640.y, x_1640.z), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
    let x_1645 : f32 = u_xlat48;
    u_xlat48 = max(x_1645, 6.10351562e-05f);
    let x_1648 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1648);
    let x_1650 : f32 = u_xlat49;
    let x_1652 : vec4<f32> = u_xlat8;
    let x_1654 : vec3<f32> = (vec3<f32>(x_1650, x_1650, x_1650) * vec3<f32>(x_1652.x, x_1652.y, x_1652.z));
    let x_1655 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1655.w);
    let x_1658 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1658);
    let x_1660 : f32 = u_xlat48;
    let x_1661 : i32 = u_xlati47;
    let x_1663 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1661].x;
    u_xlat48 = (x_1660 * x_1663);
    let x_1665 : f32 = u_xlat48;
    let x_1667 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1665) * x_1667) + 1.0f);
    let x_1670 : f32 = u_xlat48;
    u_xlat48 = max(x_1670, 0.0f);
    let x_1672 : f32 = u_xlat48;
    let x_1673 : f32 = u_xlat48;
    u_xlat48 = (x_1672 * x_1673);
    let x_1675 : f32 = u_xlat48;
    let x_1676 : f32 = u_xlat50;
    u_xlat48 = (x_1675 * x_1676);
    let x_1678 : i32 = u_xlati47;
    let x_1680 : vec4<f32> = x_1626.x_AdditionalLightsSpotDir[x_1678];
    let x_1682 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1680.x, x_1680.y, x_1680.z), vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : f32 = u_xlat50;
    let x_1686 : i32 = u_xlati47;
    let x_1688 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1686].z;
    let x_1690 : i32 = u_xlati47;
    let x_1692 : f32 = x_1626.x_AdditionalLightsAttenuation[x_1690].w;
    u_xlat50 = ((x_1685 * x_1688) + x_1692);
    let x_1694 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1694, 0.0f, 1.0f);
    let x_1696 : f32 = u_xlat50;
    let x_1697 : f32 = u_xlat50;
    u_xlat50 = (x_1696 * x_1697);
    let x_1699 : f32 = u_xlat48;
    let x_1700 : f32 = u_xlat50;
    u_xlat48 = (x_1699 * x_1700);
    let x_1702 : f32 = u_xlat18;
    let x_1704 : i32 = u_xlati47;
    let x_1706 : vec4<f32> = x_1626.x_AdditionalLightsColor[x_1704];
    let x_1708 : vec3<f32> = (vec3<f32>(x_1702, x_1702, x_1702) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
    let x_1709 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
    let x_1711 : vec4<f32> = u_xlat1;
    let x_1713 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1711.x, x_1711.y, x_1711.z), vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
    let x_1716 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1716, 0.0f, 1.0f);
    let x_1718 : f32 = u_xlat47;
    let x_1719 : f32 = u_xlat48;
    u_xlat47 = (x_1718 * x_1719);
    let x_1721 : f32 = u_xlat47;
    let x_1723 : vec4<f32> = u_xlat10;
    let x_1725 : vec3<f32> = (vec3<f32>(x_1721, x_1721, x_1721) * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
    let x_1726 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
    let x_1728 : vec4<f32> = u_xlat8;
    let x_1730 : f32 = u_xlat49;
    let x_1733 : vec4<f32> = u_xlat7;
    let x_1735 : vec3<f32> = ((vec3<f32>(x_1728.x, x_1728.y, x_1728.z) * vec3<f32>(x_1730, x_1730, x_1730)) + vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
    let x_1736 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
    let x_1738 : vec4<f32> = u_xlat8;
    let x_1740 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1738.x, x_1738.y, x_1738.z), vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
    let x_1743 : f32 = u_xlat47;
    u_xlat47 = max(x_1743, 1.17549435e-37f);
    let x_1745 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1745);
    let x_1747 : f32 = u_xlat47;
    let x_1749 : vec4<f32> = u_xlat8;
    let x_1751 : vec3<f32> = (vec3<f32>(x_1747, x_1747, x_1747) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
    let x_1752 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    let x_1754 : vec4<f32> = u_xlat1;
    let x_1756 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1754.x, x_1754.y, x_1754.z), vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
    let x_1759 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1759, 0.0f, 1.0f);
    let x_1761 : vec4<f32> = u_xlat9;
    let x_1763 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1761.x, x_1761.y, x_1761.z), vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
    let x_1766 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1766, 0.0f, 1.0f);
    let x_1768 : f32 = u_xlat47;
    let x_1769 : f32 = u_xlat47;
    u_xlat47 = (x_1768 * x_1769);
    let x_1771 : f32 = u_xlat47;
    let x_1773 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1771 * x_1773) + 1.000010014f);
    let x_1776 : f32 = u_xlat48;
    let x_1777 : f32 = u_xlat48;
    u_xlat48 = (x_1776 * x_1777);
    let x_1779 : f32 = u_xlat47;
    let x_1780 : f32 = u_xlat47;
    u_xlat47 = (x_1779 * x_1780);
    let x_1782 : f32 = u_xlat48;
    u_xlat48 = max(x_1782, 0.100000001f);
    let x_1784 : f32 = u_xlat47;
    let x_1785 : f32 = u_xlat48;
    u_xlat47 = (x_1784 * x_1785);
    let x_1787 : f32 = u_xlat45;
    let x_1788 : f32 = u_xlat47;
    u_xlat47 = (x_1787 * x_1788);
    let x_1790 : f32 = u_xlat43;
    let x_1791 : f32 = u_xlat47;
    u_xlat47 = (x_1790 / x_1791);
    let x_1793 : vec4<f32> = u_xlat5;
    let x_1795 : f32 = u_xlat47;
    let x_1798 : vec4<f32> = u_xlat6;
    let x_1800 : vec3<f32> = ((vec3<f32>(x_1793.x, x_1793.y, x_1793.z) * vec3<f32>(x_1795, x_1795, x_1795)) + vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
    let x_1803 : vec4<f32> = u_xlat8;
    let x_1805 : vec4<f32> = u_xlat10;
    let x_1808 : vec4<f32> = u_xlat4;
    let x_1810 : vec3<f32> = ((vec3<f32>(x_1803.x, x_1803.y, x_1803.z) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z)) + vec3<f32>(x_1808.x, x_1808.z, x_1808.w));
    let x_1811 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1810.x, x_1811.y, x_1810.y, x_1810.z);

    continuing {
      let x_1813 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1813 + bitcast<u32>(1i));
    }
  }
  let x_1815 : vec3<f32> = u_xlat16;
  let x_1816 : f32 = u_xlat14;
  let x_1819 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_1815 * vec3<f32>(x_1816, x_1816, x_1816)) + vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1822 : vec4<f32> = u_xlat4;
  let x_1824 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1822.x, x_1822.z, x_1822.w) + x_1824);
  let x_1828 : f32 = u_xlat42;
  let x_1830 : vec3<f32> = u_xlat0;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1828, x_1828, x_1828) * x_1830);
  let x_1832 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
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

