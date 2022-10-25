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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_270 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1613 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1742 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1921 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2031 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlat60 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlat23 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat42 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
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
  var u_xlatb42 : bool;
  var x_1567 : f32;
  var x_1697 : f32;
  var x_1708 : vec3<f32>;
  var u_xlatu61 : u32;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati63 : i32;
  var u_xlat62 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlatu64 : u32;
  var u_xlati8 : i32;
  var u_xlati64 : i32;
  var u_xlati27 : i32;
  var u_xlatb64 : bool;
  var u_xlatb27 : vec3<bool>;
  var u_xlat27 : vec3<f32>;
  var x_2346 : f32;
  var x_2359 : f32;
  var x_2421 : f32;
  var x_2432 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2578 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat20;
  let x_83 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat20;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat20.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat20.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat20.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_148 : vec3<f32> = u_xlat2;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat58 = dot(x_148, x_149);
  let x_151 : f32 = u_xlat58;
  u_xlat58 = max(x_151, 1.17549435e-37f);
  let x_154 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_154);
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_44.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_163, x_165);
  u_xlat3 = x_166;
  let x_172 : vec2<f32> = vs_TEXCOORD7;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_172, x_174);
  let x_176 : vec3<f32> = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat3;
  let x_183 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = u_xlat1;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(x_187, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat59;
  u_xlat59 = (x_191 + 0.5f);
  let x_194 : f32 = u_xlat59;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194, x_194, x_194) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : f32 = u_xlat3.w;
  u_xlat59 = max(x_202, 0.0001f);
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : f32 = u_xlat59;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) / vec3<f32>(x_207, x_207, x_207));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_214 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_215 : vec2<f32> = vec2<f32>(x_214.x, x_214.y);
  let x_219 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_215.x, x_215.y));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = hlslcc_FragCoord;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_230 : f32 = u_xlat4.y;
  let x_233 : f32 = x_44.x_ScaleBiasRt.x;
  let x_236 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat59 = ((x_230 * x_233) + x_236);
  let x_238 : f32 = u_xlat59;
  u_xlat4.z = (-(x_238) + 1.0f);
  let x_247 : vec4<f32> = u_xlat4;
  let x_250 : f32 = x_44.x_GlobalMipBias.x;
  let x_251 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_247.x, x_247.z), x_250);
  u_xlat59 = x_251.x;
  let x_254 : f32 = u_xlat59;
  u_xlat60 = (x_254 + -1.0f);
  let x_259 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_260 : f32 = u_xlat60;
  u_xlat60 = ((x_259 * x_260) + 1.0f);
  let x_263 : f32 = u_xlat59;
  u_xlat59 = min(x_263, 1.0f);
  let x_272 : f32 = x_270.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_272);
  let x_274 : bool = u_xlatb4;
  if (x_274) {
    let x_278 : f32 = x_270.x_MainLightShadowParams.y;
    u_xlatb4 = (x_278 == 1.0f);
    let x_280 : bool = u_xlatb4;
    if (x_280) {
      let x_284 : vec4<f32> = vs_TEXCOORD6;
      let x_287 : vec4<f32> = x_270.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_284.x, x_284.y, x_284.x, x_284.y) + x_287);
      let x_290 : vec4<f32> = u_xlat4;
      let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
      let x_293 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_306 : vec3<f32> = txVec0;
      let x_308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_306.xy, x_306.z);
      u_xlat5.x = x_308;
      let x_311 : vec4<f32> = u_xlat4;
      let x_312 : vec2<f32> = vec2<f32>(x_311.z, x_311.w);
      let x_314 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_321 : vec3<f32> = txVec1;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_321.xy, x_321.z);
      u_xlat5.y = x_323;
      let x_325 : vec4<f32> = vs_TEXCOORD6;
      let x_328 : vec4<f32> = x_270.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y) + x_328);
      let x_331 : vec4<f32> = u_xlat4;
      let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
      let x_334 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_332.x, x_332.y, x_334);
      let x_341 : vec3<f32> = txVec2;
      let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_341.xy, x_341.z);
      u_xlat5.z = x_343;
      let x_346 : vec4<f32> = u_xlat4;
      let x_347 : vec2<f32> = vec2<f32>(x_346.z, x_346.w);
      let x_349 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec3;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_356.xy, x_356.z);
      u_xlat5.w = x_358;
      let x_360 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_370 : f32 = x_270.x_MainLightShadowParams.y;
      u_xlatb23.x = (x_370 == 2.0f);
      let x_375 : bool = u_xlatb23.x;
      if (x_375) {
        let x_379 : vec4<f32> = vs_TEXCOORD6;
        let x_382 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_386 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_382.z, x_382.w)) + vec2<f32>(0.5f, 0.5f));
        let x_387 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_386.x, x_386.y, x_387.z);
        let x_389 : vec3<f32> = u_xlat23;
        let x_391 : vec2<f32> = floor(vec2<f32>(x_389.x, x_389.y));
        let x_392 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_391.x, x_391.y, x_392.z);
        let x_394 : vec4<f32> = vs_TEXCOORD6;
        let x_397 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_400 : vec3<f32> = u_xlat23;
        let x_403 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397.z, x_397.w)) + -(vec2<f32>(x_400.x, x_400.y)));
        let x_404 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
        let x_407 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_407.x, x_407.x, x_407.y, x_407.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_412 : vec4<f32> = u_xlat6;
        let x_414 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_412.x, x_412.x, x_412.z, x_412.z) * vec4<f32>(x_414.x, x_414.x, x_414.z, x_414.z));
        let x_419 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_419.y, x_419.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_424 : vec4<f32> = u_xlat7;
        let x_427 : vec4<f32> = u_xlat5;
        let x_430 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_427.x, x_427.y)));
        let x_431 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_430.x, x_431.y, x_430.y, x_431.w);
        let x_433 : vec4<f32> = u_xlat5;
        let x_436 : vec2<f32> = (-(vec2<f32>(x_433.x, x_433.y)) + vec2<f32>(1.0f, 1.0f));
        let x_437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
        let x_440 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_440.x, x_440.y), vec2<f32>(0.0f, 0.0f));
        let x_444 : vec2<f32> = u_xlat45;
        let x_446 : vec2<f32> = u_xlat45;
        let x_448 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_444) * x_446) + vec2<f32>(x_448.x, x_448.y));
        let x_451 : vec4<f32> = u_xlat5;
        let x_453 : vec2<f32> = max(vec2<f32>(x_451.x, x_451.y), vec2<f32>(0.0f, 0.0f));
        let x_454 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat5;
        let x_459 : vec4<f32> = u_xlat5;
        let x_462 : vec4<f32> = u_xlat6;
        let x_464 : vec2<f32> = ((-(vec2<f32>(x_456.x, x_456.y)) * vec2<f32>(x_459.x, x_459.y)) + vec2<f32>(x_462.y, x_462.w));
        let x_465 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_467 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_467 + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec4<f32> = u_xlat5;
        let x_471 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) + vec2<f32>(1.0f, 1.0f));
        let x_472 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_479 : vec2<f32> = (vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec4<f32> = u_xlat7;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec2<f32> = u_xlat45;
        let x_489 : vec2<f32> = (x_488 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_490 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_493 : vec4<f32> = u_xlat5;
        let x_495 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_496 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat6;
        let x_500 : vec2<f32> = (vec2<f32>(x_498.y, x_498.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_501 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_504 : f32 = u_xlat7.x;
        u_xlat8.z = x_504;
        let x_507 : f32 = u_xlat5.x;
        u_xlat8.w = x_507;
        let x_510 : f32 = u_xlat10.x;
        u_xlat9.z = x_510;
        let x_513 : f32 = u_xlat43.x;
        u_xlat9.w = x_513;
        let x_515 : vec4<f32> = u_xlat8;
        let x_517 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_515.z, x_515.w, x_515.x, x_515.z) + vec4<f32>(x_517.z, x_517.w, x_517.x, x_517.z));
        let x_521 : f32 = u_xlat8.y;
        u_xlat7.z = x_521;
        let x_524 : f32 = u_xlat5.y;
        u_xlat7.w = x_524;
        let x_527 : f32 = u_xlat9.y;
        u_xlat10.z = x_527;
        let x_530 : f32 = u_xlat43.y;
        u_xlat10.w = x_530;
        let x_532 : vec4<f32> = u_xlat7;
        let x_534 : vec4<f32> = u_xlat10;
        let x_536 : vec3<f32> = (vec3<f32>(x_532.z, x_532.y, x_532.w) + vec3<f32>(x_534.z, x_534.y, x_534.w));
        let x_537 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_539 : vec4<f32> = u_xlat9;
        let x_541 : vec4<f32> = u_xlat6;
        let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.z, x_539.w) / vec3<f32>(x_541.z, x_541.w, x_541.y));
        let x_544 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat7;
        let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat10;
        let x_556 : vec4<f32> = u_xlat5;
        let x_558 : vec3<f32> = (vec3<f32>(x_554.z, x_554.y, x_554.w) / vec3<f32>(x_556.x, x_556.y, x_556.z));
        let x_559 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat8;
        let x_563 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_564 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
        let x_566 : vec4<f32> = u_xlat7;
        let x_569 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_571 : vec3<f32> = (vec3<f32>(x_566.y, x_566.x, x_566.z) * vec3<f32>(x_569.x, x_569.x, x_569.x));
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat8;
        let x_577 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_579 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_577.y, x_577.y, x_577.y));
        let x_580 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_583 : f32 = u_xlat8.x;
        u_xlat7.w = x_583;
        let x_585 : vec3<f32> = u_xlat23;
        let x_588 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y) * vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y)) + vec4<f32>(x_591.y, x_591.w, x_591.x, x_591.w));
        let x_594 : vec3<f32> = u_xlat23;
        let x_597 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_600 : vec4<f32> = u_xlat7;
        let x_602 : vec2<f32> = ((vec2<f32>(x_594.x, x_594.y) * vec2<f32>(x_597.x, x_597.y)) + vec2<f32>(x_600.z, x_600.w));
        let x_603 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_606 : f32 = u_xlat7.y;
        u_xlat8.w = x_606;
        let x_608 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = vec2<f32>(x_608.y, x_608.z);
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_610.x, x_609.x, x_610.z, x_609.y);
        let x_613 : vec3<f32> = u_xlat23;
        let x_616 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y) * vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y)) + vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.y));
        let x_622 : vec3<f32> = u_xlat23;
        let x_625 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.w, x_628.y, x_628.w, x_628.z));
        let x_631 : vec3<f32> = u_xlat23;
        let x_634 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.x, x_637.w, x_637.z, x_637.w));
        let x_641 : vec4<f32> = u_xlat5;
        let x_643 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_641.x, x_641.x, x_641.x, x_641.y) * vec4<f32>(x_643.z, x_643.w, x_643.y, x_643.z));
        let x_647 : vec4<f32> = u_xlat5;
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_647.y, x_647.y, x_647.z, x_647.z) * x_649);
        let x_652 : f32 = u_xlat5.z;
        let x_654 : f32 = u_xlat6.y;
        u_xlat23.x = (x_652 * x_654);
        let x_658 : vec4<f32> = u_xlat9;
        let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
        let x_661 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_659.x, x_659.y, x_661);
        let x_669 : vec3<f32> = txVec4;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_669.xy, x_669.z);
        u_xlat42 = x_671;
        let x_673 : vec4<f32> = u_xlat9;
        let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_684 : vec3<f32> = txVec5;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_684.xy, x_684.z);
        u_xlat61 = x_686;
        let x_687 : f32 = u_xlat61;
        let x_689 : f32 = u_xlat12.y;
        u_xlat61 = (x_687 * x_689);
        let x_692 : f32 = u_xlat12.x;
        let x_693 : f32 = u_xlat42;
        let x_695 : f32 = u_xlat61;
        u_xlat42 = ((x_692 * x_693) + x_695);
        let x_698 : vec4<f32> = u_xlat10;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec6;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_708.xy, x_708.z);
        u_xlat61 = x_710;
        let x_712 : f32 = u_xlat12.z;
        let x_713 : f32 = u_xlat61;
        let x_715 : f32 = u_xlat42;
        u_xlat42 = ((x_712 * x_713) + x_715);
        let x_718 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = vec2<f32>(x_718.x, x_718.y);
        let x_721 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_719.x, x_719.y, x_721);
        let x_728 : vec3<f32> = txVec7;
        let x_730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_728.xy, x_728.z);
        u_xlat61 = x_730;
        let x_732 : f32 = u_xlat12.w;
        let x_733 : f32 = u_xlat61;
        let x_735 : f32 = u_xlat42;
        u_xlat42 = ((x_732 * x_733) + x_735);
        let x_738 : vec4<f32> = u_xlat11;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
        let x_741 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_748 : vec3<f32> = txVec8;
        let x_750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_748.xy, x_748.z);
        u_xlat61 = x_750;
        let x_752 : f32 = u_xlat13.x;
        let x_753 : f32 = u_xlat61;
        let x_755 : f32 = u_xlat42;
        u_xlat42 = ((x_752 * x_753) + x_755);
        let x_758 : vec4<f32> = u_xlat11;
        let x_759 : vec2<f32> = vec2<f32>(x_758.z, x_758.w);
        let x_761 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_759.x, x_759.y, x_761);
        let x_768 : vec3<f32> = txVec9;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat61 = x_770;
        let x_772 : f32 = u_xlat13.y;
        let x_773 : f32 = u_xlat61;
        let x_775 : f32 = u_xlat42;
        u_xlat42 = ((x_772 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat8;
        let x_779 : vec2<f32> = vec2<f32>(x_778.z, x_778.w);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec10;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
        u_xlat61 = x_790;
        let x_792 : f32 = u_xlat13.z;
        let x_793 : f32 = u_xlat61;
        let x_795 : f32 = u_xlat42;
        u_xlat42 = ((x_792 * x_793) + x_795);
        let x_798 : vec4<f32> = u_xlat7;
        let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec11;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat61 = x_810;
        let x_812 : f32 = u_xlat13.w;
        let x_813 : f32 = u_xlat61;
        let x_815 : f32 = u_xlat42;
        u_xlat42 = ((x_812 * x_813) + x_815);
        let x_818 : vec4<f32> = u_xlat7;
        let x_819 : vec2<f32> = vec2<f32>(x_818.z, x_818.w);
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec12;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
        u_xlat61 = x_830;
        let x_832 : f32 = u_xlat23.x;
        let x_833 : f32 = u_xlat61;
        let x_835 : f32 = u_xlat42;
        u_xlat4.x = ((x_832 * x_833) + x_835);
      } else {
        let x_839 : vec4<f32> = vs_TEXCOORD6;
        let x_842 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_845 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.y) * vec2<f32>(x_842.z, x_842.w)) + vec2<f32>(0.5f, 0.5f));
        let x_846 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_845.x, x_845.y, x_846.z);
        let x_848 : vec3<f32> = u_xlat23;
        let x_850 : vec2<f32> = floor(vec2<f32>(x_848.x, x_848.y));
        let x_851 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_850.x, x_850.y, x_851.z);
        let x_853 : vec4<f32> = vs_TEXCOORD6;
        let x_856 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_859 : vec3<f32> = u_xlat23;
        let x_862 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat7;
        let x_883 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_883.x, x_883.y)));
        let x_887 : vec4<f32> = u_xlat5;
        let x_890 : vec2<f32> = (-(vec2<f32>(x_887.x, x_887.y)) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_891.w);
        let x_893 : vec4<f32> = u_xlat5;
        let x_895 : vec2<f32> = min(vec2<f32>(x_893.x, x_893.y), vec2<f32>(0.0f, 0.0f));
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat7;
        let x_901 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = u_xlat6;
        let x_906 : vec2<f32> = ((-(vec2<f32>(x_898.x, x_898.y)) * vec2<f32>(x_901.x, x_901.y)) + vec2<f32>(x_904.x, x_904.z));
        let x_907 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_906.x, x_907.y, x_906.y, x_907.w);
        let x_909 : vec4<f32> = u_xlat5;
        let x_911 : vec2<f32> = max(vec2<f32>(x_909.x, x_909.y), vec2<f32>(0.0f, 0.0f));
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec4<f32> = u_xlat7;
        let x_917 : vec4<f32> = u_xlat7;
        let x_920 : vec4<f32> = u_xlat6;
        let x_922 : vec2<f32> = ((-(vec2<f32>(x_914.x, x_914.y)) * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_920.y, x_920.w));
        let x_923 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_925 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_929 : f32 = u_xlat6.y;
        u_xlat7.z = (x_929 * 0.081632003f);
        let x_933 : vec2<f32> = u_xlat43;
        let x_936 : vec2<f32> = (vec2<f32>(x_933.y, x_933.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_939.x, x_939.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_943 : f32 = u_xlat6.w;
        u_xlat9.z = (x_943 * 0.081632003f);
        let x_947 : f32 = u_xlat9.y;
        u_xlat7.x = x_947;
        let x_949 : vec4<f32> = u_xlat5;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_957 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec4<f32> = u_xlat5;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_964 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat43.x;
        u_xlat6.y = x_967;
        let x_970 : f32 = u_xlat8.y;
        u_xlat6.w = x_970;
        let x_972 : vec4<f32> = u_xlat6;
        let x_973 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_972 + x_973);
        let x_975 : vec4<f32> = u_xlat5;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec4<f32> = u_xlat5;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat43.y;
        u_xlat8.y = x_988;
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat6;
        let x_994 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat6;
        let x_1010 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1016 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat6;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat8.x;
        u_xlat9.y = x_1024;
        let x_1026 : vec3<f32> = u_xlat23;
        let x_1029 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec3<f32> = u_xlat23;
        let x_1038 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.w, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1047 : f32 = u_xlat9.y;
        u_xlat6.y = x_1047;
        let x_1050 : f32 = u_xlat8.z;
        u_xlat9.y = x_1050;
        let x_1052 : vec3<f32> = u_xlat23;
        let x_1055 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1062 : vec3<f32> = u_xlat23;
        let x_1065 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat9.y;
        u_xlat6.z = x_1072;
        let x_1074 : vec3<f32> = u_xlat23;
        let x_1077 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat8.w;
        u_xlat9.y = x_1084;
        let x_1087 : vec3<f32> = u_xlat23;
        let x_1090 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec3<f32> = u_xlat23;
        let x_1100 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat25 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat9.y;
        u_xlat6.w = x_1107;
        let x_1110 : vec3<f32> = u_xlat23;
        let x_1113 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat15 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec3<f32> = u_xlat23;
        let x_1126 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec3<f32> = u_xlat23;
        let x_1136 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat6.x;
        u_xlat8.x = x_1143;
        let x_1145 : vec3<f32> = u_xlat23;
        let x_1148 : vec4<f32> = x_270.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1153.x, x_1153.y, x_1154.z);
        let x_1157 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat5;
        let x_1169 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1173 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1186.xy, x_1186.z);
        u_xlat61 = x_1188;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat6.x = x_1202;
        let x_1205 : f32 = u_xlat6.x;
        let x_1207 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1205 * x_1207);
        let x_1211 : f32 = u_xlat16.x;
        let x_1212 : f32 = u_xlat61;
        let x_1215 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1211 * x_1212) + x_1215);
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec15;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat6.x = x_1230;
        let x_1233 : f32 = u_xlat16.z;
        let x_1235 : f32 = u_xlat6.x;
        let x_1237 : f32 = u_xlat61;
        u_xlat61 = ((x_1233 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat13;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.x, x_1240.y);
        let x_1243 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec16;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat6.x = x_1252;
        let x_1255 : f32 = u_xlat16.w;
        let x_1257 : f32 = u_xlat6.x;
        let x_1259 : f32 = u_xlat61;
        u_xlat61 = ((x_1255 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat12;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec17;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat6.x = x_1274;
        let x_1277 : f32 = u_xlat17.x;
        let x_1279 : f32 = u_xlat6.x;
        let x_1281 : f32 = u_xlat61;
        u_xlat61 = ((x_1277 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat12;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec18;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat6.x = x_1296;
        let x_1299 : f32 = u_xlat17.y;
        let x_1301 : f32 = u_xlat6.x;
        let x_1303 : f32 = u_xlat61;
        u_xlat61 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec2<f32> = u_xlat49;
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1315.xy, x_1315.z);
        u_xlat6.x = x_1317;
        let x_1320 : f32 = u_xlat17.z;
        let x_1322 : f32 = u_xlat6.x;
        let x_1324 : f32 = u_xlat61;
        u_xlat61 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat13;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec20;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1337.xy, x_1337.z);
        u_xlat6.x = x_1339;
        let x_1342 : f32 = u_xlat17.w;
        let x_1344 : f32 = u_xlat6.x;
        let x_1346 : f32 = u_xlat61;
        u_xlat61 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat14;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec21;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1359.xy, x_1359.z);
        u_xlat6.x = x_1361;
        let x_1364 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat6.x;
        let x_1368 : f32 = u_xlat61;
        u_xlat61 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat14;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec22;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat6.x = x_1383;
        let x_1386 : f32 = u_xlat18.y;
        let x_1388 : f32 = u_xlat6.x;
        let x_1390 : f32 = u_xlat61;
        u_xlat61 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec2<f32> = u_xlat25;
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec23;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat6.x = x_1404;
        let x_1407 : f32 = u_xlat18.z;
        let x_1409 : f32 = u_xlat6.x;
        let x_1411 : f32 = u_xlat61;
        u_xlat61 = ((x_1407 * x_1409) + x_1411);
        let x_1414 : vec2<f32> = u_xlat15;
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec24;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat6.x = x_1425;
        let x_1428 : f32 = u_xlat18.w;
        let x_1430 : f32 = u_xlat6.x;
        let x_1432 : f32 = u_xlat61;
        u_xlat61 = ((x_1428 * x_1430) + x_1432);
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.x, x_1435.y);
        let x_1438 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec25;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1445.xy, x_1445.z);
        u_xlat6.x = x_1447;
        let x_1450 : f32 = u_xlat5.x;
        let x_1452 : f32 = u_xlat6.x;
        let x_1454 : f32 = u_xlat61;
        u_xlat61 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat9;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec26;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat5.x = x_1469;
        let x_1472 : f32 = u_xlat5.y;
        let x_1474 : f32 = u_xlat5.x;
        let x_1476 : f32 = u_xlat61;
        u_xlat61 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec2<f32> = u_xlat46;
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec27;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat5.x = x_1490;
        let x_1493 : f32 = u_xlat5.z;
        let x_1495 : f32 = u_xlat5.x;
        let x_1497 : f32 = u_xlat61;
        u_xlat61 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec3<f32> = u_xlat23;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec28;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat23.x = x_1512;
        let x_1515 : f32 = u_xlat5.w;
        let x_1517 : f32 = u_xlat23.x;
        let x_1519 : f32 = u_xlat61;
        u_xlat4.x = ((x_1515 * x_1517) + x_1519);
      }
    }
  } else {
    let x_1524 : vec4<f32> = vs_TEXCOORD6;
    let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
    let x_1527 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
    let x_1534 : vec3<f32> = txVec29;
    let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
    u_xlat4.x = x_1536;
  }
  let x_1539 : f32 = x_270.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_1539) + 1.0f);
  let x_1544 : f32 = u_xlat4.x;
  let x_1546 : f32 = x_270.x_MainLightShadowParams.x;
  let x_1549 : f32 = u_xlat23.x;
  u_xlat4.x = ((x_1544 * x_1546) + x_1549);
  let x_1553 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_1553);
  let x_1558 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (x_1558 >= 1.0f);
  let x_1560 : bool = u_xlatb42;
  let x_1562 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_1560 | x_1562);
  let x_1566 : bool = u_xlatb23.x;
  if (x_1566) {
    x_1567 = 1.0f;
  } else {
    let x_1572 : f32 = u_xlat4.x;
    x_1567 = x_1572;
  }
  let x_1573 : f32 = x_1567;
  u_xlat4.x = x_1573;
  let x_1575 : vec3<f32> = vs_TEXCOORD1;
  let x_1577 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat23 = (x_1575 + -(x_1577));
  let x_1580 : vec3<f32> = u_xlat23;
  let x_1581 : vec3<f32> = u_xlat23;
  u_xlat23.x = dot(x_1580, x_1581);
  let x_1585 : f32 = u_xlat23.x;
  let x_1587 : f32 = x_270.x_MainLightShadowParams.z;
  let x_1590 : f32 = x_270.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1585 * x_1587) + x_1590);
  let x_1594 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1594, 0.0f, 1.0f);
  let x_1598 : f32 = u_xlat4.x;
  u_xlat42 = (-(x_1598) + 1.0f);
  let x_1602 : f32 = u_xlat23.x;
  let x_1603 : f32 = u_xlat42;
  let x_1606 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1602 * x_1603) + x_1606);
  let x_1615 : f32 = x_1613.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_1615 == -1.0f));
  let x_1619 : bool = u_xlatb23.x;
  if (x_1619) {
    let x_1622 : vec3<f32> = vs_TEXCOORD1;
    let x_1625 : vec4<f32> = x_1613.x_MainLightWorldToLight[1i];
    let x_1627 : vec2<f32> = (vec2<f32>(x_1622.y, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y));
    let x_1628 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1627.x, x_1627.y, x_1628.z);
    let x_1631 : vec4<f32> = x_1613.x_MainLightWorldToLight[0i];
    let x_1633 : vec3<f32> = vs_TEXCOORD1;
    let x_1636 : vec3<f32> = u_xlat23;
    let x_1638 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(x_1633.x, x_1633.x)) + vec2<f32>(x_1636.x, x_1636.y));
    let x_1639 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1638.x, x_1638.y, x_1639.z);
    let x_1642 : vec4<f32> = x_1613.x_MainLightWorldToLight[2i];
    let x_1644 : vec3<f32> = vs_TEXCOORD1;
    let x_1647 : vec3<f32> = u_xlat23;
    let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.z, x_1644.z)) + vec2<f32>(x_1647.x, x_1647.y));
    let x_1650 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1649.x, x_1649.y, x_1650.z);
    let x_1652 : vec3<f32> = u_xlat23;
    let x_1656 : vec4<f32> = x_1613.x_MainLightWorldToLight[3i];
    let x_1658 : vec2<f32> = (vec2<f32>(x_1652.x, x_1652.y) + vec2<f32>(x_1656.x, x_1656.y));
    let x_1659 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1658.x, x_1658.y, x_1659.z);
    let x_1661 : vec3<f32> = u_xlat23;
    let x_1664 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1665 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1664.x, x_1664.y, x_1665.z);
    let x_1672 : vec3<f32> = u_xlat23;
    let x_1675 : f32 = x_44.x_GlobalMipBias.x;
    let x_1676 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1672.x, x_1672.y), x_1675);
    u_xlat5 = x_1676;
    let x_1678 : f32 = x_1613.x_MainLightCookieTextureFormat;
    let x_1680 : f32 = x_1613.x_MainLightCookieTextureFormat;
    let x_1682 : f32 = x_1613.x_MainLightCookieTextureFormat;
    let x_1684 : f32 = x_1613.x_MainLightCookieTextureFormat;
    let x_1685 : vec4<f32> = vec4<f32>(x_1678, x_1680, x_1682, x_1684);
    let x_1693 : vec4<bool> = (vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1685.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_1693.x, x_1693.y);
    let x_1696 : bool = u_xlatb23.y;
    if (x_1696) {
      let x_1701 : f32 = u_xlat5.w;
      x_1697 = x_1701;
    } else {
      let x_1704 : f32 = u_xlat5.x;
      x_1697 = x_1704;
    }
    let x_1705 : f32 = x_1697;
    u_xlat42 = x_1705;
    let x_1707 : bool = u_xlatb23.x;
    if (x_1707) {
      let x_1711 : vec4<f32> = u_xlat5;
      x_1708 = vec3<f32>(x_1711.x, x_1711.y, x_1711.z);
    } else {
      let x_1714 : f32 = u_xlat42;
      x_1708 = vec3<f32>(x_1714, x_1714, x_1714);
    }
    let x_1716 : vec3<f32> = x_1708;
    u_xlat23 = x_1716;
  } else {
    u_xlat23.x = 1.0f;
    u_xlat23.y = 1.0f;
    u_xlat23.z = 1.0f;
  }
  let x_1721 : vec3<f32> = u_xlat23;
  let x_1723 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat23 = (x_1721 * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : f32 = u_xlat60;
  let x_1728 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1726, x_1726, x_1726) * x_1728);
  let x_1730 : f32 = u_xlat59;
  let x_1732 : vec4<f32> = u_xlat3;
  let x_1734 : vec3<f32> = (vec3<f32>(x_1730, x_1730, x_1730) * vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1738 : f32 = u_xlat4.x;
  let x_1745 : f32 = x_1742.unity_LightData.z;
  u_xlat59 = (x_1738 * x_1745);
  let x_1747 : f32 = u_xlat59;
  let x_1749 : vec3<f32> = u_xlat23;
  let x_1750 : vec3<f32> = (vec3<f32>(x_1747, x_1747, x_1747) * x_1749);
  let x_1751 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
  let x_1753 : vec3<f32> = u_xlat1;
  let x_1755 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat59 = dot(x_1753, vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1758, 0.0f, 1.0f);
  let x_1760 : f32 = u_xlat59;
  let x_1762 : vec4<f32> = u_xlat4;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1760, x_1760, x_1760) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1768 : f32 = u_xlat0.x;
  u_xlat59 = ((x_1768 * 10.0f) + 1.0f);
  let x_1772 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1772);
  let x_1774 : vec3<f32> = u_xlat2;
  let x_1775 : f32 = u_xlat58;
  let x_1779 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1781 : vec3<f32> = ((x_1774 * vec3<f32>(x_1775, x_1775, x_1775)) + vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat6;
  let x_1786 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.z), vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : f32 = u_xlat61;
  u_xlat61 = max(x_1789, 1.17549435e-37f);
  let x_1791 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_1791);
  let x_1793 : f32 = u_xlat61;
  let x_1795 : vec4<f32> = u_xlat6;
  let x_1797 : vec3<f32> = (vec3<f32>(x_1793, x_1793, x_1793) * vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);
  let x_1800 : vec3<f32> = u_xlat1;
  let x_1801 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(x_1800, vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
  let x_1804 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1804, 0.0f, 1.0f);
  let x_1806 : f32 = u_xlat61;
  u_xlat61 = log2(x_1806);
  let x_1808 : f32 = u_xlat59;
  let x_1809 : f32 = u_xlat61;
  u_xlat61 = (x_1808 * x_1809);
  let x_1811 : f32 = u_xlat61;
  u_xlat61 = exp2(x_1811);
  let x_1813 : f32 = u_xlat61;
  let x_1816 : vec4<f32> = x_56.x_SpecColor;
  let x_1818 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
  let x_1819 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
  let x_1821 : vec4<f32> = u_xlat4;
  let x_1823 : vec4<f32> = u_xlat6;
  let x_1825 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
  let x_1826 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  let x_1828 : vec4<f32> = u_xlat5;
  let x_1830 : vec4<f32> = u_xlat0;
  let x_1833 : vec4<f32> = u_xlat4;
  let x_1835 : vec3<f32> = ((vec3<f32>(x_1828.x, x_1828.y, x_1828.z) * vec3<f32>(x_1830.y, x_1830.z, x_1830.w)) + vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1839 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1841 : f32 = x_1742.unity_LightData.y;
  u_xlat61 = min(x_1839, x_1841);
  let x_1845 : f32 = u_xlat61;
  u_xlatu61 = bitcast<u32>(i32(x_1845));
  let x_1850 : f32 = x_1613.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1852 : f32 = x_1613.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1854 : f32 = x_1613.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1856 : f32 = x_1613.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1857 : vec4<f32> = vec4<f32>(x_1850, x_1852, x_1854, x_1856);
  let x_1863 : vec4<bool> = (vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1857.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1863.x, x_1863.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1874 : u32 = u_xlatu_loop_1;
    let x_1875 : u32 = u_xlatu61;
    if ((x_1874 < x_1875)) {
    } else {
      break;
    }
    let x_1878 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_1878 >> 2u);
    let x_1882 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_1882 & 3u));
    let x_1886 : u32 = u_xlatu62;
    let x_1889 : vec4<f32> = x_1742.unity_LightIndices[bitcast<i32>(x_1886)];
    let x_1899 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1904 : vec4<u32> = indexable[x_1899];
    u_xlat62 = dot(x_1889, bitcast<vec4<f32>>(x_1904));
    let x_1907 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_1907));
    let x_1910 : vec3<f32> = vs_TEXCOORD1;
    let x_1922 : u32 = u_xlatu62;
    let x_1925 : vec4<f32> = x_1921.x_AdditionalLightsPosition[bitcast<i32>(x_1922)];
    let x_1928 : u32 = u_xlatu62;
    let x_1931 : vec4<f32> = x_1921.x_AdditionalLightsPosition[bitcast<i32>(x_1928)];
    let x_1933 : vec3<f32> = ((-(x_1910) * vec3<f32>(x_1925.w, x_1925.w, x_1925.w)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1937 : vec4<f32> = u_xlat7;
    let x_1939 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
    let x_1942 : f32 = u_xlat63;
    u_xlat63 = max(x_1942, 6.10351562e-05f);
    let x_1946 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_1946);
    let x_1948 : f32 = u_xlat64;
    let x_1950 : vec4<f32> = u_xlat7;
    let x_1952 : vec3<f32> = (vec3<f32>(x_1948, x_1948, x_1948) * vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
    let x_1953 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
    let x_1955 : f32 = u_xlat63;
    u_xlat64 = (1.0f / x_1955);
    let x_1957 : f32 = u_xlat63;
    let x_1958 : u32 = u_xlatu62;
    let x_1961 : f32 = x_1921.x_AdditionalLightsAttenuation[bitcast<i32>(x_1958)].x;
    u_xlat63 = (x_1957 * x_1961);
    let x_1963 : f32 = u_xlat63;
    let x_1965 : f32 = u_xlat63;
    u_xlat63 = ((-(x_1963) * x_1965) + 1.0f);
    let x_1968 : f32 = u_xlat63;
    u_xlat63 = max(x_1968, 0.0f);
    let x_1970 : f32 = u_xlat63;
    let x_1971 : f32 = u_xlat63;
    u_xlat63 = (x_1970 * x_1971);
    let x_1973 : f32 = u_xlat63;
    let x_1974 : f32 = u_xlat64;
    u_xlat63 = (x_1973 * x_1974);
    let x_1976 : u32 = u_xlatu62;
    let x_1979 : vec4<f32> = x_1921.x_AdditionalLightsSpotDir[bitcast<i32>(x_1976)];
    let x_1981 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1979.x, x_1979.y, x_1979.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
    let x_1984 : f32 = u_xlat64;
    let x_1985 : u32 = u_xlatu62;
    let x_1988 : f32 = x_1921.x_AdditionalLightsAttenuation[bitcast<i32>(x_1985)].z;
    let x_1990 : u32 = u_xlatu62;
    let x_1993 : f32 = x_1921.x_AdditionalLightsAttenuation[bitcast<i32>(x_1990)].w;
    u_xlat64 = ((x_1984 * x_1988) + x_1993);
    let x_1995 : f32 = u_xlat64;
    u_xlat64 = clamp(x_1995, 0.0f, 1.0f);
    let x_1997 : f32 = u_xlat64;
    let x_1998 : f32 = u_xlat64;
    u_xlat64 = (x_1997 * x_1998);
    let x_2000 : f32 = u_xlat63;
    let x_2001 : f32 = u_xlat64;
    u_xlat63 = (x_2000 * x_2001);
    let x_2004 : u32 = u_xlatu62;
    u_xlatu64 = (x_2004 >> 5u);
    let x_2007 : u32 = u_xlatu62;
    u_xlati8 = (1i << bitcast<u32>((bitcast<i32>(x_2007) & 31i)));
    let x_2013 : i32 = u_xlati8;
    let x_2015 : u32 = u_xlatu64;
    let x_2018 : f32 = x_1613.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2015)].el;
    u_xlati64 = bitcast<i32>((bitcast<u32>(x_2013) & bitcast<u32>(x_2018)));
    let x_2022 : i32 = u_xlati64;
    if ((x_2022 != 0i)) {
      let x_2032 : u32 = u_xlatu62;
      let x_2035 : f32 = x_2031.x_AdditionalLightsLightTypes[bitcast<i32>(x_2032)].el;
      u_xlati64 = i32(x_2035);
      let x_2037 : i32 = u_xlati64;
      u_xlati8 = select(1i, 0i, (x_2037 != 0i));
      let x_2041 : u32 = u_xlatu62;
      u_xlati27 = (bitcast<i32>(x_2041) << bitcast<u32>(2i));
      let x_2044 : i32 = u_xlati8;
      if ((x_2044 != 0i)) {
        let x_2048 : vec3<f32> = vs_TEXCOORD1;
        let x_2050 : i32 = u_xlati27;
        let x_2053 : i32 = u_xlati27;
        let x_2057 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2050 + 1i) / 4i)][((x_2053 + 1i) % 4i)];
        let x_2059 : vec3<f32> = (vec3<f32>(x_2048.y, x_2048.y, x_2048.y) * vec3<f32>(x_2057.x, x_2057.y, x_2057.w));
        let x_2060 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2059.x, x_2060.y, x_2059.y, x_2059.z);
        let x_2062 : i32 = u_xlati27;
        let x_2064 : i32 = u_xlati27;
        let x_2067 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[(x_2062 / 4i)][(x_2064 % 4i)];
        let x_2069 : vec3<f32> = vs_TEXCOORD1;
        let x_2072 : vec4<f32> = u_xlat8;
        let x_2074 : vec3<f32> = ((vec3<f32>(x_2067.x, x_2067.y, x_2067.w) * vec3<f32>(x_2069.x, x_2069.x, x_2069.x)) + vec3<f32>(x_2072.x, x_2072.z, x_2072.w));
        let x_2075 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2074.x, x_2075.y, x_2074.y, x_2074.z);
        let x_2077 : i32 = u_xlati27;
        let x_2080 : i32 = u_xlati27;
        let x_2084 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2077 + 2i) / 4i)][((x_2080 + 2i) % 4i)];
        let x_2086 : vec3<f32> = vs_TEXCOORD1;
        let x_2089 : vec4<f32> = u_xlat8;
        let x_2091 : vec3<f32> = ((vec3<f32>(x_2084.x, x_2084.y, x_2084.w) * vec3<f32>(x_2086.z, x_2086.z, x_2086.z)) + vec3<f32>(x_2089.x, x_2089.z, x_2089.w));
        let x_2092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2091.x, x_2092.y, x_2091.y, x_2091.z);
        let x_2094 : vec4<f32> = u_xlat8;
        let x_2096 : i32 = u_xlati27;
        let x_2099 : i32 = u_xlati27;
        let x_2103 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2096 + 3i) / 4i)][((x_2099 + 3i) % 4i)];
        let x_2105 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.z, x_2094.w) + vec3<f32>(x_2103.x, x_2103.y, x_2103.w));
        let x_2106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2105.x, x_2106.y, x_2105.y, x_2105.z);
        let x_2108 : vec4<f32> = u_xlat8;
        let x_2110 : vec4<f32> = u_xlat8;
        let x_2112 : vec2<f32> = (vec2<f32>(x_2108.x, x_2108.z) / vec2<f32>(x_2110.w, x_2110.w));
        let x_2113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2112.x, x_2113.y, x_2112.y, x_2113.w);
        let x_2115 : vec4<f32> = u_xlat8;
        let x_2118 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2118.x, x_2119.y, x_2118.y, x_2119.w);
        let x_2121 : vec4<f32> = u_xlat8;
        let x_2125 : vec2<f32> = clamp(vec2<f32>(x_2121.x, x_2121.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2125.x, x_2126.y, x_2125.y, x_2126.w);
        let x_2128 : u32 = u_xlatu62;
        let x_2131 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2128)];
        let x_2133 : vec4<f32> = u_xlat8;
        let x_2136 : u32 = u_xlatu62;
        let x_2139 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2136)];
        let x_2141 : vec2<f32> = ((vec2<f32>(x_2131.x, x_2131.y) * vec2<f32>(x_2133.x, x_2133.z)) + vec2<f32>(x_2139.z, x_2139.w));
        let x_2142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2141.x, x_2142.y, x_2141.y, x_2142.w);
      } else {
        let x_2146 : i32 = u_xlati64;
        u_xlatb64 = (x_2146 == 1i);
        let x_2148 : bool = u_xlatb64;
        u_xlati64 = select(0i, 1i, x_2148);
        let x_2150 : i32 = u_xlati64;
        if ((x_2150 != 0i)) {
          let x_2154 : vec3<f32> = vs_TEXCOORD1;
          let x_2156 : i32 = u_xlati27;
          let x_2159 : i32 = u_xlati27;
          let x_2163 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2156 + 1i) / 4i)][((x_2159 + 1i) % 4i)];
          let x_2165 : vec2<f32> = (vec2<f32>(x_2154.y, x_2154.y) * vec2<f32>(x_2163.x, x_2163.y));
          let x_2166 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
          let x_2168 : i32 = u_xlati27;
          let x_2170 : i32 = u_xlati27;
          let x_2173 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[(x_2168 / 4i)][(x_2170 % 4i)];
          let x_2175 : vec3<f32> = vs_TEXCOORD1;
          let x_2178 : vec4<f32> = u_xlat9;
          let x_2180 : vec2<f32> = ((vec2<f32>(x_2173.x, x_2173.y) * vec2<f32>(x_2175.x, x_2175.x)) + vec2<f32>(x_2178.x, x_2178.y));
          let x_2181 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
          let x_2183 : i32 = u_xlati27;
          let x_2186 : i32 = u_xlati27;
          let x_2190 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2183 + 2i) / 4i)][((x_2186 + 2i) % 4i)];
          let x_2192 : vec3<f32> = vs_TEXCOORD1;
          let x_2195 : vec4<f32> = u_xlat9;
          let x_2197 : vec2<f32> = ((vec2<f32>(x_2190.x, x_2190.y) * vec2<f32>(x_2192.z, x_2192.z)) + vec2<f32>(x_2195.x, x_2195.y));
          let x_2198 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
          let x_2200 : vec4<f32> = u_xlat9;
          let x_2202 : i32 = u_xlati27;
          let x_2205 : i32 = u_xlati27;
          let x_2209 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2202 + 3i) / 4i)][((x_2205 + 3i) % 4i)];
          let x_2211 : vec2<f32> = (vec2<f32>(x_2200.x, x_2200.y) + vec2<f32>(x_2209.x, x_2209.y));
          let x_2212 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
          let x_2214 : vec4<f32> = u_xlat9;
          let x_2217 : vec2<f32> = ((vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2218 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
          let x_2220 : vec4<f32> = u_xlat9;
          let x_2222 : vec2<f32> = fract(vec2<f32>(x_2220.x, x_2220.y));
          let x_2223 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
          let x_2225 : u32 = u_xlatu62;
          let x_2228 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2225)];
          let x_2230 : vec4<f32> = u_xlat9;
          let x_2233 : u32 = u_xlatu62;
          let x_2236 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2233)];
          let x_2238 : vec2<f32> = ((vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(x_2230.x, x_2230.y)) + vec2<f32>(x_2236.z, x_2236.w));
          let x_2239 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2238.x, x_2239.y, x_2238.y, x_2239.w);
        } else {
          let x_2242 : vec3<f32> = vs_TEXCOORD1;
          let x_2244 : i32 = u_xlati27;
          let x_2247 : i32 = u_xlati27;
          let x_2251 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2244 + 1i) / 4i)][((x_2247 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2242.y, x_2242.y, x_2242.y, x_2242.y) * x_2251);
          let x_2253 : i32 = u_xlati27;
          let x_2255 : i32 = u_xlati27;
          let x_2258 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[(x_2253 / 4i)][(x_2255 % 4i)];
          let x_2259 : vec3<f32> = vs_TEXCOORD1;
          let x_2262 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2258 * vec4<f32>(x_2259.x, x_2259.x, x_2259.x, x_2259.x)) + x_2262);
          let x_2264 : i32 = u_xlati27;
          let x_2267 : i32 = u_xlati27;
          let x_2271 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2264 + 2i) / 4i)][((x_2267 + 2i) % 4i)];
          let x_2272 : vec3<f32> = vs_TEXCOORD1;
          let x_2275 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2271 * vec4<f32>(x_2272.z, x_2272.z, x_2272.z, x_2272.z)) + x_2275);
          let x_2277 : vec4<f32> = u_xlat9;
          let x_2278 : i32 = u_xlati27;
          let x_2281 : i32 = u_xlati27;
          let x_2285 : vec4<f32> = x_2031.x_AdditionalLightsWorldToLights[((x_2278 + 3i) / 4i)][((x_2281 + 3i) % 4i)];
          u_xlat9 = (x_2277 + x_2285);
          let x_2287 : vec4<f32> = u_xlat9;
          let x_2289 : vec4<f32> = u_xlat9;
          let x_2291 : vec3<f32> = (vec3<f32>(x_2287.x, x_2287.y, x_2287.z) / vec3<f32>(x_2289.w, x_2289.w, x_2289.w));
          let x_2292 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
          let x_2294 : vec4<f32> = u_xlat9;
          let x_2296 : vec4<f32> = u_xlat9;
          u_xlat64 = dot(vec3<f32>(x_2294.x, x_2294.y, x_2294.z), vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
          let x_2299 : f32 = u_xlat64;
          u_xlat64 = inverseSqrt(x_2299);
          let x_2301 : f32 = u_xlat64;
          let x_2303 : vec4<f32> = u_xlat9;
          let x_2305 : vec3<f32> = (vec3<f32>(x_2301, x_2301, x_2301) * vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
          let x_2306 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
          let x_2308 : vec4<f32> = u_xlat9;
          u_xlat64 = dot(abs(vec3<f32>(x_2308.x, x_2308.y, x_2308.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2313 : f32 = u_xlat64;
          u_xlat64 = max(x_2313, 0.000001f);
          let x_2316 : f32 = u_xlat64;
          u_xlat64 = (1.0f / x_2316);
          let x_2318 : f32 = u_xlat64;
          let x_2320 : vec4<f32> = u_xlat9;
          let x_2322 : vec3<f32> = (vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.z, x_2320.x, x_2320.y));
          let x_2323 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
          let x_2326 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2326);
          let x_2330 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2330, 0.0f, 1.0f);
          let x_2336 : vec4<f32> = u_xlat10;
          let x_2339 : vec4<bool> = (vec4<f32>(x_2336.y, x_2336.y, x_2336.z, x_2336.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2340 : vec2<bool> = vec2<bool>(x_2339.x, x_2339.z);
          let x_2341 : vec3<bool> = u_xlatb27;
          u_xlatb27 = vec3<bool>(x_2340.x, x_2341.y, x_2340.y);
          let x_2345 : bool = u_xlatb27.x;
          if (x_2345) {
            let x_2350 : f32 = u_xlat10.x;
            x_2346 = x_2350;
          } else {
            let x_2353 : f32 = u_xlat10.x;
            x_2346 = -(x_2353);
          }
          let x_2355 : f32 = x_2346;
          u_xlat27.x = x_2355;
          let x_2358 : bool = u_xlatb27.z;
          if (x_2358) {
            let x_2363 : f32 = u_xlat10.x;
            x_2359 = x_2363;
          } else {
            let x_2366 : f32 = u_xlat10.x;
            x_2359 = -(x_2366);
          }
          let x_2368 : f32 = x_2359;
          u_xlat27.z = x_2368;
          let x_2370 : vec4<f32> = u_xlat9;
          let x_2372 : f32 = u_xlat64;
          let x_2375 : vec3<f32> = u_xlat27;
          let x_2377 : vec2<f32> = ((vec2<f32>(x_2370.x, x_2370.y) * vec2<f32>(x_2372, x_2372)) + vec2<f32>(x_2375.x, x_2375.z));
          let x_2378 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2377.x, x_2378.y, x_2377.y);
          let x_2380 : vec3<f32> = u_xlat27;
          let x_2383 : vec2<f32> = ((vec2<f32>(x_2380.x, x_2380.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2384 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2383.x, x_2384.y, x_2383.y);
          let x_2386 : vec3<f32> = u_xlat27;
          let x_2390 : vec2<f32> = clamp(vec2<f32>(x_2386.x, x_2386.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2391 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2390.x, x_2391.y, x_2390.y);
          let x_2393 : u32 = u_xlatu62;
          let x_2396 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2393)];
          let x_2398 : vec3<f32> = u_xlat27;
          let x_2401 : u32 = u_xlatu62;
          let x_2404 : vec4<f32> = x_2031.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2401)];
          let x_2406 : vec2<f32> = ((vec2<f32>(x_2396.x, x_2396.y) * vec2<f32>(x_2398.x, x_2398.z)) + vec2<f32>(x_2404.z, x_2404.w));
          let x_2407 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2406.x, x_2407.y, x_2406.y, x_2407.w);
        }
      }
      let x_2414 : vec4<f32> = u_xlat8;
      let x_2417 : f32 = x_44.x_GlobalMipBias.x;
      let x_2418 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2414.x, x_2414.z), x_2417);
      u_xlat8 = x_2418;
      let x_2420 : bool = u_xlatb5.y;
      if (x_2420) {
        let x_2425 : f32 = u_xlat8.w;
        x_2421 = x_2425;
      } else {
        let x_2428 : f32 = u_xlat8.x;
        x_2421 = x_2428;
      }
      let x_2429 : f32 = x_2421;
      u_xlat64 = x_2429;
      let x_2431 : bool = u_xlatb5.x;
      if (x_2431) {
        let x_2435 : vec4<f32> = u_xlat8;
        x_2432 = vec3<f32>(x_2435.x, x_2435.y, x_2435.z);
      } else {
        let x_2438 : f32 = u_xlat64;
        x_2432 = vec3<f32>(x_2438, x_2438, x_2438);
      }
      let x_2440 : vec3<f32> = x_2432;
      let x_2441 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2447 : vec4<f32> = u_xlat8;
    let x_2449 : u32 = u_xlatu62;
    let x_2452 : vec4<f32> = x_1921.x_AdditionalLightsColor[bitcast<i32>(x_2449)];
    let x_2454 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
    let x_2455 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
    let x_2457 : f32 = u_xlat60;
    let x_2459 : vec4<f32> = u_xlat8;
    let x_2461 : vec3<f32> = (vec3<f32>(x_2457, x_2457, x_2457) * vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
    let x_2462 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
    let x_2464 : f32 = u_xlat63;
    let x_2466 : vec4<f32> = u_xlat8;
    let x_2468 : vec3<f32> = (vec3<f32>(x_2464, x_2464, x_2464) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
    let x_2469 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
    let x_2471 : vec3<f32> = u_xlat1;
    let x_2472 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(x_2471, vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
    let x_2475 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2475, 0.0f, 1.0f);
    let x_2477 : f32 = u_xlat62;
    let x_2479 : vec4<f32> = u_xlat8;
    let x_2481 : vec3<f32> = (vec3<f32>(x_2477, x_2477, x_2477) * vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
    let x_2482 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
    let x_2484 : vec3<f32> = u_xlat2;
    let x_2485 : f32 = u_xlat58;
    let x_2488 : vec4<f32> = u_xlat7;
    let x_2490 : vec3<f32> = ((x_2484 * vec3<f32>(x_2485, x_2485, x_2485)) + vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
    let x_2491 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
    let x_2493 : vec4<f32> = u_xlat7;
    let x_2495 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_2493.x, x_2493.y, x_2493.z), vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
    let x_2498 : f32 = u_xlat62;
    u_xlat62 = max(x_2498, 1.17549435e-37f);
    let x_2500 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2500);
    let x_2502 : f32 = u_xlat62;
    let x_2504 : vec4<f32> = u_xlat7;
    let x_2506 : vec3<f32> = (vec3<f32>(x_2502, x_2502, x_2502) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
    let x_2507 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
    let x_2509 : vec3<f32> = u_xlat1;
    let x_2510 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(x_2509, vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
    let x_2513 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2513, 0.0f, 1.0f);
    let x_2515 : f32 = u_xlat62;
    u_xlat62 = log2(x_2515);
    let x_2517 : f32 = u_xlat59;
    let x_2518 : f32 = u_xlat62;
    u_xlat62 = (x_2517 * x_2518);
    let x_2520 : f32 = u_xlat62;
    u_xlat62 = exp2(x_2520);
    let x_2522 : f32 = u_xlat62;
    let x_2525 : vec4<f32> = x_56.x_SpecColor;
    let x_2527 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
    let x_2528 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
    let x_2530 : vec4<f32> = u_xlat7;
    let x_2532 : vec4<f32> = u_xlat8;
    let x_2534 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
    let x_2535 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
    let x_2537 : vec4<f32> = u_xlat9;
    let x_2539 : vec4<f32> = u_xlat0;
    let x_2542 : vec4<f32> = u_xlat7;
    let x_2544 : vec3<f32> = ((vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * vec3<f32>(x_2539.y, x_2539.z, x_2539.w)) + vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
    let x_2545 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
    let x_2547 : vec4<f32> = u_xlat6;
    let x_2549 : vec4<f32> = u_xlat7;
    let x_2551 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) + vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2552 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);

    continuing {
      let x_2554 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2554 + bitcast<u32>(1i));
    }
  }
  let x_2557 : vec4<f32> = u_xlat3;
  let x_2559 : vec4<f32> = u_xlat0;
  let x_2562 : vec4<f32> = u_xlat4;
  u_xlat19 = ((vec3<f32>(x_2557.x, x_2557.y, x_2557.z) * vec3<f32>(x_2559.y, x_2559.z, x_2559.w)) + vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2567 : vec4<f32> = u_xlat6;
  let x_2569 : vec3<f32> = u_xlat19;
  let x_2570 : vec3<f32> = (vec3<f32>(x_2567.x, x_2567.y, x_2567.z) + x_2569);
  let x_2571 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
  let x_2575 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2575 == 1.0f);
  let x_2577 : bool = u_xlatb19;
  if (x_2577) {
    let x_2582 : f32 = u_xlat0.x;
    x_2578 = x_2582;
  } else {
    x_2578 = 1.0f;
  }
  let x_2584 : f32 = x_2578;
  SV_Target0.w = x_2584;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

