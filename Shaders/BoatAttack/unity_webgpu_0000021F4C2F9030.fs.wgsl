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

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_352 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1760 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1999 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat26 : f32;
  var u_xlat68 : f32;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : bool;
  var u_xlat27 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb48 : bool;
  var x_1644 : f32;
  var u_xlat70 : f32;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati67 : i32;
  var u_xlat72 : f32;
  var u_xlatb0 : bool;
  var x_2217 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat65;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb63;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat63;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : f32 = vs_TEXCOORD1.y;
  let x_130 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_128 * x_130);
  let x_133 : f32 = x_44.unity_MatrixV[0i].z;
  let x_135 : f32 = vs_TEXCOORD1.x;
  let x_137 : f32 = u_xlat63;
  u_xlat63 = ((x_133 * x_135) + x_137);
  let x_140 : f32 = x_44.unity_MatrixV[2i].z;
  let x_142 : f32 = vs_TEXCOORD1.z;
  let x_144 : f32 = u_xlat63;
  u_xlat63 = ((x_140 * x_142) + x_144);
  let x_146 : f32 = u_xlat63;
  let x_149 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_146 + x_149);
  let x_151 : f32 = u_xlat63;
  let x_155 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_151) + -(x_155));
  let x_158 : f32 = u_xlat63;
  u_xlat63 = max(x_158, 0.0f);
  let x_160 : f32 = u_xlat63;
  let x_163 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_160 * x_163);
  let x_172 : vec2<f32> = vs_TEXCOORD8;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = x_175;
  let x_181 : vec2<f32> = vs_TEXCOORD8;
  let x_183 : f32 = x_44.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_181, x_183);
  u_xlat5 = vec3<f32>(x_184.x, x_184.y, x_184.z);
  let x_186 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(x_193, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat65;
  u_xlat65 = (x_197 + 0.5f);
  let x_200 : f32 = u_xlat65;
  let x_202 : vec3<f32> = u_xlat5;
  let x_203 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat4.w;
  u_xlat65 = max(x_207, 0.0001f);
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : f32 = u_xlat65;
  let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) / vec3<f32>(x_212, x_212, x_212));
  let x_215 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_219 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_220 : vec2<f32> = vec2<f32>(x_219.x, x_219.y);
  let x_224 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_220.x, x_220.y));
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_227 : vec3<f32> = u_xlat5;
  let x_229 : vec4<f32> = hlslcc_FragCoord;
  let x_231 : vec2<f32> = (vec2<f32>(x_227.x, x_227.y) * vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_231.x, x_231.y, x_232.z);
  let x_235 : f32 = u_xlat5.y;
  let x_238 : f32 = x_44.x_ScaleBiasRt.x;
  let x_241 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_235 * x_238) + x_241);
  let x_243 : f32 = u_xlat65;
  u_xlat5.z = (-(x_243) + 1.0f);
  let x_248 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_248) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat65;
  let x_257 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_254) + x_257);
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_260.y, x_260.z, x_260.w) * vec3<f32>(x_262, x_262, x_262));
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = x_57.x_BaseColor;
  let x_273 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_268.x, x_268.y, x_268.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = x_57.x_Metallic;
  let x_279 : f32 = x_57.x_Metallic;
  let x_281 : f32 = x_57.x_Metallic;
  let x_282 : vec3<f32> = vec3<f32>(x_277, x_279, x_281);
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_296) + 1.0f);
  let x_300 : f32 = u_xlat65;
  let x_301 : f32 = u_xlat65;
  u_xlat67 = (x_300 * x_301);
  let x_303 : f32 = u_xlat67;
  u_xlat67 = max(x_303, 0.0078125f);
  let x_307 : f32 = u_xlat67;
  let x_308 : f32 = u_xlat67;
  u_xlat26 = (x_307 * x_308);
  let x_310 : f32 = u_xlat66;
  u_xlat66 = (x_310 + 1.0f);
  let x_312 : f32 = u_xlat66;
  u_xlat66 = clamp(x_312, 0.0f, 1.0f);
  let x_315 : f32 = u_xlat67;
  u_xlat68 = ((x_315 * 4.0f) + 2.0f);
  let x_325 : vec3<f32> = u_xlat5;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_325.x, x_325.z), x_328);
  u_xlat5.x = x_329.x;
  let x_334 : f32 = u_xlat5.x;
  u_xlat47 = (x_334 + -1.0f);
  let x_339 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_340 : f32 = u_xlat47;
  u_xlat47 = ((x_339 * x_340) + 1.0f);
  let x_344 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_344, 1.0f);
  let x_354 : f32 = x_352.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_354);
  let x_356 : bool = u_xlatb6;
  if (x_356) {
    let x_360 : f32 = x_352.x_MainLightShadowParams.y;
    u_xlatb6 = (x_360 == 1.0f);
    let x_362 : bool = u_xlatb6;
    if (x_362) {
      let x_367 : vec4<f32> = vs_TEXCOORD6;
      let x_370 : vec4<f32> = x_352.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y) + x_370);
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_389 : vec3<f32> = txVec0;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat7.x = x_391;
      let x_394 : vec4<f32> = u_xlat6;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec1;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat7.y = x_406;
      let x_408 : vec4<f32> = vs_TEXCOORD6;
      let x_411 : vec4<f32> = x_352.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) + x_411);
      let x_414 : vec4<f32> = u_xlat6;
      let x_415 : vec2<f32> = vec2<f32>(x_414.x, x_414.y);
      let x_417 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_415.x, x_415.y, x_417);
      let x_424 : vec3<f32> = txVec2;
      let x_426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_424.xy, x_424.z);
      u_xlat7.z = x_426;
      let x_429 : vec4<f32> = u_xlat6;
      let x_430 : vec2<f32> = vec2<f32>(x_429.z, x_429.w);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_430.x, x_430.y, x_432);
      let x_439 : vec3<f32> = txVec3;
      let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_439.xy, x_439.z);
      u_xlat7.w = x_441;
      let x_443 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_443, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_451 : f32 = x_352.x_MainLightShadowParams.y;
      u_xlatb27 = (x_451 == 2.0f);
      let x_453 : bool = u_xlatb27;
      if (x_453) {
        let x_457 : vec4<f32> = vs_TEXCOORD6;
        let x_460 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_464 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_460.z, x_460.w)) + vec2<f32>(0.5f, 0.5f));
        let x_465 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_464.x, x_464.y, x_465.z);
        let x_467 : vec3<f32> = u_xlat27;
        let x_469 : vec2<f32> = floor(vec2<f32>(x_467.x, x_467.y));
        let x_470 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_469.x, x_469.y, x_470.z);
        let x_472 : vec4<f32> = vs_TEXCOORD6;
        let x_475 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_478 : vec3<f32> = u_xlat27;
        let x_481 : vec2<f32> = ((vec2<f32>(x_472.x, x_472.y) * vec2<f32>(x_475.z, x_475.w)) + -(vec2<f32>(x_478.x, x_478.y)));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_485 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_485.x, x_485.x, x_485.y, x_485.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_490 : vec4<f32> = u_xlat8;
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_490.x, x_490.x, x_490.z, x_490.z) * vec4<f32>(x_492.x, x_492.x, x_492.z, x_492.z));
        let x_497 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_497.y, x_497.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_502 : vec4<f32> = u_xlat9;
        let x_505 : vec4<f32> = u_xlat7;
        let x_508 : vec2<f32> = ((vec2<f32>(x_502.x, x_502.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_505.x, x_505.y)));
        let x_509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_509.w);
        let x_511 : vec4<f32> = u_xlat7;
        let x_514 : vec2<f32> = (-(vec2<f32>(x_511.x, x_511.y)) + vec2<f32>(1.0f, 1.0f));
        let x_515 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_518 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_518.x, x_518.y), vec2<f32>(0.0f, 0.0f));
        let x_522 : vec2<f32> = u_xlat51;
        let x_524 : vec2<f32> = u_xlat51;
        let x_526 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_522) * x_524) + vec2<f32>(x_526.x, x_526.y));
        let x_529 : vec4<f32> = u_xlat7;
        let x_531 : vec2<f32> = max(vec2<f32>(x_529.x, x_529.y), vec2<f32>(0.0f, 0.0f));
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat7;
        let x_537 : vec4<f32> = u_xlat7;
        let x_540 : vec4<f32> = u_xlat8;
        let x_542 : vec2<f32> = ((-(vec2<f32>(x_534.x, x_534.y)) * vec2<f32>(x_537.x, x_537.y)) + vec2<f32>(x_540.y, x_540.w));
        let x_543 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_545 + vec2<f32>(1.0f, 1.0f));
        let x_547 : vec4<f32> = u_xlat7;
        let x_549 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) + vec2<f32>(1.0f, 1.0f));
        let x_550 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_553 : vec4<f32> = u_xlat8;
        let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_558 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_561 : vec4<f32> = u_xlat9;
        let x_563 : vec2<f32> = (vec2<f32>(x_561.x, x_561.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_564 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_566 : vec2<f32> = u_xlat51;
        let x_567 : vec2<f32> = (x_566 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_568 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_574 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat8;
        let x_578 : vec2<f32> = (vec2<f32>(x_576.y, x_576.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_582 : f32 = u_xlat9.x;
        u_xlat10.z = x_582;
        let x_585 : f32 = u_xlat7.x;
        u_xlat10.w = x_585;
        let x_588 : f32 = u_xlat12.x;
        u_xlat11.z = x_588;
        let x_591 : f32 = u_xlat49.x;
        u_xlat11.w = x_591;
        let x_593 : vec4<f32> = u_xlat10;
        let x_595 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_593.z, x_593.w, x_593.x, x_593.z) + vec4<f32>(x_595.z, x_595.w, x_595.x, x_595.z));
        let x_599 : f32 = u_xlat10.y;
        u_xlat9.z = x_599;
        let x_602 : f32 = u_xlat7.y;
        u_xlat9.w = x_602;
        let x_605 : f32 = u_xlat11.y;
        u_xlat12.z = x_605;
        let x_608 : f32 = u_xlat49.y;
        u_xlat12.w = x_608;
        let x_610 : vec4<f32> = u_xlat9;
        let x_612 : vec4<f32> = u_xlat12;
        let x_614 : vec3<f32> = (vec3<f32>(x_610.z, x_610.y, x_610.w) + vec3<f32>(x_612.z, x_612.y, x_612.w));
        let x_615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat11;
        let x_619 : vec4<f32> = u_xlat8;
        let x_621 : vec3<f32> = (vec3<f32>(x_617.x, x_617.z, x_617.w) / vec3<f32>(x_619.z, x_619.w, x_619.y));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat9;
        let x_629 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat12;
        let x_634 : vec4<f32> = u_xlat7;
        let x_636 : vec3<f32> = (vec3<f32>(x_632.z, x_632.y, x_632.w) / vec3<f32>(x_634.x, x_634.y, x_634.z));
        let x_637 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat10;
        let x_641 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_647 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_649 : vec3<f32> = (vec3<f32>(x_644.y, x_644.x, x_644.z) * vec3<f32>(x_647.x, x_647.x, x_647.x));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat10;
        let x_655 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_657 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_655.y, x_655.y, x_655.y));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
        let x_661 : f32 = u_xlat10.x;
        u_xlat9.w = x_661;
        let x_663 : vec3<f32> = u_xlat27;
        let x_666 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.y, x_669.w, x_669.x, x_669.w));
        let x_672 : vec3<f32> = u_xlat27;
        let x_675 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat9;
        let x_680 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_675.x, x_675.y)) + vec2<f32>(x_678.z, x_678.w));
        let x_681 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : f32 = u_xlat9.y;
        u_xlat10.w = x_684;
        let x_686 : vec4<f32> = u_xlat10;
        let x_687 : vec2<f32> = vec2<f32>(x_686.y, x_686.z);
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_688.x, x_687.x, x_688.z, x_687.y);
        let x_691 : vec3<f32> = u_xlat27;
        let x_694 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_697 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y) * vec4<f32>(x_694.x, x_694.y, x_694.x, x_694.y)) + vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.y));
        let x_700 : vec3<f32> = u_xlat27;
        let x_703 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_706 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_700.x, x_700.y, x_700.x, x_700.y) * vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.y)) + vec4<f32>(x_706.w, x_706.y, x_706.w, x_706.z));
        let x_709 : vec3<f32> = u_xlat27;
        let x_712 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y) * vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y)) + vec4<f32>(x_715.x, x_715.w, x_715.z, x_715.w));
        let x_719 : vec4<f32> = u_xlat7;
        let x_721 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_719.x, x_719.x, x_719.x, x_719.y) * vec4<f32>(x_721.z, x_721.w, x_721.y, x_721.z));
        let x_725 : vec4<f32> = u_xlat7;
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_725.y, x_725.y, x_725.z, x_725.z) * x_727);
        let x_730 : f32 = u_xlat7.z;
        let x_732 : f32 = u_xlat8.y;
        u_xlat27.x = (x_730 * x_732);
        let x_736 : vec4<f32> = u_xlat11;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_747 : vec3<f32> = txVec4;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_747.xy, x_747.z);
        u_xlat48 = x_749;
        let x_751 : vec4<f32> = u_xlat11;
        let x_752 : vec2<f32> = vec2<f32>(x_751.z, x_751.w);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_762 : vec3<f32> = txVec5;
        let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_762.xy, x_762.z);
        u_xlat69 = x_764;
        let x_765 : f32 = u_xlat69;
        let x_767 : f32 = u_xlat14.y;
        u_xlat69 = (x_765 * x_767);
        let x_770 : f32 = u_xlat14.x;
        let x_771 : f32 = u_xlat48;
        let x_773 : f32 = u_xlat69;
        u_xlat48 = ((x_770 * x_771) + x_773);
        let x_776 : vec4<f32> = u_xlat12;
        let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
        let x_779 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec6;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_786.xy, x_786.z);
        u_xlat69 = x_788;
        let x_790 : f32 = u_xlat14.z;
        let x_791 : f32 = u_xlat69;
        let x_793 : f32 = u_xlat48;
        u_xlat48 = ((x_790 * x_791) + x_793);
        let x_796 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = vec2<f32>(x_796.x, x_796.y);
        let x_799 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_797.x, x_797.y, x_799);
        let x_806 : vec3<f32> = txVec7;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_806.xy, x_806.z);
        u_xlat69 = x_808;
        let x_810 : f32 = u_xlat14.w;
        let x_811 : f32 = u_xlat69;
        let x_813 : f32 = u_xlat48;
        u_xlat48 = ((x_810 * x_811) + x_813);
        let x_816 : vec4<f32> = u_xlat13;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec8;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_826.xy, x_826.z);
        u_xlat69 = x_828;
        let x_830 : f32 = u_xlat15.x;
        let x_831 : f32 = u_xlat69;
        let x_833 : f32 = u_xlat48;
        u_xlat48 = ((x_830 * x_831) + x_833);
        let x_836 : vec4<f32> = u_xlat13;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_846 : vec3<f32> = txVec9;
        let x_848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_846.xy, x_846.z);
        u_xlat69 = x_848;
        let x_850 : f32 = u_xlat15.y;
        let x_851 : f32 = u_xlat69;
        let x_853 : f32 = u_xlat48;
        u_xlat48 = ((x_850 * x_851) + x_853);
        let x_856 : vec4<f32> = u_xlat10;
        let x_857 : vec2<f32> = vec2<f32>(x_856.z, x_856.w);
        let x_859 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec10;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
        u_xlat69 = x_868;
        let x_870 : f32 = u_xlat15.z;
        let x_871 : f32 = u_xlat69;
        let x_873 : f32 = u_xlat48;
        u_xlat48 = ((x_870 * x_871) + x_873);
        let x_876 : vec4<f32> = u_xlat9;
        let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
        let x_879 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec11;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
        u_xlat69 = x_888;
        let x_890 : f32 = u_xlat15.w;
        let x_891 : f32 = u_xlat69;
        let x_893 : f32 = u_xlat48;
        u_xlat48 = ((x_890 * x_891) + x_893);
        let x_896 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
        let x_899 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_897.x, x_897.y, x_899);
        let x_906 : vec3<f32> = txVec12;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_906.xy, x_906.z);
        u_xlat69 = x_908;
        let x_910 : f32 = u_xlat27.x;
        let x_911 : f32 = u_xlat69;
        let x_913 : f32 = u_xlat48;
        u_xlat6.x = ((x_910 * x_911) + x_913);
      } else {
        let x_917 : vec4<f32> = vs_TEXCOORD6;
        let x_920 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_923 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.y) * vec2<f32>(x_920.z, x_920.w)) + vec2<f32>(0.5f, 0.5f));
        let x_924 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_923.x, x_923.y, x_924.z);
        let x_926 : vec3<f32> = u_xlat27;
        let x_928 : vec2<f32> = floor(vec2<f32>(x_926.x, x_926.y));
        let x_929 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_928.x, x_928.y, x_929.z);
        let x_931 : vec4<f32> = vs_TEXCOORD6;
        let x_934 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_937 : vec3<f32> = u_xlat27;
        let x_940 : vec2<f32> = ((vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_934.z, x_934.w)) + -(vec2<f32>(x_937.x, x_937.y)));
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_943.x, x_943.x, x_943.y, x_943.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_946 : vec4<f32> = u_xlat8;
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_946.x, x_946.x, x_946.z, x_946.z) * vec4<f32>(x_948.x, x_948.x, x_948.z, x_948.z));
        let x_951 : vec4<f32> = u_xlat9;
        let x_955 : vec2<f32> = (vec2<f32>(x_951.y, x_951.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_958 : vec4<f32> = u_xlat9;
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_958.x, x_958.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_961.x, x_961.y)));
        let x_965 : vec4<f32> = u_xlat7;
        let x_968 : vec2<f32> = (-(vec2<f32>(x_965.x, x_965.y)) + vec2<f32>(1.0f, 1.0f));
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_968.x, x_969.y, x_968.y, x_969.w);
        let x_971 : vec4<f32> = u_xlat7;
        let x_973 : vec2<f32> = min(vec2<f32>(x_971.x, x_971.y), vec2<f32>(0.0f, 0.0f));
        let x_974 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat9;
        let x_979 : vec4<f32> = u_xlat9;
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = ((-(vec2<f32>(x_976.x, x_976.y)) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.x, x_982.z));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_987 : vec4<f32> = u_xlat7;
        let x_989 : vec2<f32> = max(vec2<f32>(x_987.x, x_987.y), vec2<f32>(0.0f, 0.0f));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_995 : vec4<f32> = u_xlat9;
        let x_998 : vec4<f32> = u_xlat8;
        let x_1000 : vec2<f32> = ((-(vec2<f32>(x_992.x, x_992.y)) * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_998.y, x_998.w));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1003 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1007 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1007 * 0.081632003f);
        let x_1011 : vec2<f32> = u_xlat49;
        let x_1014 : vec2<f32> = (vec2<f32>(x_1011.y, x_1011.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1017.x, x_1017.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1021 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1021 * 0.081632003f);
        let x_1025 : f32 = u_xlat11.y;
        u_xlat9.x = x_1025;
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1035 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1035.x, x_1034.x, x_1035.z, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1042.y, x_1041.y, x_1042.w);
        let x_1045 : f32 = u_xlat49.x;
        u_xlat8.y = x_1045;
        let x_1048 : f32 = u_xlat10.y;
        u_xlat8.w = x_1048;
        let x_1050 : vec4<f32> = u_xlat8;
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1050 + x_1051);
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1053.y, x_1053.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1057 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1057.x, x_1056.x, x_1057.z, x_1056.y);
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1059.y, x_1059.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1063 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1062.x, x_1063.y, x_1062.y, x_1063.w);
        let x_1066 : f32 = u_xlat49.y;
        u_xlat10.y = x_1066;
        let x_1068 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1068 + x_1069);
        let x_1071 : vec4<f32> = u_xlat8;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1071 / x_1072);
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1074 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1080 : vec4<f32> = u_xlat10;
        let x_1081 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1080 / x_1081);
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1083 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1088 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1085.w, x_1085.x, x_1085.y, x_1085.z) * vec4<f32>(x_1088.x, x_1088.x, x_1088.x, x_1088.x));
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1094 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1091.x, x_1091.w, x_1091.y, x_1091.z) * vec4<f32>(x_1094.y, x_1094.y, x_1094.y, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1098 : vec3<f32> = vec3<f32>(x_1097.y, x_1097.z, x_1097.w);
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1098.z);
        let x_1102 : f32 = u_xlat10.x;
        u_xlat11.y = x_1102;
        let x_1104 : vec3<f32> = u_xlat27;
        let x_1107 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) * vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y)) + vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1110.y));
        let x_1113 : vec3<f32> = u_xlat27;
        let x_1116 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat11;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(x_1116.x, x_1116.y)) + vec2<f32>(x_1119.w, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1125 : f32 = u_xlat11.y;
        u_xlat8.y = x_1125;
        let x_1128 : f32 = u_xlat10.z;
        u_xlat11.y = x_1128;
        let x_1130 : vec3<f32> = u_xlat27;
        let x_1133 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1130.x, x_1130.y, x_1130.x, x_1130.y) * vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y)) + vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1136.y));
        let x_1140 : vec3<f32> = u_xlat27;
        let x_1143 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1150 : f32 = u_xlat11.y;
        u_xlat8.z = x_1150;
        let x_1152 : vec3<f32> = u_xlat27;
        let x_1155 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) * vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y)) + vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.z));
        let x_1162 : f32 = u_xlat10.w;
        u_xlat11.y = x_1162;
        let x_1165 : vec3<f32> = u_xlat27;
        let x_1168 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y) * vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y)) + vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1171.y));
        let x_1175 : vec3<f32> = u_xlat27;
        let x_1178 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.w, x_1181.y));
        let x_1184 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1183.x, x_1183.y, x_1184.z);
        let x_1187 : f32 = u_xlat11.y;
        u_xlat8.w = x_1187;
        let x_1190 : vec3<f32> = u_xlat27;
        let x_1193 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1196.x, x_1196.w));
        let x_1199 : vec4<f32> = u_xlat11;
        let x_1200 : vec3<f32> = vec3<f32>(x_1199.x, x_1199.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1200.x, x_1201.y, x_1200.y, x_1200.z);
        let x_1203 : vec3<f32> = u_xlat27;
        let x_1206 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y) * vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y)) + vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1209.y));
        let x_1213 : vec3<f32> = u_xlat27;
        let x_1216 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.w, x_1219.y));
        let x_1223 : f32 = u_xlat8.x;
        u_xlat10.x = x_1223;
        let x_1225 : vec3<f32> = u_xlat27;
        let x_1228 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat10;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1225.x, x_1225.y) * vec2<f32>(x_1228.x, x_1228.y)) + vec2<f32>(x_1231.x, x_1231.y));
        let x_1234 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1233.x, x_1233.y, x_1234.z);
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1237.x, x_1237.x, x_1237.x, x_1237.x) * x_1239);
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1242.y, x_1242.y, x_1242.y, x_1242.y) * x_1244);
        let x_1247 : vec4<f32> = u_xlat7;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1247.z, x_1247.z, x_1247.z, x_1247.z) * x_1249);
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1251.w, x_1251.w, x_1251.w, x_1251.w) * x_1253);
        let x_1256 : vec4<f32> = u_xlat12;
        let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
        let x_1259 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec13;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1266.xy, x_1266.z);
        u_xlat69 = x_1268;
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.z, x_1270.w);
        let x_1273 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec14;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat8.x = x_1282;
        let x_1285 : f32 = u_xlat8.x;
        let x_1287 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1285 * x_1287);
        let x_1291 : f32 = u_xlat18.x;
        let x_1292 : f32 = u_xlat69;
        let x_1295 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1291 * x_1292) + x_1295);
        let x_1298 : vec4<f32> = u_xlat13;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec15;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1308.xy, x_1308.z);
        u_xlat8.x = x_1310;
        let x_1313 : f32 = u_xlat18.z;
        let x_1315 : f32 = u_xlat8.x;
        let x_1317 : f32 = u_xlat69;
        u_xlat69 = ((x_1313 * x_1315) + x_1317);
        let x_1320 : vec4<f32> = u_xlat15;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec16;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat8.x = x_1332;
        let x_1335 : f32 = u_xlat18.w;
        let x_1337 : f32 = u_xlat8.x;
        let x_1339 : f32 = u_xlat69;
        u_xlat69 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat14;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.x, x_1342.y);
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec17;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat8.x = x_1354;
        let x_1357 : f32 = u_xlat19.x;
        let x_1359 : f32 = u_xlat8.x;
        let x_1361 : f32 = u_xlat69;
        u_xlat69 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat14;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec18;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1374.xy, x_1374.z);
        u_xlat8.x = x_1376;
        let x_1379 : f32 = u_xlat19.y;
        let x_1381 : f32 = u_xlat8.x;
        let x_1383 : f32 = u_xlat69;
        u_xlat69 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec2<f32> = u_xlat55;
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec19;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat8.x = x_1397;
        let x_1400 : f32 = u_xlat19.z;
        let x_1402 : f32 = u_xlat8.x;
        let x_1404 : f32 = u_xlat69;
        u_xlat69 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat15;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec20;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat8.x = x_1419;
        let x_1422 : f32 = u_xlat19.w;
        let x_1424 : f32 = u_xlat8.x;
        let x_1426 : f32 = u_xlat69;
        u_xlat69 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat16;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec21;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat8.x = x_1441;
        let x_1444 : f32 = u_xlat20.x;
        let x_1446 : f32 = u_xlat8.x;
        let x_1448 : f32 = u_xlat69;
        u_xlat69 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat16;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec22;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat8.x = x_1463;
        let x_1466 : f32 = u_xlat20.y;
        let x_1468 : f32 = u_xlat8.x;
        let x_1470 : f32 = u_xlat69;
        u_xlat69 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec3<f32> = u_xlat29;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec23;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat8.x = x_1485;
        let x_1488 : f32 = u_xlat20.z;
        let x_1490 : f32 = u_xlat8.x;
        let x_1492 : f32 = u_xlat69;
        u_xlat69 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec2<f32> = u_xlat17;
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec24;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat8.x = x_1506;
        let x_1509 : f32 = u_xlat20.w;
        let x_1511 : f32 = u_xlat8.x;
        let x_1513 : f32 = u_xlat69;
        u_xlat69 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat11;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec25;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat8.x = x_1528;
        let x_1531 : f32 = u_xlat7.x;
        let x_1533 : f32 = u_xlat8.x;
        let x_1535 : f32 = u_xlat69;
        u_xlat69 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat11;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec26;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat7.x = x_1550;
        let x_1553 : f32 = u_xlat7.y;
        let x_1555 : f32 = u_xlat7.x;
        let x_1557 : f32 = u_xlat69;
        u_xlat69 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec2<f32> = u_xlat52;
        let x_1562 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec27;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat7.x = x_1571;
        let x_1574 : f32 = u_xlat7.z;
        let x_1576 : f32 = u_xlat7.x;
        let x_1578 : f32 = u_xlat69;
        u_xlat69 = ((x_1574 * x_1576) + x_1578);
        let x_1581 : vec3<f32> = u_xlat27;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec28;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
        u_xlat27.x = x_1593;
        let x_1596 : f32 = u_xlat7.w;
        let x_1598 : f32 = u_xlat27.x;
        let x_1600 : f32 = u_xlat69;
        u_xlat6.x = ((x_1596 * x_1598) + x_1600);
      }
    }
  } else {
    let x_1605 : vec4<f32> = vs_TEXCOORD6;
    let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
    let x_1608 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
    let x_1615 : vec3<f32> = txVec29;
    let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
    u_xlat6.x = x_1617;
  }
  let x_1620 : f32 = x_352.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1620) + 1.0f);
  let x_1625 : f32 = u_xlat6.x;
  let x_1627 : f32 = x_352.x_MainLightShadowParams.x;
  let x_1630 : f32 = u_xlat27.x;
  u_xlat6.x = ((x_1625 * x_1627) + x_1630);
  let x_1634 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_1634);
  let x_1638 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1638 >= 1.0f);
  let x_1640 : bool = u_xlatb48;
  let x_1641 : bool = u_xlatb27;
  u_xlatb27 = (x_1640 | x_1641);
  let x_1643 : bool = u_xlatb27;
  if (x_1643) {
    x_1644 = 1.0f;
  } else {
    let x_1649 : f32 = u_xlat6.x;
    x_1644 = x_1649;
  }
  let x_1650 : f32 = x_1644;
  u_xlat6.x = x_1650;
  let x_1652 : vec3<f32> = vs_TEXCOORD1;
  let x_1654 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1652 + -(x_1654));
  let x_1657 : vec3<f32> = u_xlat27;
  let x_1658 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1657, x_1658);
  let x_1662 : f32 = u_xlat27.x;
  let x_1664 : f32 = x_352.x_MainLightShadowParams.z;
  let x_1667 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1662 * x_1664) + x_1667);
  let x_1671 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1671, 0.0f, 1.0f);
  let x_1675 : f32 = u_xlat6.x;
  u_xlat48 = (-(x_1675) + 1.0f);
  let x_1679 : f32 = u_xlat27.x;
  let x_1680 : f32 = u_xlat48;
  let x_1683 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1679 * x_1680) + x_1683);
  let x_1686 : f32 = u_xlat47;
  let x_1689 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1686, x_1686, x_1686) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
  let x_1692 : vec3<f32> = u_xlat2;
  let x_1694 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1692), x_1694);
  let x_1698 : f32 = u_xlat7.x;
  let x_1700 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1698 + x_1700);
  let x_1703 : vec3<f32> = u_xlat3;
  let x_1704 : vec4<f32> = u_xlat7;
  let x_1708 : vec3<f32> = u_xlat2;
  let x_1710 : vec3<f32> = ((x_1703 * -(vec3<f32>(x_1704.x, x_1704.x, x_1704.x))) + -(x_1708));
  let x_1711 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
  let x_1714 : vec3<f32> = u_xlat3;
  let x_1715 : vec3<f32> = u_xlat2;
  u_xlat70 = dot(x_1714, x_1715);
  let x_1717 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1717, 0.0f, 1.0f);
  let x_1719 : f32 = u_xlat70;
  u_xlat70 = (-(x_1719) + 1.0f);
  let x_1722 : f32 = u_xlat70;
  let x_1723 : f32 = u_xlat70;
  u_xlat70 = (x_1722 * x_1723);
  let x_1725 : f32 = u_xlat70;
  let x_1726 : f32 = u_xlat70;
  u_xlat70 = (x_1725 * x_1726);
  let x_1728 : f32 = u_xlat65;
  u_xlat8.x = ((-(x_1728) * 0.699999988f) + 1.700000048f);
  let x_1735 : f32 = u_xlat65;
  let x_1737 : f32 = u_xlat8.x;
  u_xlat65 = (x_1735 * x_1737);
  let x_1739 : f32 = u_xlat65;
  u_xlat65 = (x_1739 * 6.0f);
  let x_1750 : vec4<f32> = u_xlat7;
  let x_1752 : f32 = u_xlat65;
  let x_1753 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1750.x, x_1750.y, x_1750.z), x_1752);
  u_xlat8 = x_1753;
  let x_1755 : f32 = u_xlat8.w;
  u_xlat65 = (x_1755 + -1.0f);
  let x_1762 : f32 = x_1760.unity_SpecCube0_HDR.w;
  let x_1763 : f32 = u_xlat65;
  u_xlat65 = ((x_1762 * x_1763) + 1.0f);
  let x_1766 : f32 = u_xlat65;
  u_xlat65 = max(x_1766, 0.0f);
  let x_1768 : f32 = u_xlat65;
  u_xlat65 = log2(x_1768);
  let x_1770 : f32 = u_xlat65;
  let x_1772 : f32 = x_1760.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1770 * x_1772);
  let x_1774 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1774);
  let x_1776 : f32 = u_xlat65;
  let x_1778 : f32 = x_1760.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1776 * x_1778);
  let x_1780 : vec4<f32> = u_xlat8;
  let x_1782 : f32 = u_xlat65;
  let x_1784 : vec3<f32> = (vec3<f32>(x_1780.x, x_1780.y, x_1780.z) * vec3<f32>(x_1782, x_1782, x_1782));
  let x_1785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1787 : f32 = u_xlat67;
  let x_1789 : f32 = u_xlat67;
  let x_1793 : vec2<f32> = ((vec2<f32>(x_1787, x_1787) * vec2<f32>(x_1789, x_1789)) + vec2<f32>(-1.0f, 1.0f));
  let x_1794 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
  let x_1797 : f32 = u_xlat8.y;
  u_xlat65 = (1.0f / x_1797);
  let x_1799 : vec4<f32> = u_xlat0;
  let x_1802 : f32 = u_xlat66;
  u_xlat29 = (-(vec3<f32>(x_1799.x, x_1799.y, x_1799.z)) + vec3<f32>(x_1802, x_1802, x_1802));
  let x_1805 : f32 = u_xlat70;
  let x_1807 : vec3<f32> = u_xlat29;
  let x_1809 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_1805, x_1805, x_1805) * x_1807) + vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : f32 = u_xlat65;
  let x_1814 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1812, x_1812, x_1812) * x_1814);
  let x_1816 : vec4<f32> = u_xlat7;
  let x_1818 : vec3<f32> = u_xlat29;
  let x_1819 : vec3<f32> = (vec3<f32>(x_1816.x, x_1816.y, x_1816.z) * x_1818);
  let x_1820 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
  let x_1822 : vec4<f32> = u_xlat4;
  let x_1824 : vec3<f32> = u_xlat22;
  let x_1826 : vec4<f32> = u_xlat7;
  let x_1828 : vec3<f32> = ((vec3<f32>(x_1822.x, x_1822.y, x_1822.z) * x_1824) + vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
  let x_1829 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1832 : f32 = u_xlat6.x;
  let x_1835 : f32 = x_1760.unity_LightData.z;
  u_xlat65 = (x_1832 * x_1835);
  let x_1837 : vec3<f32> = u_xlat3;
  let x_1839 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1837, vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
  let x_1842 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1842, 0.0f, 1.0f);
  let x_1844 : f32 = u_xlat65;
  let x_1845 : f32 = u_xlat66;
  u_xlat65 = (x_1844 * x_1845);
  let x_1847 : f32 = u_xlat65;
  let x_1849 : vec3<f32> = u_xlat27;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1847, x_1847, x_1847) * x_1849);
  let x_1851 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1853 : vec3<f32> = u_xlat2;
  let x_1855 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1857 : vec3<f32> = (x_1853 + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  let x_1860 : vec4<f32> = u_xlat7;
  let x_1862 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_1860.x, x_1860.y, x_1860.z), vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : f32 = u_xlat65;
  u_xlat65 = max(x_1865, 1.17549435e-37f);
  let x_1868 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_1868);
  let x_1870 : f32 = u_xlat65;
  let x_1872 : vec4<f32> = u_xlat7;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1870, x_1870, x_1870) * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : vec3<f32> = u_xlat3;
  let x_1878 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(x_1877, vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1881, 0.0f, 1.0f);
  let x_1884 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1886 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1889, 0.0f, 1.0f);
  let x_1891 : f32 = u_xlat65;
  let x_1892 : f32 = u_xlat65;
  u_xlat65 = (x_1891 * x_1892);
  let x_1894 : f32 = u_xlat65;
  let x_1896 : f32 = u_xlat8.x;
  u_xlat65 = ((x_1894 * x_1896) + 1.000010014f);
  let x_1900 : f32 = u_xlat66;
  let x_1901 : f32 = u_xlat66;
  u_xlat66 = (x_1900 * x_1901);
  let x_1903 : f32 = u_xlat65;
  let x_1904 : f32 = u_xlat65;
  u_xlat65 = (x_1903 * x_1904);
  let x_1906 : f32 = u_xlat66;
  u_xlat66 = max(x_1906, 0.100000001f);
  let x_1909 : f32 = u_xlat65;
  let x_1910 : f32 = u_xlat66;
  u_xlat65 = (x_1909 * x_1910);
  let x_1912 : f32 = u_xlat68;
  let x_1913 : f32 = u_xlat65;
  u_xlat65 = (x_1912 * x_1913);
  let x_1915 : f32 = u_xlat26;
  let x_1916 : f32 = u_xlat65;
  u_xlat65 = (x_1915 / x_1916);
  let x_1918 : vec4<f32> = u_xlat0;
  let x_1920 : f32 = u_xlat65;
  let x_1923 : vec3<f32> = u_xlat22;
  let x_1924 : vec3<f32> = ((vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * vec3<f32>(x_1920, x_1920, x_1920)) + x_1923);
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat6;
  let x_1929 : vec4<f32> = u_xlat7;
  let x_1931 : vec3<f32> = (vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1932 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
  let x_1935 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1937 : f32 = x_1760.unity_LightData.y;
  u_xlat65 = min(x_1935, x_1937);
  let x_1941 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_1941));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1953 : u32 = u_xlatu_loop_1;
    let x_1954 : u32 = u_xlatu65;
    if ((x_1953 < x_1954)) {
    } else {
      break;
    }
    let x_1957 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_1957 >> 2u);
    let x_1961 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1961 & 3u));
    let x_1964 : u32 = u_xlatu67;
    let x_1967 : vec4<f32> = x_1760.unity_LightIndices[bitcast<i32>(x_1964)];
    let x_1977 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1982 : vec4<u32> = indexable[x_1977];
    u_xlat67 = dot(x_1967, bitcast<vec4<f32>>(x_1982));
    let x_1986 : f32 = u_xlat67;
    u_xlati67 = i32(x_1986);
    let x_1988 : vec3<f32> = vs_TEXCOORD1;
    let x_2000 : i32 = u_xlati67;
    let x_2002 : vec4<f32> = x_1999.x_AdditionalLightsPosition[x_2000];
    let x_2005 : i32 = u_xlati67;
    let x_2007 : vec4<f32> = x_1999.x_AdditionalLightsPosition[x_2005];
    u_xlat29 = ((-(x_1988) * vec3<f32>(x_2002.w, x_2002.w, x_2002.w)) + vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
    let x_2010 : vec3<f32> = u_xlat29;
    let x_2011 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_2010, x_2011);
    let x_2013 : f32 = u_xlat69;
    u_xlat69 = max(x_2013, 6.10351562e-05f);
    let x_2016 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2016);
    let x_2018 : f32 = u_xlat70;
    let x_2020 : vec3<f32> = u_xlat29;
    let x_2021 : vec3<f32> = (vec3<f32>(x_2018, x_2018, x_2018) * x_2020);
    let x_2022 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
    let x_2025 : f32 = u_xlat69;
    u_xlat72 = (1.0f / x_2025);
    let x_2027 : f32 = u_xlat69;
    let x_2028 : i32 = u_xlati67;
    let x_2030 : f32 = x_1999.x_AdditionalLightsAttenuation[x_2028].x;
    u_xlat69 = (x_2027 * x_2030);
    let x_2032 : f32 = u_xlat69;
    let x_2034 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2032) * x_2034) + 1.0f);
    let x_2037 : f32 = u_xlat69;
    u_xlat69 = max(x_2037, 0.0f);
    let x_2039 : f32 = u_xlat69;
    let x_2040 : f32 = u_xlat69;
    u_xlat69 = (x_2039 * x_2040);
    let x_2042 : f32 = u_xlat69;
    let x_2043 : f32 = u_xlat72;
    u_xlat69 = (x_2042 * x_2043);
    let x_2045 : i32 = u_xlati67;
    let x_2047 : vec4<f32> = x_1999.x_AdditionalLightsSpotDir[x_2045];
    let x_2049 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2047.x, x_2047.y, x_2047.z), vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
    let x_2052 : f32 = u_xlat72;
    let x_2053 : i32 = u_xlati67;
    let x_2055 : f32 = x_1999.x_AdditionalLightsAttenuation[x_2053].z;
    let x_2057 : i32 = u_xlati67;
    let x_2059 : f32 = x_1999.x_AdditionalLightsAttenuation[x_2057].w;
    u_xlat72 = ((x_2052 * x_2055) + x_2059);
    let x_2061 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2061, 0.0f, 1.0f);
    let x_2063 : f32 = u_xlat72;
    let x_2064 : f32 = u_xlat72;
    u_xlat72 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat69;
    let x_2067 : f32 = u_xlat72;
    u_xlat69 = (x_2066 * x_2067);
    let x_2069 : f32 = u_xlat47;
    let x_2071 : i32 = u_xlati67;
    let x_2073 : vec4<f32> = x_1999.x_AdditionalLightsColor[x_2071];
    let x_2075 : vec3<f32> = (vec3<f32>(x_2069, x_2069, x_2069) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
    let x_2076 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    let x_2078 : vec3<f32> = u_xlat3;
    let x_2079 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2078, vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2082, 0.0f, 1.0f);
    let x_2084 : f32 = u_xlat67;
    let x_2085 : f32 = u_xlat69;
    u_xlat67 = (x_2084 * x_2085);
    let x_2087 : f32 = u_xlat67;
    let x_2089 : vec4<f32> = u_xlat10;
    let x_2091 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2094 : vec3<f32> = u_xlat29;
    let x_2095 : f32 = u_xlat70;
    let x_2098 : vec3<f32> = u_xlat2;
    u_xlat29 = ((x_2094 * vec3<f32>(x_2095, x_2095, x_2095)) + x_2098);
    let x_2100 : vec3<f32> = u_xlat29;
    let x_2101 : vec3<f32> = u_xlat29;
    u_xlat67 = dot(x_2100, x_2101);
    let x_2103 : f32 = u_xlat67;
    u_xlat67 = max(x_2103, 1.17549435e-37f);
    let x_2105 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2105);
    let x_2107 : f32 = u_xlat67;
    let x_2109 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_2107, x_2107, x_2107) * x_2109);
    let x_2111 : vec3<f32> = u_xlat3;
    let x_2112 : vec3<f32> = u_xlat29;
    u_xlat67 = dot(x_2111, x_2112);
    let x_2114 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2114, 0.0f, 1.0f);
    let x_2116 : vec4<f32> = u_xlat9;
    let x_2118 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), x_2118);
    let x_2120 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2120, 0.0f, 1.0f);
    let x_2122 : f32 = u_xlat67;
    let x_2123 : f32 = u_xlat67;
    u_xlat67 = (x_2122 * x_2123);
    let x_2125 : f32 = u_xlat67;
    let x_2127 : f32 = u_xlat8.x;
    u_xlat67 = ((x_2125 * x_2127) + 1.000010014f);
    let x_2130 : f32 = u_xlat69;
    let x_2131 : f32 = u_xlat69;
    u_xlat69 = (x_2130 * x_2131);
    let x_2133 : f32 = u_xlat67;
    let x_2134 : f32 = u_xlat67;
    u_xlat67 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat69;
    u_xlat69 = max(x_2136, 0.100000001f);
    let x_2138 : f32 = u_xlat67;
    let x_2139 : f32 = u_xlat69;
    u_xlat67 = (x_2138 * x_2139);
    let x_2141 : f32 = u_xlat68;
    let x_2142 : f32 = u_xlat67;
    u_xlat67 = (x_2141 * x_2142);
    let x_2144 : f32 = u_xlat26;
    let x_2145 : f32 = u_xlat67;
    u_xlat67 = (x_2144 / x_2145);
    let x_2147 : vec4<f32> = u_xlat0;
    let x_2149 : f32 = u_xlat67;
    let x_2152 : vec3<f32> = u_xlat22;
    u_xlat29 = ((vec3<f32>(x_2147.x, x_2147.y, x_2147.z) * vec3<f32>(x_2149, x_2149, x_2149)) + x_2152);
    let x_2154 : vec3<f32> = u_xlat29;
    let x_2155 : vec4<f32> = u_xlat10;
    let x_2158 : vec4<f32> = u_xlat7;
    let x_2160 : vec3<f32> = ((x_2154 * vec3<f32>(x_2155.x, x_2155.y, x_2155.z)) + vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
    let x_2161 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);

    continuing {
      let x_2163 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2163 + bitcast<u32>(1i));
    }
  }
  let x_2165 : vec4<f32> = u_xlat4;
  let x_2167 : vec3<f32> = u_xlat5;
  let x_2170 : vec4<f32> = u_xlat6;
  let x_2172 : vec3<f32> = ((vec3<f32>(x_2165.x, x_2165.y, x_2165.z) * vec3<f32>(x_2167.x, x_2167.x, x_2167.x)) + vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
  let x_2175 : vec4<f32> = u_xlat7;
  let x_2177 : vec4<f32> = u_xlat0;
  let x_2179 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) + vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
  let x_2182 : f32 = u_xlat63;
  let x_2183 : f32 = u_xlat63;
  u_xlat63 = (x_2182 * -(x_2183));
  let x_2186 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2186);
  let x_2188 : vec4<f32> = u_xlat0;
  let x_2192 : vec4<f32> = x_44.unity_FogColor;
  let x_2195 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.y, x_2188.z) + -(vec3<f32>(x_2192.x, x_2192.y, x_2192.z)));
  let x_2196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2200 : f32 = u_xlat63;
  let x_2202 : vec4<f32> = u_xlat0;
  let x_2206 : vec4<f32> = x_44.unity_FogColor;
  let x_2208 : vec3<f32> = ((vec3<f32>(x_2200, x_2200, x_2200) * vec3<f32>(x_2202.x, x_2202.y, x_2202.z)) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2214 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2214 == 1.0f);
  let x_2216 : bool = u_xlatb0;
  if (x_2216) {
    let x_2221 : f32 = u_xlat1.x;
    x_2217 = x_2221;
  } else {
    x_2217 = 1.0f;
  }
  let x_2223 : f32 = x_2217;
  SV_Target0.w = x_2223;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

