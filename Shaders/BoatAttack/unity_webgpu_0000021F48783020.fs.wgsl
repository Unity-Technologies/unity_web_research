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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1401 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1667 : AdditionalLights;

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
  var x_1247 : f32;
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
  let x_1043 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  u_xlat3 = x_1043;
  let x_1048 : vec4<f32> = vs_TEXCOORD0;
  let x_1051 : f32 = x_127.x_GlobalMipBias.x;
  let x_1052 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1048.z, x_1048.w), x_1051);
  let x_1053 : vec3<f32> = vec3<f32>(x_1052.x, x_1052.y, x_1052.z);
  let x_1054 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec4<f32> = u_xlat3;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.y, x_1056.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1061 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat1;
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat43;
  u_xlat43 = (x_1068 + 0.5f);
  let x_1070 : f32 = u_xlat43;
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070, x_1070, x_1070) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1078 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1078, 0.0001f);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : f32 = u_xlat43;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) / vec3<f32>(x_1083, x_1083, x_1083));
  let x_1086 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1090 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1091 : vec2<f32> = vec2<f32>(x_1090.x, x_1090.y);
  let x_1095 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1091.x, x_1091.y));
  let x_1096 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat4;
  let x_1100 : vec4<f32> = hlslcc_FragCoord;
  let x_1102 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.y));
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
  let x_1106 : f32 = u_xlat4.y;
  let x_1108 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1111 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1106 * x_1108) + x_1111);
  let x_1113 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1118) * 0.959999979f) + 0.959999979f);
  let x_1124 : f32 = u_xlat28;
  let x_1125 : f32 = u_xlat43;
  u_xlat44 = (x_1124 + -(x_1125));
  let x_1128 : f32 = u_xlat43;
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec3<f32> = u_xlat0;
  let x_1144 : vec4<f32> = u_xlat5;
  let x_1149 : vec3<f32> = ((vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1152) + 1.0f);
  let x_1157 : f32 = u_xlat0.x;
  let x_1159 : f32 = u_xlat0.x;
  u_xlat28 = (x_1157 * x_1159);
  let x_1161 : f32 = u_xlat28;
  u_xlat28 = max(x_1161, 0.0078125f);
  let x_1164 : f32 = u_xlat28;
  let x_1165 : f32 = u_xlat28;
  u_xlat43 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat44;
  u_xlat44 = (x_1167 + 1.0f);
  let x_1169 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1169, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat28;
  u_xlat45 = ((x_1172 * 4.0f) + 2.0f);
  let x_1180 : vec4<f32> = u_xlat4;
  let x_1183 : f32 = x_127.x_GlobalMipBias.x;
  let x_1184 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1180.x, x_1180.z), x_1183);
  u_xlat4.x = x_1184.x;
  let x_1189 : f32 = u_xlat4.x;
  u_xlat18 = (x_1189 + -1.0f);
  let x_1192 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1193 : f32 = u_xlat18;
  u_xlat18 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat14;
  let x_1198 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1196, x_1198);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
  let x_1204 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
  let x_1216 : vec3<f32> = txVec0;
  let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1216.xy, x_1216.z);
  u_xlat2.x = x_1218;
  let x_1222 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1222) + 1.0f);
  let x_1227 : f32 = u_xlat2.x;
  let x_1229 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1232 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1227 * x_1229) + x_1232);
  let x_1237 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1237);
  let x_1241 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1241 >= 1.0f);
  let x_1243 : bool = u_xlatb30;
  let x_1244 : bool = u_xlatb16;
  u_xlatb16 = (x_1243 | x_1244);
  let x_1246 : bool = u_xlatb16;
  if (x_1246) {
    x_1247 = 1.0f;
  } else {
    let x_1252 : f32 = u_xlat2.x;
    x_1247 = x_1252;
  }
  let x_1253 : f32 = x_1247;
  u_xlat2.x = x_1253;
  let x_1255 : vec3<f32> = vs_TEXCOORD7;
  let x_1258 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1260 : vec3<f32> = (x_1255 + -(x_1258));
  let x_1261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1260.x, x_1261.y, x_1260.y, x_1260.z);
  let x_1263 : vec4<f32> = u_xlat4;
  let x_1265 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1263.x, x_1263.z, x_1263.w), vec3<f32>(x_1265.x, x_1265.z, x_1265.w));
  let x_1270 : f32 = u_xlat16.x;
  let x_1272 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1275 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1270 * x_1272) + x_1275);
  let x_1279 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1279, 0.0f, 1.0f);
  let x_1284 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1284) + 1.0f);
  let x_1288 : f32 = u_xlat16.x;
  let x_1289 : f32 = u_xlat30;
  let x_1292 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1288 * x_1289) + x_1292);
  let x_1295 : f32 = u_xlat18;
  let x_1298 : vec4<f32> = x_127.x_MainLightColor;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1295, x_1295, x_1295) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1300.x, x_1301.y, x_1300.y, x_1300.z);
  let x_1304 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1304;
  let x_1307 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1307;
  let x_1310 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1310;
  let x_1312 : vec4<f32> = u_xlat7;
  let x_1315 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1312.x, x_1312.y, x_1312.z)), vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1320 : f32 = u_xlat16.x;
  let x_1322 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1320 + x_1322);
  let x_1325 : vec4<f32> = u_xlat1;
  let x_1327 : vec3<f32> = u_xlat16;
  let x_1331 : vec4<f32> = u_xlat7;
  let x_1334 : vec3<f32> = ((vec3<f32>(x_1325.x, x_1325.y, x_1325.z) * -(vec3<f32>(x_1327.x, x_1327.x, x_1327.x))) + -(vec3<f32>(x_1331.x, x_1331.y, x_1331.z)));
  let x_1335 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec4<f32> = u_xlat1;
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1344 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1344, 0.0f, 1.0f);
  let x_1348 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1348) + 1.0f);
  let x_1353 : f32 = u_xlat16.x;
  let x_1355 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1353 * x_1355);
  let x_1359 : f32 = u_xlat16.x;
  let x_1361 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1359 * x_1361);
  let x_1365 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1365) * 0.699999988f) + 1.700000048f);
  let x_1372 : f32 = u_xlat0.x;
  let x_1373 : f32 = u_xlat30;
  u_xlat0.x = (x_1372 * x_1373);
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1377 * 6.0f);
  let x_1389 : vec4<f32> = u_xlat8;
  let x_1392 : f32 = u_xlat0.x;
  let x_1393 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1389.x, x_1389.y, x_1389.z), x_1392);
  u_xlat8 = x_1393;
  let x_1395 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1395 + -1.0f);
  let x_1403 : f32 = x_1401.unity_SpecCube0_HDR.w;
  let x_1405 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1403 * x_1405) + 1.0f);
  let x_1410 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1410, 0.0f);
  let x_1414 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1414);
  let x_1418 : f32 = u_xlat0.x;
  let x_1420 : f32 = x_1401.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1418 * x_1420);
  let x_1424 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1424);
  let x_1428 : f32 = u_xlat0.x;
  let x_1430 : f32 = x_1401.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1428 * x_1430);
  let x_1433 : vec4<f32> = u_xlat8;
  let x_1435 : vec3<f32> = u_xlat0;
  let x_1437 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * vec3<f32>(x_1435.x, x_1435.x, x_1435.x));
  let x_1438 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1440 : f32 = u_xlat28;
  let x_1442 : f32 = u_xlat28;
  let x_1446 : vec2<f32> = ((vec2<f32>(x_1440, x_1440) * vec2<f32>(x_1442, x_1442)) + vec2<f32>(-1.0f, 1.0f));
  let x_1447 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1446.x, x_1447.y, x_1446.y);
  let x_1450 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1450);
  let x_1452 : vec4<f32> = u_xlat5;
  let x_1455 : f32 = u_xlat44;
  let x_1457 : vec3<f32> = (-(vec3<f32>(x_1452.x, x_1452.y, x_1452.z)) + vec3<f32>(x_1455, x_1455, x_1455));
  let x_1458 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec3<f32> = u_xlat16;
  let x_1462 : vec4<f32> = u_xlat9;
  let x_1465 : vec4<f32> = u_xlat5;
  u_xlat16 = ((vec3<f32>(x_1460.x, x_1460.x, x_1460.x) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z)) + vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
  let x_1468 : f32 = u_xlat28;
  let x_1470 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_1468, x_1468, x_1468) * x_1470);
  let x_1472 : vec3<f32> = u_xlat16;
  let x_1473 : vec4<f32> = u_xlat8;
  u_xlat16 = (x_1472 * vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
  let x_1476 : vec4<f32> = u_xlat3;
  let x_1478 : vec4<f32> = u_xlat6;
  let x_1481 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1476.x, x_1476.y, x_1476.z) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z)) + x_1481);
  let x_1484 : f32 = u_xlat2.x;
  let x_1486 : f32 = x_1401.unity_LightData.z;
  u_xlat28 = (x_1484 * x_1486);
  let x_1488 : vec4<f32> = u_xlat1;
  let x_1491 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1488.x, x_1488.y, x_1488.z), vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
  let x_1496 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1496, 0.0f, 1.0f);
  let x_1499 : f32 = u_xlat28;
  let x_1501 : f32 = u_xlat2.x;
  u_xlat28 = (x_1499 * x_1501);
  let x_1503 : f32 = u_xlat28;
  let x_1505 : vec4<f32> = u_xlat4;
  let x_1507 : vec3<f32> = (vec3<f32>(x_1503, x_1503, x_1503) * vec3<f32>(x_1505.x, x_1505.z, x_1505.w));
  let x_1508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
  let x_1510 : vec4<f32> = u_xlat7;
  let x_1513 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1510.x, x_1510.y, x_1510.z) + vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1515.x, x_1516.y, x_1515.y, x_1515.z);
  let x_1518 : vec4<f32> = u_xlat4;
  let x_1520 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1518.x, x_1518.z, x_1518.w), vec3<f32>(x_1520.x, x_1520.z, x_1520.w));
  let x_1523 : f32 = u_xlat28;
  u_xlat28 = max(x_1523, 1.17549435e-37f);
  let x_1526 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1526);
  let x_1528 : f32 = u_xlat28;
  let x_1530 : vec4<f32> = u_xlat4;
  let x_1532 : vec3<f32> = (vec3<f32>(x_1528, x_1528, x_1528) * vec3<f32>(x_1530.x, x_1530.z, x_1530.w));
  let x_1533 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1532.x, x_1533.y, x_1532.y, x_1532.z);
  let x_1535 : vec4<f32> = u_xlat1;
  let x_1537 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1535.x, x_1535.y, x_1535.z), vec3<f32>(x_1537.x, x_1537.z, x_1537.w));
  let x_1540 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1540, 0.0f, 1.0f);
  let x_1543 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1545 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1543.x, x_1543.y, x_1543.z), vec3<f32>(x_1545.x, x_1545.z, x_1545.w));
  let x_1550 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1550, 0.0f, 1.0f);
  let x_1553 : f32 = u_xlat28;
  let x_1554 : f32 = u_xlat28;
  u_xlat28 = (x_1553 * x_1554);
  let x_1556 : f32 = u_xlat28;
  let x_1558 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1556 * x_1558) + 1.000010014f);
  let x_1563 : f32 = u_xlat2.x;
  let x_1565 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1563 * x_1565);
  let x_1568 : f32 = u_xlat28;
  let x_1569 : f32 = u_xlat28;
  u_xlat28 = (x_1568 * x_1569);
  let x_1572 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1572, 0.100000001f);
  let x_1576 : f32 = u_xlat28;
  let x_1578 : f32 = u_xlat2.x;
  u_xlat28 = (x_1576 * x_1578);
  let x_1580 : f32 = u_xlat45;
  let x_1581 : f32 = u_xlat28;
  u_xlat28 = (x_1580 * x_1581);
  let x_1583 : f32 = u_xlat43;
  let x_1584 : f32 = u_xlat28;
  u_xlat28 = (x_1583 / x_1584);
  let x_1586 : vec4<f32> = u_xlat5;
  let x_1588 : f32 = u_xlat28;
  let x_1591 : vec4<f32> = u_xlat6;
  let x_1593 : vec3<f32> = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.z) * vec3<f32>(x_1588, x_1588, x_1588)) + vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1593.x, x_1594.y, x_1593.y, x_1593.z);
  let x_1596 : vec4<f32> = u_xlat3;
  let x_1598 : vec4<f32> = u_xlat4;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) * vec3<f32>(x_1598.x, x_1598.z, x_1598.w));
  let x_1601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1604 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1606 : f32 = x_1401.unity_LightData.y;
  u_xlat28 = min(x_1604, x_1606);
  let x_1609 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1609));
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1621 : u32 = u_xlatu_loop_1;
    let x_1622 : u32 = u_xlatu28;
    if ((x_1621 < x_1622)) {
    } else {
      break;
    }
    let x_1625 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1625 >> 2u);
    let x_1628 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1628 & 3u));
    let x_1632 : u32 = u_xlatu47;
    let x_1635 : vec4<f32> = x_1401.unity_LightIndices[bitcast<i32>(x_1632)];
    let x_1645 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1650 : vec4<u32> = indexable[x_1645];
    u_xlat47 = dot(x_1635, bitcast<vec4<f32>>(x_1650));
    let x_1654 : f32 = u_xlat47;
    u_xlati47 = i32(x_1654);
    let x_1656 : vec3<f32> = vs_TEXCOORD7;
    let x_1668 : i32 = u_xlati47;
    let x_1670 : vec4<f32> = x_1667.x_AdditionalLightsPosition[x_1668];
    let x_1673 : i32 = u_xlati47;
    let x_1675 : vec4<f32> = x_1667.x_AdditionalLightsPosition[x_1673];
    let x_1677 : vec3<f32> = ((-(x_1656) * vec3<f32>(x_1670.w, x_1670.w, x_1670.w)) + vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
    let x_1678 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
    let x_1681 : vec4<f32> = u_xlat8;
    let x_1683 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : f32 = u_xlat48;
    u_xlat48 = max(x_1686, 6.10351562e-05f);
    let x_1689 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1689);
    let x_1691 : f32 = u_xlat49;
    let x_1693 : vec4<f32> = u_xlat8;
    let x_1695 : vec3<f32> = (vec3<f32>(x_1691, x_1691, x_1691) * vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
    let x_1696 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
    let x_1699 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1699);
    let x_1701 : f32 = u_xlat48;
    let x_1702 : i32 = u_xlati47;
    let x_1704 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1702].x;
    u_xlat48 = (x_1701 * x_1704);
    let x_1706 : f32 = u_xlat48;
    let x_1708 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1706) * x_1708) + 1.0f);
    let x_1711 : f32 = u_xlat48;
    u_xlat48 = max(x_1711, 0.0f);
    let x_1713 : f32 = u_xlat48;
    let x_1714 : f32 = u_xlat48;
    u_xlat48 = (x_1713 * x_1714);
    let x_1716 : f32 = u_xlat48;
    let x_1717 : f32 = u_xlat50;
    u_xlat48 = (x_1716 * x_1717);
    let x_1719 : i32 = u_xlati47;
    let x_1721 : vec4<f32> = x_1667.x_AdditionalLightsSpotDir[x_1719];
    let x_1723 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1721.x, x_1721.y, x_1721.z), vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
    let x_1726 : f32 = u_xlat50;
    let x_1727 : i32 = u_xlati47;
    let x_1729 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1727].z;
    let x_1731 : i32 = u_xlati47;
    let x_1733 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1731].w;
    u_xlat50 = ((x_1726 * x_1729) + x_1733);
    let x_1735 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1735, 0.0f, 1.0f);
    let x_1737 : f32 = u_xlat50;
    let x_1738 : f32 = u_xlat50;
    u_xlat50 = (x_1737 * x_1738);
    let x_1740 : f32 = u_xlat48;
    let x_1741 : f32 = u_xlat50;
    u_xlat48 = (x_1740 * x_1741);
    let x_1743 : f32 = u_xlat18;
    let x_1745 : i32 = u_xlati47;
    let x_1747 : vec4<f32> = x_1667.x_AdditionalLightsColor[x_1745];
    let x_1749 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
    let x_1750 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
    let x_1752 : vec4<f32> = u_xlat1;
    let x_1754 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1752.x, x_1752.y, x_1752.z), vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
    let x_1757 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1757, 0.0f, 1.0f);
    let x_1759 : f32 = u_xlat47;
    let x_1760 : f32 = u_xlat48;
    u_xlat47 = (x_1759 * x_1760);
    let x_1762 : f32 = u_xlat47;
    let x_1764 : vec4<f32> = u_xlat10;
    let x_1766 : vec3<f32> = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
    let x_1767 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
    let x_1769 : vec4<f32> = u_xlat8;
    let x_1771 : f32 = u_xlat49;
    let x_1774 : vec4<f32> = u_xlat7;
    let x_1776 : vec3<f32> = ((vec3<f32>(x_1769.x, x_1769.y, x_1769.z) * vec3<f32>(x_1771, x_1771, x_1771)) + vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
    let x_1779 : vec4<f32> = u_xlat8;
    let x_1781 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
    let x_1784 : f32 = u_xlat47;
    u_xlat47 = max(x_1784, 1.17549435e-37f);
    let x_1786 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1786);
    let x_1788 : f32 = u_xlat47;
    let x_1790 : vec4<f32> = u_xlat8;
    let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : vec4<f32> = u_xlat1;
    let x_1797 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1795.x, x_1795.y, x_1795.z), vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
    let x_1800 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1800, 0.0f, 1.0f);
    let x_1802 : vec4<f32> = u_xlat9;
    let x_1804 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1802.x, x_1802.y, x_1802.z), vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
    let x_1807 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1807, 0.0f, 1.0f);
    let x_1809 : f32 = u_xlat47;
    let x_1810 : f32 = u_xlat47;
    u_xlat47 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat47;
    let x_1814 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1812 * x_1814) + 1.000010014f);
    let x_1817 : f32 = u_xlat48;
    let x_1818 : f32 = u_xlat48;
    u_xlat48 = (x_1817 * x_1818);
    let x_1820 : f32 = u_xlat47;
    let x_1821 : f32 = u_xlat47;
    u_xlat47 = (x_1820 * x_1821);
    let x_1823 : f32 = u_xlat48;
    u_xlat48 = max(x_1823, 0.100000001f);
    let x_1825 : f32 = u_xlat47;
    let x_1826 : f32 = u_xlat48;
    u_xlat47 = (x_1825 * x_1826);
    let x_1828 : f32 = u_xlat45;
    let x_1829 : f32 = u_xlat47;
    u_xlat47 = (x_1828 * x_1829);
    let x_1831 : f32 = u_xlat43;
    let x_1832 : f32 = u_xlat47;
    u_xlat47 = (x_1831 / x_1832);
    let x_1834 : vec4<f32> = u_xlat5;
    let x_1836 : f32 = u_xlat47;
    let x_1839 : vec4<f32> = u_xlat6;
    let x_1841 : vec3<f32> = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * vec3<f32>(x_1836, x_1836, x_1836)) + vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    let x_1844 : vec4<f32> = u_xlat8;
    let x_1846 : vec4<f32> = u_xlat10;
    let x_1849 : vec4<f32> = u_xlat4;
    let x_1851 : vec3<f32> = ((vec3<f32>(x_1844.x, x_1844.y, x_1844.z) * vec3<f32>(x_1846.x, x_1846.y, x_1846.z)) + vec3<f32>(x_1849.x, x_1849.z, x_1849.w));
    let x_1852 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1851.x, x_1852.y, x_1851.y, x_1851.z);

    continuing {
      let x_1854 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1854 + bitcast<u32>(1i));
    }
  }
  let x_1856 : vec3<f32> = u_xlat16;
  let x_1857 : f32 = u_xlat14;
  let x_1860 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_1856 * vec3<f32>(x_1857, x_1857, x_1857)) + vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec4<f32> = u_xlat4;
  let x_1865 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1863.x, x_1863.z, x_1863.w) + x_1865);
  let x_1869 : f32 = u_xlat42;
  let x_1871 : vec3<f32> = u_xlat0;
  let x_1872 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * x_1871);
  let x_1873 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
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

