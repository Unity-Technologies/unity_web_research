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
  unity_FogColor : vec4<f32>,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_269 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1624 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1848 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1957 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlatb21 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat59 : f32;
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
  var u_xlat22 : f32;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb57 : bool;
  var x_1573 : f32;
  var x_1692 : f32;
  var x_1703 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati59 : i32;
  var u_xlat58 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat60 : f32;
  var u_xlatu60 : u32;
  var u_xlati7 : i32;
  var u_xlati60 : i32;
  var u_xlati25 : i32;
  var u_xlatb60 : bool;
  var u_xlatb25 : vec3<bool>;
  var u_xlat25 : vec3<f32>;
  var x_2272 : f32;
  var x_2285 : f32;
  var x_2347 : f32;
  var x_2358 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2467 : f32;
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
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec3<f32> = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_84 : f32 = vs_TEXCOORD1.y;
  let x_88 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_84 * x_88);
  let x_92 : f32 = x_44.unity_MatrixV[0i].z;
  let x_94 : f32 = vs_TEXCOORD1.x;
  let x_96 : f32 = u_xlat2;
  u_xlat2 = ((x_92 * x_94) + x_96);
  let x_100 : f32 = x_44.unity_MatrixV[2i].z;
  let x_102 : f32 = vs_TEXCOORD1.z;
  let x_104 : f32 = u_xlat2;
  u_xlat2 = ((x_100 * x_102) + x_104);
  let x_106 : f32 = u_xlat2;
  let x_109 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_106 + x_109);
  let x_111 : f32 = u_xlat2;
  let x_115 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_111) + -(x_115));
  let x_118 : f32 = u_xlat2;
  u_xlat2 = max(x_118, 0.0f);
  let x_121 : f32 = u_xlat2;
  let x_124 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_121 * x_124);
  u_xlat1.w = 1.0f;
  let x_135 : vec4<f32> = x_132.unity_SHAr;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_135, x_136);
  let x_141 : vec4<f32> = x_132.unity_SHAg;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_141, x_142);
  let x_147 : vec4<f32> = x_132.unity_SHAb;
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_147, x_148);
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_152.y, x_152.z, x_152.z, x_152.x) * vec4<f32>(x_154.x, x_154.y, x_154.z, x_154.z));
  let x_160 : vec4<f32> = x_132.unity_SHBr;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_132.unity_SHBg;
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_132.unity_SHBb;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_172, x_173);
  let x_178 : f32 = u_xlat1.y;
  let x_180 : f32 = u_xlat1.y;
  u_xlat55 = (x_178 * x_180);
  let x_183 : f32 = u_xlat1.x;
  let x_185 : f32 = u_xlat1.x;
  let x_187 : f32 = u_xlat55;
  u_xlat55 = ((x_183 * x_185) + -(x_187));
  let x_193 : vec4<f32> = x_132.unity_SHC;
  let x_195 : f32 = u_xlat55;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat20 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195, x_195, x_195)) + vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec3<f32> = u_xlat20;
  let x_202 : vec3<f32> = u_xlat3;
  u_xlat20 = (x_201 + x_202);
  let x_204 : vec3<f32> = u_xlat20;
  u_xlat20 = max(x_204, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_209 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_210 : vec2<f32> = vec2<f32>(x_209.x, x_209.y);
  let x_214 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_210.x, x_210.y));
  let x_215 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_215.z);
  let x_217 : vec3<f32> = u_xlat3;
  let x_219 : vec4<f32> = hlslcc_FragCoord;
  let x_221 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) * vec2<f32>(x_219.x, x_219.y));
  let x_222 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_221.x, x_221.y, x_222.z);
  let x_225 : f32 = u_xlat3.y;
  let x_228 : f32 = x_44.x_ScaleBiasRt.x;
  let x_231 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat55 = ((x_225 * x_228) + x_231);
  let x_233 : f32 = u_xlat55;
  u_xlat3.z = (-(x_233) + 1.0f);
  let x_242 : vec3<f32> = u_xlat3;
  let x_245 : f32 = x_44.x_GlobalMipBias.x;
  let x_246 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_242.x, x_242.z), x_245);
  u_xlat55 = x_246.x;
  let x_248 : f32 = u_xlat55;
  u_xlat3.x = (x_248 + -1.0f);
  let x_254 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_256 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_254 * x_256) + 1.0f);
  let x_260 : f32 = u_xlat55;
  u_xlat55 = min(x_260, 1.0f);
  let x_271 : f32 = x_269.x_MainLightShadowParams.y;
  u_xlatb21 = (0.0f < x_271);
  let x_273 : bool = u_xlatb21;
  if (x_273) {
    let x_277 : f32 = x_269.x_MainLightShadowParams.y;
    u_xlatb21 = (x_277 == 1.0f);
    let x_279 : bool = u_xlatb21;
    if (x_279) {
      let x_283 : vec4<f32> = vs_TEXCOORD6;
      let x_287 : vec4<f32> = x_269.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_283.x, x_283.y, x_283.x, x_283.y) + x_287);
      let x_290 : vec4<f32> = u_xlat4;
      let x_291 : vec2<f32> = vec2<f32>(x_290.x, x_290.y);
      let x_293 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_291.x, x_291.y, x_293);
      let x_305 : vec3<f32> = txVec0;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_305.xy, x_305.z);
      u_xlat5.x = x_307;
      let x_310 : vec4<f32> = u_xlat4;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec1;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_320.xy, x_320.z);
      u_xlat5.y = x_322;
      let x_324 : vec4<f32> = vs_TEXCOORD6;
      let x_327 : vec4<f32> = x_269.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_327);
      let x_330 : vec4<f32> = u_xlat4;
      let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
      let x_333 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_331.x, x_331.y, x_333);
      let x_340 : vec3<f32> = txVec2;
      let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_340.xy, x_340.z);
      u_xlat5.z = x_342;
      let x_345 : vec4<f32> = u_xlat4;
      let x_346 : vec2<f32> = vec2<f32>(x_345.z, x_345.w);
      let x_348 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_346.x, x_346.y, x_348);
      let x_355 : vec3<f32> = txVec3;
      let x_357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_355.xy, x_355.z);
      u_xlat5.w = x_357;
      let x_360 : vec4<f32> = u_xlat5;
      u_xlat21.x = dot(x_360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_370 : f32 = x_269.x_MainLightShadowParams.y;
      u_xlatb39.x = (x_370 == 2.0f);
      let x_375 : bool = u_xlatb39.x;
      if (x_375) {
        let x_380 : vec4<f32> = vs_TEXCOORD6;
        let x_383 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_383.z, x_383.w)) + vec2<f32>(0.5f, 0.5f));
        let x_389 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_389);
        let x_391 : vec4<f32> = vs_TEXCOORD6;
        let x_394 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_397 : vec2<f32> = u_xlat39;
        let x_399 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_394.z, x_394.w)) + -(x_397));
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_402 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_402.x, x_402.x, x_402.y, x_402.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_407 : vec4<f32> = u_xlat5;
        let x_409 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_407.x, x_407.x, x_407.z, x_407.z) * vec4<f32>(x_409.x, x_409.x, x_409.z, x_409.z));
        let x_413 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_413.y, x_413.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_418 : vec4<f32> = u_xlat6;
        let x_421 : vec4<f32> = u_xlat4;
        let x_424 : vec2<f32> = ((vec2<f32>(x_418.x, x_418.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_421.x, x_421.y)));
        let x_425 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_424.x, x_425.y, x_424.y, x_425.w);
        let x_427 : vec4<f32> = u_xlat4;
        let x_430 : vec2<f32> = (-(vec2<f32>(x_427.x, x_427.y)) + vec2<f32>(1.0f, 1.0f));
        let x_431 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_434 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_434.x, x_434.y), vec2<f32>(0.0f, 0.0f));
        let x_438 : vec2<f32> = u_xlat42;
        let x_440 : vec2<f32> = u_xlat42;
        let x_442 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_438) * x_440) + vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat4;
        let x_447 : vec2<f32> = max(vec2<f32>(x_445.x, x_445.y), vec2<f32>(0.0f, 0.0f));
        let x_448 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_450 : vec4<f32> = u_xlat4;
        let x_453 : vec4<f32> = u_xlat4;
        let x_456 : vec4<f32> = u_xlat5;
        let x_458 : vec2<f32> = ((-(vec2<f32>(x_450.x, x_450.y)) * vec2<f32>(x_453.x, x_453.y)) + vec2<f32>(x_456.y, x_456.w));
        let x_459 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_461 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_461 + vec2<f32>(1.0f, 1.0f));
        let x_463 : vec4<f32> = u_xlat4;
        let x_465 : vec2<f32> = (vec2<f32>(x_463.x, x_463.y) + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_469 : vec4<f32> = u_xlat5;
        let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_477 : vec4<f32> = u_xlat6;
        let x_479 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec2<f32> = u_xlat42;
        let x_483 : vec2<f32> = (x_482 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_487 : vec4<f32> = u_xlat4;
        let x_489 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_490 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec4<f32> = u_xlat5;
        let x_494 : vec2<f32> = (vec2<f32>(x_492.y, x_492.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_495 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_498 : f32 = u_xlat6.x;
        u_xlat7.z = x_498;
        let x_501 : f32 = u_xlat4.x;
        u_xlat7.w = x_501;
        let x_504 : f32 = u_xlat9.x;
        u_xlat8.z = x_504;
        let x_507 : f32 = u_xlat40.x;
        u_xlat8.w = x_507;
        let x_509 : vec4<f32> = u_xlat7;
        let x_511 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_509.z, x_509.w, x_509.x, x_509.z) + vec4<f32>(x_511.z, x_511.w, x_511.x, x_511.z));
        let x_515 : f32 = u_xlat7.y;
        u_xlat6.z = x_515;
        let x_518 : f32 = u_xlat4.y;
        u_xlat6.w = x_518;
        let x_521 : f32 = u_xlat8.y;
        u_xlat9.z = x_521;
        let x_524 : f32 = u_xlat40.y;
        u_xlat9.w = x_524;
        let x_526 : vec4<f32> = u_xlat6;
        let x_528 : vec4<f32> = u_xlat9;
        let x_530 : vec3<f32> = (vec3<f32>(x_526.z, x_526.y, x_526.w) + vec3<f32>(x_528.z, x_528.y, x_528.w));
        let x_531 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat8;
        let x_535 : vec4<f32> = u_xlat5;
        let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.z, x_533.w) / vec3<f32>(x_535.z, x_535.w, x_535.y));
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat6;
        let x_546 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat9;
        let x_551 : vec4<f32> = u_xlat4;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) / vec3<f32>(x_551.x, x_551.y, x_551.z));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat7;
        let x_558 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_559 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat6;
        let x_564 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.y, x_561.x, x_561.z) * vec3<f32>(x_564.x, x_564.x, x_564.x));
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat7;
        let x_572 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.y, x_572.y, x_572.y));
        let x_575 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_578 : f32 = u_xlat7.x;
        u_xlat6.w = x_578;
        let x_580 : vec2<f32> = u_xlat39;
        let x_583 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.y, x_586.w, x_586.x, x_586.w));
        let x_589 : vec2<f32> = u_xlat39;
        let x_591 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat6;
        let x_596 : vec2<f32> = ((x_589 * vec2<f32>(x_591.x, x_591.y)) + vec2<f32>(x_594.z, x_594.w));
        let x_597 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
        let x_600 : f32 = u_xlat6.y;
        u_xlat7.w = x_600;
        let x_602 : vec4<f32> = u_xlat7;
        let x_603 : vec2<f32> = vec2<f32>(x_602.y, x_602.z);
        let x_604 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_604.x, x_603.x, x_604.z, x_603.y);
        let x_607 : vec2<f32> = u_xlat39;
        let x_610 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_613 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) * vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y)) + vec4<f32>(x_613.x, x_613.y, x_613.z, x_613.y));
        let x_616 : vec2<f32> = u_xlat39;
        let x_619 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y)) + vec4<f32>(x_622.w, x_622.y, x_622.w, x_622.z));
        let x_625 : vec2<f32> = u_xlat39;
        let x_628 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.x, x_631.w, x_631.z, x_631.w));
        let x_635 : vec4<f32> = u_xlat4;
        let x_637 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_635.x, x_635.x, x_635.x, x_635.y) * vec4<f32>(x_637.z, x_637.w, x_637.y, x_637.z));
        let x_641 : vec4<f32> = u_xlat4;
        let x_643 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_641.y, x_641.y, x_641.z, x_641.z) * x_643);
        let x_646 : f32 = u_xlat4.z;
        let x_648 : f32 = u_xlat5.y;
        u_xlat39.x = (x_646 * x_648);
        let x_652 : vec4<f32> = u_xlat8;
        let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_663 : vec3<f32> = txVec4;
        let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_663.xy, x_663.z);
        u_xlat57 = x_665;
        let x_667 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = vec2<f32>(x_667.z, x_667.w);
        let x_670 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_668.x, x_668.y, x_670);
        let x_677 : vec3<f32> = txVec5;
        let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
        u_xlat4.x = x_679;
        let x_682 : f32 = u_xlat4.x;
        let x_684 : f32 = u_xlat11.y;
        u_xlat4.x = (x_682 * x_684);
        let x_688 : f32 = u_xlat11.x;
        let x_689 : f32 = u_xlat57;
        let x_692 : f32 = u_xlat4.x;
        u_xlat57 = ((x_688 * x_689) + x_692);
        let x_695 : vec4<f32> = u_xlat9;
        let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
        let x_698 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec6;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_705.xy, x_705.z);
        u_xlat4.x = x_707;
        let x_710 : f32 = u_xlat11.z;
        let x_712 : f32 = u_xlat4.x;
        let x_714 : f32 = u_xlat57;
        u_xlat57 = ((x_710 * x_712) + x_714);
        let x_717 : vec4<f32> = u_xlat7;
        let x_718 : vec2<f32> = vec2<f32>(x_717.x, x_717.y);
        let x_720 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_718.x, x_718.y, x_720);
        let x_727 : vec3<f32> = txVec7;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat4.x = x_729;
        let x_732 : f32 = u_xlat11.w;
        let x_734 : f32 = u_xlat4.x;
        let x_736 : f32 = u_xlat57;
        u_xlat57 = ((x_732 * x_734) + x_736);
        let x_739 : vec4<f32> = u_xlat10;
        let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
        let x_742 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_740.x, x_740.y, x_742);
        let x_749 : vec3<f32> = txVec8;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
        u_xlat4.x = x_751;
        let x_754 : f32 = u_xlat12.x;
        let x_756 : f32 = u_xlat4.x;
        let x_758 : f32 = u_xlat57;
        u_xlat57 = ((x_754 * x_756) + x_758);
        let x_761 : vec4<f32> = u_xlat10;
        let x_762 : vec2<f32> = vec2<f32>(x_761.z, x_761.w);
        let x_764 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_762.x, x_762.y, x_764);
        let x_771 : vec3<f32> = txVec9;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_771.xy, x_771.z);
        u_xlat4.x = x_773;
        let x_776 : f32 = u_xlat12.y;
        let x_778 : f32 = u_xlat4.x;
        let x_780 : f32 = u_xlat57;
        u_xlat57 = ((x_776 * x_778) + x_780);
        let x_783 : vec4<f32> = u_xlat7;
        let x_784 : vec2<f32> = vec2<f32>(x_783.z, x_783.w);
        let x_786 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec10;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_793.xy, x_793.z);
        u_xlat4.x = x_795;
        let x_798 : f32 = u_xlat12.z;
        let x_800 : f32 = u_xlat4.x;
        let x_802 : f32 = u_xlat57;
        u_xlat57 = ((x_798 * x_800) + x_802);
        let x_805 : vec4<f32> = u_xlat6;
        let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
        let x_808 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec11;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_815.xy, x_815.z);
        u_xlat4.x = x_817;
        let x_820 : f32 = u_xlat12.w;
        let x_822 : f32 = u_xlat4.x;
        let x_824 : f32 = u_xlat57;
        u_xlat57 = ((x_820 * x_822) + x_824);
        let x_827 : vec4<f32> = u_xlat6;
        let x_828 : vec2<f32> = vec2<f32>(x_827.z, x_827.w);
        let x_830 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec12;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
        u_xlat4.x = x_839;
        let x_842 : f32 = u_xlat39.x;
        let x_844 : f32 = u_xlat4.x;
        let x_846 : f32 = u_xlat57;
        u_xlat21.x = ((x_842 * x_844) + x_846);
      } else {
        let x_850 : vec4<f32> = vs_TEXCOORD6;
        let x_853 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_853.z, x_853.w)) + vec2<f32>(0.5f, 0.5f));
        let x_857 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_857);
        let x_859 : vec4<f32> = vs_TEXCOORD6;
        let x_862 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_865 : vec2<f32> = u_xlat39;
        let x_867 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.z, x_862.w)) + -(x_865));
        let x_868 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
        let x_870 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_870.x, x_870.x, x_870.y, x_870.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_873 : vec4<f32> = u_xlat5;
        let x_875 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_873.x, x_873.x, x_873.z, x_873.z) * vec4<f32>(x_875.x, x_875.x, x_875.z, x_875.z));
        let x_878 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = (vec2<f32>(x_878.y, x_878.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_883.x, x_882.x, x_883.z, x_882.y);
        let x_885 : vec4<f32> = u_xlat6;
        let x_888 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_885.x, x_885.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_888.x, x_888.y)));
        let x_892 : vec4<f32> = u_xlat4;
        let x_895 : vec2<f32> = (-(vec2<f32>(x_892.x, x_892.y)) + vec2<f32>(1.0f, 1.0f));
        let x_896 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_895.x, x_896.y, x_895.y, x_896.w);
        let x_898 : vec4<f32> = u_xlat4;
        let x_900 : vec2<f32> = min(vec2<f32>(x_898.x, x_898.y), vec2<f32>(0.0f, 0.0f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_906 : vec4<f32> = u_xlat6;
        let x_909 : vec4<f32> = u_xlat5;
        let x_911 : vec2<f32> = ((-(vec2<f32>(x_903.x, x_903.y)) * vec2<f32>(x_906.x, x_906.y)) + vec2<f32>(x_909.x, x_909.z));
        let x_912 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        let x_914 : vec4<f32> = u_xlat4;
        let x_916 : vec2<f32> = max(vec2<f32>(x_914.x, x_914.y), vec2<f32>(0.0f, 0.0f));
        let x_917 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat6;
        let x_922 : vec4<f32> = u_xlat6;
        let x_925 : vec4<f32> = u_xlat5;
        let x_927 : vec2<f32> = ((-(vec2<f32>(x_919.x, x_919.y)) * vec2<f32>(x_922.x, x_922.y)) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_928.x, x_927.x, x_928.z, x_927.y);
        let x_930 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_930 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_934 : f32 = u_xlat5.y;
        u_xlat6.z = (x_934 * 0.081632003f);
        let x_938 : vec2<f32> = u_xlat40;
        let x_941 : vec2<f32> = (vec2<f32>(x_938.y, x_938.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_944.x, x_944.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_948 : f32 = u_xlat5.w;
        u_xlat8.z = (x_948 * 0.081632003f);
        let x_952 : f32 = u_xlat8.y;
        u_xlat6.x = x_952;
        let x_954 : vec4<f32> = u_xlat4;
        let x_961 : vec2<f32> = ((vec2<f32>(x_954.x, x_954.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_962.x, x_961.x, x_962.z, x_961.y);
        let x_964 : vec4<f32> = u_xlat4;
        let x_968 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_969.y, x_968.y, x_969.w);
        let x_972 : f32 = u_xlat40.x;
        u_xlat5.y = x_972;
        let x_975 : f32 = u_xlat7.y;
        u_xlat5.w = x_975;
        let x_977 : vec4<f32> = u_xlat5;
        let x_978 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_977 + x_978);
        let x_980 : vec4<f32> = u_xlat4;
        let x_983 : vec2<f32> = ((vec2<f32>(x_980.y, x_980.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_983.x, x_984.z, x_983.y);
        let x_986 : vec4<f32> = u_xlat4;
        let x_989 : vec2<f32> = ((vec2<f32>(x_986.y, x_986.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_989.x, x_990.y, x_989.y, x_990.w);
        let x_993 : f32 = u_xlat40.y;
        u_xlat7.y = x_993;
        let x_995 : vec4<f32> = u_xlat7;
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_995 + x_996);
        let x_998 : vec4<f32> = u_xlat5;
        let x_999 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_998 / x_999);
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1001 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1008 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_1007 / x_1008);
        let x_1010 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1010 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1012 : vec4<f32> = u_xlat5;
        let x_1015 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1012.w, x_1012.x, x_1012.y, x_1012.z) * vec4<f32>(x_1015.x, x_1015.x, x_1015.x, x_1015.x));
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1021 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1018.x, x_1018.w, x_1018.y, x_1018.z) * vec4<f32>(x_1021.y, x_1021.y, x_1021.y, x_1021.y));
        let x_1024 : vec4<f32> = u_xlat5;
        let x_1025 : vec3<f32> = vec3<f32>(x_1024.y, x_1024.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1026.y, x_1025.y, x_1025.z);
        let x_1029 : f32 = u_xlat7.x;
        u_xlat8.y = x_1029;
        let x_1031 : vec2<f32> = u_xlat39;
        let x_1034 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y) * vec4<f32>(x_1034.x, x_1034.y, x_1034.x, x_1034.y)) + vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1037.y));
        let x_1040 : vec2<f32> = u_xlat39;
        let x_1042 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1047 : vec2<f32> = ((x_1040 * vec2<f32>(x_1042.x, x_1042.y)) + vec2<f32>(x_1045.w, x_1045.y));
        let x_1048 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1051 : f32 = u_xlat8.y;
        u_xlat5.y = x_1051;
        let x_1054 : f32 = u_xlat7.z;
        u_xlat8.y = x_1054;
        let x_1056 : vec2<f32> = u_xlat39;
        let x_1059 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y) * vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y)) + vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1062.y));
        let x_1066 : vec2<f32> = u_xlat39;
        let x_1068 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1066 * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1071.w, x_1071.y));
        let x_1075 : f32 = u_xlat8.y;
        u_xlat5.z = x_1075;
        let x_1077 : vec2<f32> = u_xlat39;
        let x_1080 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.z));
        let x_1087 : f32 = u_xlat7.w;
        u_xlat8.y = x_1087;
        let x_1090 : vec2<f32> = u_xlat39;
        let x_1093 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.y));
        let x_1100 : vec2<f32> = u_xlat39;
        let x_1102 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1100 * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
        let x_1109 : f32 = u_xlat8.y;
        u_xlat5.w = x_1109;
        let x_1112 : vec2<f32> = u_xlat39;
        let x_1114 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat5;
        u_xlat14 = ((x_1112 * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.x, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1121 : vec3<f32> = vec3<f32>(x_1120.x, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1121.z);
        let x_1124 : vec2<f32> = u_xlat39;
        let x_1127 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec2<f32> = u_xlat39;
        let x_1136 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat43 = ((x_1134 * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat5.x;
        u_xlat7.x = x_1143;
        let x_1145 : vec2<f32> = u_xlat39;
        let x_1147 : vec4<f32> = x_269.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat39 = ((x_1145 * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.x, x_1150.y));
        let x_1154 : vec4<f32> = u_xlat4;
        let x_1156 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1154.x, x_1154.x, x_1154.x, x_1154.x) * x_1156);
        let x_1159 : vec4<f32> = u_xlat4;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1159.y, x_1159.y, x_1159.y, x_1159.y) * x_1161);
        let x_1164 : vec4<f32> = u_xlat4;
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1164.z, x_1164.z, x_1164.z, x_1164.z) * x_1166);
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1168.w, x_1168.w, x_1168.w, x_1168.w) * x_1170);
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec13;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1183.xy, x_1183.z);
        u_xlat5.x = x_1185;
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.z, x_1188.w);
        let x_1191 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1199 : vec3<f32> = txVec14;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
        u_xlat59 = x_1201;
        let x_1202 : f32 = u_xlat59;
        let x_1204 : f32 = u_xlat15.y;
        u_xlat59 = (x_1202 * x_1204);
        let x_1207 : f32 = u_xlat15.x;
        let x_1209 : f32 = u_xlat5.x;
        let x_1211 : f32 = u_xlat59;
        u_xlat5.x = ((x_1207 * x_1209) + x_1211);
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec15;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1225.xy, x_1225.z);
        u_xlat59 = x_1227;
        let x_1229 : f32 = u_xlat15.z;
        let x_1230 : f32 = u_xlat59;
        let x_1233 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat12;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec16;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat59 = x_1249;
        let x_1251 : f32 = u_xlat15.w;
        let x_1252 : f32 = u_xlat59;
        let x_1255 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec17;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat59 = x_1271;
        let x_1273 : f32 = u_xlat16.x;
        let x_1274 : f32 = u_xlat59;
        let x_1277 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.z, x_1281.w);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec18;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat59 = x_1293;
        let x_1295 : f32 = u_xlat16.y;
        let x_1296 : f32 = u_xlat59;
        let x_1299 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1295 * x_1296) + x_1299);
        let x_1303 : vec2<f32> = u_xlat46;
        let x_1305 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec19;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat59 = x_1314;
        let x_1316 : f32 = u_xlat16.z;
        let x_1317 : f32 = u_xlat59;
        let x_1320 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1316 * x_1317) + x_1320);
        let x_1324 : vec4<f32> = u_xlat12;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec20;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat59 = x_1336;
        let x_1338 : f32 = u_xlat16.w;
        let x_1339 : f32 = u_xlat59;
        let x_1342 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1338 * x_1339) + x_1342);
        let x_1346 : vec4<f32> = u_xlat13;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec21;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat59 = x_1358;
        let x_1360 : f32 = u_xlat17.x;
        let x_1361 : f32 = u_xlat59;
        let x_1364 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1360 * x_1361) + x_1364);
        let x_1368 : vec4<f32> = u_xlat13;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.z, x_1368.w);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec22;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat59 = x_1380;
        let x_1382 : f32 = u_xlat17.y;
        let x_1383 : f32 = u_xlat59;
        let x_1386 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1382 * x_1383) + x_1386);
        let x_1390 : vec2<f32> = u_xlat23;
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec23;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1399.xy, x_1399.z);
        u_xlat23.x = x_1401;
        let x_1404 : f32 = u_xlat17.z;
        let x_1406 : f32 = u_xlat23.x;
        let x_1409 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1404 * x_1406) + x_1409);
        let x_1413 : vec2<f32> = u_xlat14;
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec24;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat23.x = x_1424;
        let x_1427 : f32 = u_xlat17.w;
        let x_1429 : f32 = u_xlat23.x;
        let x_1432 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1427 * x_1429) + x_1432);
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec25;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat23.x = x_1448;
        let x_1451 : f32 = u_xlat4.x;
        let x_1453 : f32 = u_xlat23.x;
        let x_1456 : f32 = u_xlat5.x;
        u_xlat4.x = ((x_1451 * x_1453) + x_1456);
        let x_1460 : vec4<f32> = u_xlat8;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec26;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat5.x = x_1472;
        let x_1475 : f32 = u_xlat4.y;
        let x_1477 : f32 = u_xlat5.x;
        let x_1480 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1475 * x_1477) + x_1480);
        let x_1484 : vec2<f32> = u_xlat43;
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1494 : vec3<f32> = txVec27;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat22 = x_1496;
        let x_1498 : f32 = u_xlat4.z;
        let x_1499 : f32 = u_xlat22;
        let x_1502 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec2<f32> = u_xlat39;
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec28;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat39.x = x_1517;
        let x_1520 : f32 = u_xlat4.w;
        let x_1522 : f32 = u_xlat39.x;
        let x_1525 : f32 = u_xlat4.x;
        u_xlat21.x = ((x_1520 * x_1522) + x_1525);
      }
    }
  } else {
    let x_1530 : vec4<f32> = vs_TEXCOORD6;
    let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
    let x_1533 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
    let x_1540 : vec3<f32> = txVec29;
    let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
    u_xlat21.x = x_1542;
  }
  let x_1545 : f32 = x_269.x_MainLightShadowParams.x;
  u_xlat39.x = (-(x_1545) + 1.0f);
  let x_1550 : f32 = u_xlat21.x;
  let x_1552 : f32 = x_269.x_MainLightShadowParams.x;
  let x_1555 : f32 = u_xlat39.x;
  u_xlat21.x = ((x_1550 * x_1552) + x_1555);
  let x_1559 : f32 = vs_TEXCOORD6.z;
  u_xlatb39.x = (0.0f >= x_1559);
  let x_1564 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1564 >= 1.0f);
  let x_1566 : bool = u_xlatb57;
  let x_1568 : bool = u_xlatb39.x;
  u_xlatb39.x = (x_1566 | x_1568);
  let x_1572 : bool = u_xlatb39.x;
  if (x_1572) {
    x_1573 = 1.0f;
  } else {
    let x_1578 : f32 = u_xlat21.x;
    x_1573 = x_1578;
  }
  let x_1579 : f32 = x_1573;
  u_xlat21.x = x_1579;
  let x_1581 : vec3<f32> = vs_TEXCOORD1;
  let x_1584 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1586 : vec3<f32> = (x_1581 + -(x_1584));
  let x_1587 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
  let x_1589 : vec4<f32> = u_xlat4;
  let x_1591 : vec4<f32> = u_xlat4;
  u_xlat39.x = dot(vec3<f32>(x_1589.x, x_1589.y, x_1589.z), vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1596 : f32 = u_xlat39.x;
  let x_1598 : f32 = x_269.x_MainLightShadowParams.z;
  let x_1601 : f32 = x_269.x_MainLightShadowParams.w;
  u_xlat39.x = ((x_1596 * x_1598) + x_1601);
  let x_1605 : f32 = u_xlat39.x;
  u_xlat39.x = clamp(x_1605, 0.0f, 1.0f);
  let x_1609 : f32 = u_xlat21.x;
  u_xlat57 = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat39.x;
  let x_1614 : f32 = u_xlat57;
  let x_1617 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_1613 * x_1614) + x_1617);
  let x_1626 : f32 = x_1624.x_MainLightCookieTextureFormat;
  u_xlatb39.x = !((x_1626 == -1.0f));
  let x_1630 : bool = u_xlatb39.x;
  if (x_1630) {
    let x_1633 : vec3<f32> = vs_TEXCOORD1;
    let x_1636 : vec4<f32> = x_1624.x_MainLightWorldToLight[1i];
    u_xlat39 = (vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(x_1636.x, x_1636.y));
    let x_1640 : vec4<f32> = x_1624.x_MainLightWorldToLight[0i];
    let x_1642 : vec3<f32> = vs_TEXCOORD1;
    let x_1645 : vec2<f32> = u_xlat39;
    u_xlat39 = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.x)) + x_1645);
    let x_1648 : vec4<f32> = x_1624.x_MainLightWorldToLight[2i];
    let x_1650 : vec3<f32> = vs_TEXCOORD1;
    let x_1653 : vec2<f32> = u_xlat39;
    u_xlat39 = ((vec2<f32>(x_1648.x, x_1648.y) * vec2<f32>(x_1650.z, x_1650.z)) + x_1653);
    let x_1655 : vec2<f32> = u_xlat39;
    let x_1657 : vec4<f32> = x_1624.x_MainLightWorldToLight[3i];
    u_xlat39 = (x_1655 + vec2<f32>(x_1657.x, x_1657.y));
    let x_1660 : vec2<f32> = u_xlat39;
    u_xlat39 = ((x_1660 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1668 : vec2<f32> = u_xlat39;
    let x_1670 : f32 = x_44.x_GlobalMipBias.x;
    let x_1671 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1668, x_1670);
    u_xlat4 = x_1671;
    let x_1673 : f32 = x_1624.x_MainLightCookieTextureFormat;
    let x_1675 : f32 = x_1624.x_MainLightCookieTextureFormat;
    let x_1677 : f32 = x_1624.x_MainLightCookieTextureFormat;
    let x_1679 : f32 = x_1624.x_MainLightCookieTextureFormat;
    let x_1680 : vec4<f32> = vec4<f32>(x_1673, x_1675, x_1677, x_1679);
    let x_1688 : vec4<bool> = (vec4<f32>(x_1680.x, x_1680.y, x_1680.z, x_1680.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb39 = vec2<bool>(x_1688.x, x_1688.y);
    let x_1691 : bool = u_xlatb39.y;
    if (x_1691) {
      let x_1696 : f32 = u_xlat4.w;
      x_1692 = x_1696;
    } else {
      let x_1699 : f32 = u_xlat4.x;
      x_1692 = x_1699;
    }
    let x_1700 : f32 = x_1692;
    u_xlat57 = x_1700;
    let x_1702 : bool = u_xlatb39.x;
    if (x_1702) {
      let x_1706 : vec4<f32> = u_xlat4;
      x_1703 = vec3<f32>(x_1706.x, x_1706.y, x_1706.z);
    } else {
      let x_1709 : f32 = u_xlat57;
      x_1703 = vec3<f32>(x_1709, x_1709, x_1709);
    }
    let x_1711 : vec3<f32> = x_1703;
    let x_1712 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1718 : vec4<f32> = u_xlat4;
  let x_1721 : vec4<f32> = x_44.x_MainLightColor;
  let x_1723 : vec3<f32> = (vec3<f32>(x_1718.x, x_1718.y, x_1718.z) * vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
  let x_1724 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1726 : vec3<f32> = u_xlat3;
  let x_1728 : vec4<f32> = u_xlat4;
  let x_1730 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.x, x_1726.x) * vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1733 : f32 = u_xlat55;
  let x_1735 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1733, x_1733, x_1733) * x_1735);
  let x_1738 : f32 = u_xlat21.x;
  let x_1741 : f32 = x_132.unity_LightData.z;
  u_xlat55 = (x_1738 * x_1741);
  let x_1743 : f32 = u_xlat55;
  let x_1745 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat1;
  let x_1751 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1748.x, x_1748.y, x_1748.z), vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1754 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1754, 0.0f, 1.0f);
  let x_1756 : f32 = u_xlat55;
  let x_1758 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1756, x_1756, x_1756) * x_1758);
  let x_1760 : vec4<f32> = u_xlat0;
  let x_1762 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1760.y, x_1760.z, x_1760.w) * x_1762);
  let x_1765 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1767 : f32 = x_132.unity_LightData.y;
  u_xlat55 = min(x_1765, x_1767);
  let x_1771 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1771));
  let x_1776 : f32 = x_1624.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1778 : f32 = x_1624.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1780 : f32 = x_1624.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1782 : f32 = x_1624.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1783 : vec4<f32> = vec4<f32>(x_1776, x_1778, x_1780, x_1782);
  let x_1790 : vec4<bool> = (vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1790.x, x_1790.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1801 : u32 = u_xlatu_loop_1;
    let x_1802 : u32 = u_xlatu55;
    if ((x_1801 < x_1802)) {
    } else {
      break;
    }
    let x_1805 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1805 >> 2u);
    let x_1809 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_1809 & 3u));
    let x_1813 : u32 = u_xlatu58;
    let x_1816 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_1813)];
    let x_1826 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1831 : vec4<u32> = indexable[x_1826];
    u_xlat58 = dot(x_1816, bitcast<vec4<f32>>(x_1831));
    let x_1834 : f32 = u_xlat58;
    u_xlatu58 = bitcast<u32>(i32(x_1834));
    let x_1837 : vec3<f32> = vs_TEXCOORD1;
    let x_1849 : u32 = u_xlatu58;
    let x_1852 : vec4<f32> = x_1848.x_AdditionalLightsPosition[bitcast<i32>(x_1849)];
    let x_1855 : u32 = u_xlatu58;
    let x_1858 : vec4<f32> = x_1848.x_AdditionalLightsPosition[bitcast<i32>(x_1855)];
    let x_1860 : vec3<f32> = ((-(x_1837) * vec3<f32>(x_1852.w, x_1852.w, x_1852.w)) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
    let x_1861 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
    let x_1863 : vec4<f32> = u_xlat6;
    let x_1865 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1863.x, x_1863.y, x_1863.z), vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
    let x_1868 : f32 = u_xlat59;
    u_xlat59 = max(x_1868, 6.10351562e-05f);
    let x_1872 : f32 = u_xlat59;
    u_xlat60 = inverseSqrt(x_1872);
    let x_1874 : f32 = u_xlat60;
    let x_1876 : vec4<f32> = u_xlat6;
    let x_1878 : vec3<f32> = (vec3<f32>(x_1874, x_1874, x_1874) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
    let x_1879 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
    let x_1881 : f32 = u_xlat59;
    u_xlat60 = (1.0f / x_1881);
    let x_1883 : f32 = u_xlat59;
    let x_1884 : u32 = u_xlatu58;
    let x_1887 : f32 = x_1848.x_AdditionalLightsAttenuation[bitcast<i32>(x_1884)].x;
    u_xlat59 = (x_1883 * x_1887);
    let x_1889 : f32 = u_xlat59;
    let x_1891 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1889) * x_1891) + 1.0f);
    let x_1894 : f32 = u_xlat59;
    u_xlat59 = max(x_1894, 0.0f);
    let x_1896 : f32 = u_xlat59;
    let x_1897 : f32 = u_xlat59;
    u_xlat59 = (x_1896 * x_1897);
    let x_1899 : f32 = u_xlat59;
    let x_1900 : f32 = u_xlat60;
    u_xlat59 = (x_1899 * x_1900);
    let x_1902 : u32 = u_xlatu58;
    let x_1905 : vec4<f32> = x_1848.x_AdditionalLightsSpotDir[bitcast<i32>(x_1902)];
    let x_1907 : vec4<f32> = u_xlat6;
    u_xlat60 = dot(vec3<f32>(x_1905.x, x_1905.y, x_1905.z), vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
    let x_1910 : f32 = u_xlat60;
    let x_1911 : u32 = u_xlatu58;
    let x_1914 : f32 = x_1848.x_AdditionalLightsAttenuation[bitcast<i32>(x_1911)].z;
    let x_1916 : u32 = u_xlatu58;
    let x_1919 : f32 = x_1848.x_AdditionalLightsAttenuation[bitcast<i32>(x_1916)].w;
    u_xlat60 = ((x_1910 * x_1914) + x_1919);
    let x_1921 : f32 = u_xlat60;
    u_xlat60 = clamp(x_1921, 0.0f, 1.0f);
    let x_1923 : f32 = u_xlat60;
    let x_1924 : f32 = u_xlat60;
    u_xlat60 = (x_1923 * x_1924);
    let x_1926 : f32 = u_xlat59;
    let x_1927 : f32 = u_xlat60;
    u_xlat59 = (x_1926 * x_1927);
    let x_1930 : u32 = u_xlatu58;
    u_xlatu60 = (x_1930 >> 5u);
    let x_1933 : u32 = u_xlatu58;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_1933) & 31i)));
    let x_1939 : i32 = u_xlati7;
    let x_1941 : u32 = u_xlatu60;
    let x_1944 : f32 = x_1624.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1941)].el;
    u_xlati60 = bitcast<i32>((bitcast<u32>(x_1939) & bitcast<u32>(x_1944)));
    let x_1948 : i32 = u_xlati60;
    if ((x_1948 != 0i)) {
      let x_1958 : u32 = u_xlatu58;
      let x_1961 : f32 = x_1957.x_AdditionalLightsLightTypes[bitcast<i32>(x_1958)].el;
      u_xlati60 = i32(x_1961);
      let x_1963 : i32 = u_xlati60;
      u_xlati7 = select(1i, 0i, (x_1963 != 0i));
      let x_1967 : u32 = u_xlatu58;
      u_xlati25 = (bitcast<i32>(x_1967) << bitcast<u32>(2i));
      let x_1970 : i32 = u_xlati7;
      if ((x_1970 != 0i)) {
        let x_1974 : vec3<f32> = vs_TEXCOORD1;
        let x_1976 : i32 = u_xlati25;
        let x_1979 : i32 = u_xlati25;
        let x_1983 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_1976 + 1i) / 4i)][((x_1979 + 1i) % 4i)];
        let x_1985 : vec3<f32> = (vec3<f32>(x_1974.y, x_1974.y, x_1974.y) * vec3<f32>(x_1983.x, x_1983.y, x_1983.w));
        let x_1986 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1985.x, x_1986.y, x_1985.y, x_1985.z);
        let x_1988 : i32 = u_xlati25;
        let x_1990 : i32 = u_xlati25;
        let x_1993 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[(x_1988 / 4i)][(x_1990 % 4i)];
        let x_1995 : vec3<f32> = vs_TEXCOORD1;
        let x_1998 : vec4<f32> = u_xlat7;
        let x_2000 : vec3<f32> = ((vec3<f32>(x_1993.x, x_1993.y, x_1993.w) * vec3<f32>(x_1995.x, x_1995.x, x_1995.x)) + vec3<f32>(x_1998.x, x_1998.z, x_1998.w));
        let x_2001 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2000.x, x_2001.y, x_2000.y, x_2000.z);
        let x_2003 : i32 = u_xlati25;
        let x_2006 : i32 = u_xlati25;
        let x_2010 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2003 + 2i) / 4i)][((x_2006 + 2i) % 4i)];
        let x_2012 : vec3<f32> = vs_TEXCOORD1;
        let x_2015 : vec4<f32> = u_xlat7;
        let x_2017 : vec3<f32> = ((vec3<f32>(x_2010.x, x_2010.y, x_2010.w) * vec3<f32>(x_2012.z, x_2012.z, x_2012.z)) + vec3<f32>(x_2015.x, x_2015.z, x_2015.w));
        let x_2018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2017.x, x_2018.y, x_2017.y, x_2017.z);
        let x_2020 : vec4<f32> = u_xlat7;
        let x_2022 : i32 = u_xlati25;
        let x_2025 : i32 = u_xlati25;
        let x_2029 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2022 + 3i) / 4i)][((x_2025 + 3i) % 4i)];
        let x_2031 : vec3<f32> = (vec3<f32>(x_2020.x, x_2020.z, x_2020.w) + vec3<f32>(x_2029.x, x_2029.y, x_2029.w));
        let x_2032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2031.x, x_2032.y, x_2031.y, x_2031.z);
        let x_2034 : vec4<f32> = u_xlat7;
        let x_2036 : vec4<f32> = u_xlat7;
        let x_2038 : vec2<f32> = (vec2<f32>(x_2034.x, x_2034.z) / vec2<f32>(x_2036.w, x_2036.w));
        let x_2039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2038.x, x_2039.y, x_2038.y, x_2039.w);
        let x_2041 : vec4<f32> = u_xlat7;
        let x_2044 : vec2<f32> = ((vec2<f32>(x_2041.x, x_2041.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2044.x, x_2045.y, x_2044.y, x_2045.w);
        let x_2047 : vec4<f32> = u_xlat7;
        let x_2051 : vec2<f32> = clamp(vec2<f32>(x_2047.x, x_2047.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2052 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2051.x, x_2052.y, x_2051.y, x_2052.w);
        let x_2054 : u32 = u_xlatu58;
        let x_2057 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2054)];
        let x_2059 : vec4<f32> = u_xlat7;
        let x_2062 : u32 = u_xlatu58;
        let x_2065 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2062)];
        let x_2067 : vec2<f32> = ((vec2<f32>(x_2057.x, x_2057.y) * vec2<f32>(x_2059.x, x_2059.z)) + vec2<f32>(x_2065.z, x_2065.w));
        let x_2068 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2067.x, x_2068.y, x_2067.y, x_2068.w);
      } else {
        let x_2072 : i32 = u_xlati60;
        u_xlatb60 = (x_2072 == 1i);
        let x_2074 : bool = u_xlatb60;
        u_xlati60 = select(0i, 1i, x_2074);
        let x_2076 : i32 = u_xlati60;
        if ((x_2076 != 0i)) {
          let x_2080 : vec3<f32> = vs_TEXCOORD1;
          let x_2082 : i32 = u_xlati25;
          let x_2085 : i32 = u_xlati25;
          let x_2089 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2082 + 1i) / 4i)][((x_2085 + 1i) % 4i)];
          let x_2091 : vec2<f32> = (vec2<f32>(x_2080.y, x_2080.y) * vec2<f32>(x_2089.x, x_2089.y));
          let x_2092 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
          let x_2094 : i32 = u_xlati25;
          let x_2096 : i32 = u_xlati25;
          let x_2099 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[(x_2094 / 4i)][(x_2096 % 4i)];
          let x_2101 : vec3<f32> = vs_TEXCOORD1;
          let x_2104 : vec4<f32> = u_xlat8;
          let x_2106 : vec2<f32> = ((vec2<f32>(x_2099.x, x_2099.y) * vec2<f32>(x_2101.x, x_2101.x)) + vec2<f32>(x_2104.x, x_2104.y));
          let x_2107 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2106.x, x_2106.y, x_2107.z, x_2107.w);
          let x_2109 : i32 = u_xlati25;
          let x_2112 : i32 = u_xlati25;
          let x_2116 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2109 + 2i) / 4i)][((x_2112 + 2i) % 4i)];
          let x_2118 : vec3<f32> = vs_TEXCOORD1;
          let x_2121 : vec4<f32> = u_xlat8;
          let x_2123 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.y) * vec2<f32>(x_2118.z, x_2118.z)) + vec2<f32>(x_2121.x, x_2121.y));
          let x_2124 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2123.x, x_2123.y, x_2124.z, x_2124.w);
          let x_2126 : vec4<f32> = u_xlat8;
          let x_2128 : i32 = u_xlati25;
          let x_2131 : i32 = u_xlati25;
          let x_2135 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2128 + 3i) / 4i)][((x_2131 + 3i) % 4i)];
          let x_2137 : vec2<f32> = (vec2<f32>(x_2126.x, x_2126.y) + vec2<f32>(x_2135.x, x_2135.y));
          let x_2138 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2137.x, x_2137.y, x_2138.z, x_2138.w);
          let x_2140 : vec4<f32> = u_xlat8;
          let x_2143 : vec2<f32> = ((vec2<f32>(x_2140.x, x_2140.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2144 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
          let x_2146 : vec4<f32> = u_xlat8;
          let x_2148 : vec2<f32> = fract(vec2<f32>(x_2146.x, x_2146.y));
          let x_2149 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
          let x_2151 : u32 = u_xlatu58;
          let x_2154 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2151)];
          let x_2156 : vec4<f32> = u_xlat8;
          let x_2159 : u32 = u_xlatu58;
          let x_2162 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2159)];
          let x_2164 : vec2<f32> = ((vec2<f32>(x_2154.x, x_2154.y) * vec2<f32>(x_2156.x, x_2156.y)) + vec2<f32>(x_2162.z, x_2162.w));
          let x_2165 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2164.x, x_2165.y, x_2164.y, x_2165.w);
        } else {
          let x_2168 : vec3<f32> = vs_TEXCOORD1;
          let x_2170 : i32 = u_xlati25;
          let x_2173 : i32 = u_xlati25;
          let x_2177 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2170 + 1i) / 4i)][((x_2173 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2168.y, x_2168.y, x_2168.y, x_2168.y) * x_2177);
          let x_2179 : i32 = u_xlati25;
          let x_2181 : i32 = u_xlati25;
          let x_2184 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[(x_2179 / 4i)][(x_2181 % 4i)];
          let x_2185 : vec3<f32> = vs_TEXCOORD1;
          let x_2188 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2184 * vec4<f32>(x_2185.x, x_2185.x, x_2185.x, x_2185.x)) + x_2188);
          let x_2190 : i32 = u_xlati25;
          let x_2193 : i32 = u_xlati25;
          let x_2197 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2190 + 2i) / 4i)][((x_2193 + 2i) % 4i)];
          let x_2198 : vec3<f32> = vs_TEXCOORD1;
          let x_2201 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2197 * vec4<f32>(x_2198.z, x_2198.z, x_2198.z, x_2198.z)) + x_2201);
          let x_2203 : vec4<f32> = u_xlat8;
          let x_2204 : i32 = u_xlati25;
          let x_2207 : i32 = u_xlati25;
          let x_2211 : vec4<f32> = x_1957.x_AdditionalLightsWorldToLights[((x_2204 + 3i) / 4i)][((x_2207 + 3i) % 4i)];
          u_xlat8 = (x_2203 + x_2211);
          let x_2213 : vec4<f32> = u_xlat8;
          let x_2215 : vec4<f32> = u_xlat8;
          let x_2217 : vec3<f32> = (vec3<f32>(x_2213.x, x_2213.y, x_2213.z) / vec3<f32>(x_2215.w, x_2215.w, x_2215.w));
          let x_2218 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
          let x_2220 : vec4<f32> = u_xlat8;
          let x_2222 : vec4<f32> = u_xlat8;
          u_xlat60 = dot(vec3<f32>(x_2220.x, x_2220.y, x_2220.z), vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
          let x_2225 : f32 = u_xlat60;
          u_xlat60 = inverseSqrt(x_2225);
          let x_2227 : f32 = u_xlat60;
          let x_2229 : vec4<f32> = u_xlat8;
          let x_2231 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
          let x_2232 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
          let x_2234 : vec4<f32> = u_xlat8;
          u_xlat60 = dot(abs(vec3<f32>(x_2234.x, x_2234.y, x_2234.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2239 : f32 = u_xlat60;
          u_xlat60 = max(x_2239, 0.000001f);
          let x_2242 : f32 = u_xlat60;
          u_xlat60 = (1.0f / x_2242);
          let x_2244 : f32 = u_xlat60;
          let x_2246 : vec4<f32> = u_xlat8;
          let x_2248 : vec3<f32> = (vec3<f32>(x_2244, x_2244, x_2244) * vec3<f32>(x_2246.z, x_2246.x, x_2246.y));
          let x_2249 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
          let x_2252 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2252);
          let x_2256 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2256, 0.0f, 1.0f);
          let x_2262 : vec4<f32> = u_xlat9;
          let x_2265 : vec4<bool> = (vec4<f32>(x_2262.y, x_2262.y, x_2262.z, x_2262.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2266 : vec2<bool> = vec2<bool>(x_2265.x, x_2265.z);
          let x_2267 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_2266.x, x_2267.y, x_2266.y);
          let x_2271 : bool = u_xlatb25.x;
          if (x_2271) {
            let x_2276 : f32 = u_xlat9.x;
            x_2272 = x_2276;
          } else {
            let x_2279 : f32 = u_xlat9.x;
            x_2272 = -(x_2279);
          }
          let x_2281 : f32 = x_2272;
          u_xlat25.x = x_2281;
          let x_2284 : bool = u_xlatb25.z;
          if (x_2284) {
            let x_2289 : f32 = u_xlat9.x;
            x_2285 = x_2289;
          } else {
            let x_2292 : f32 = u_xlat9.x;
            x_2285 = -(x_2292);
          }
          let x_2294 : f32 = x_2285;
          u_xlat25.z = x_2294;
          let x_2296 : vec4<f32> = u_xlat8;
          let x_2298 : f32 = u_xlat60;
          let x_2301 : vec3<f32> = u_xlat25;
          let x_2303 : vec2<f32> = ((vec2<f32>(x_2296.x, x_2296.y) * vec2<f32>(x_2298, x_2298)) + vec2<f32>(x_2301.x, x_2301.z));
          let x_2304 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2303.x, x_2304.y, x_2303.y);
          let x_2306 : vec3<f32> = u_xlat25;
          let x_2309 : vec2<f32> = ((vec2<f32>(x_2306.x, x_2306.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2310 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2309.x, x_2310.y, x_2309.y);
          let x_2312 : vec3<f32> = u_xlat25;
          let x_2316 : vec2<f32> = clamp(vec2<f32>(x_2312.x, x_2312.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2317 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2316.x, x_2317.y, x_2316.y);
          let x_2319 : u32 = u_xlatu58;
          let x_2322 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2319)];
          let x_2324 : vec3<f32> = u_xlat25;
          let x_2327 : u32 = u_xlatu58;
          let x_2330 : vec4<f32> = x_1957.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2327)];
          let x_2332 : vec2<f32> = ((vec2<f32>(x_2322.x, x_2322.y) * vec2<f32>(x_2324.x, x_2324.z)) + vec2<f32>(x_2330.z, x_2330.w));
          let x_2333 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2332.x, x_2333.y, x_2332.y, x_2333.w);
        }
      }
      let x_2340 : vec4<f32> = u_xlat7;
      let x_2343 : f32 = x_44.x_GlobalMipBias.x;
      let x_2344 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2340.x, x_2340.z), x_2343);
      u_xlat7 = x_2344;
      let x_2346 : bool = u_xlatb4.y;
      if (x_2346) {
        let x_2351 : f32 = u_xlat7.w;
        x_2347 = x_2351;
      } else {
        let x_2354 : f32 = u_xlat7.x;
        x_2347 = x_2354;
      }
      let x_2355 : f32 = x_2347;
      u_xlat60 = x_2355;
      let x_2357 : bool = u_xlatb4.x;
      if (x_2357) {
        let x_2361 : vec4<f32> = u_xlat7;
        x_2358 = vec3<f32>(x_2361.x, x_2361.y, x_2361.z);
      } else {
        let x_2364 : f32 = u_xlat60;
        x_2358 = vec3<f32>(x_2364, x_2364, x_2364);
      }
      let x_2366 : vec3<f32> = x_2358;
      let x_2367 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2373 : vec4<f32> = u_xlat7;
    let x_2375 : u32 = u_xlatu58;
    let x_2378 : vec4<f32> = x_1848.x_AdditionalLightsColor[bitcast<i32>(x_2375)];
    let x_2380 : vec3<f32> = (vec3<f32>(x_2373.x, x_2373.y, x_2373.z) * vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
    let x_2381 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
    let x_2383 : vec3<f32> = u_xlat3;
    let x_2385 : vec4<f32> = u_xlat7;
    let x_2387 : vec3<f32> = (vec3<f32>(x_2383.x, x_2383.x, x_2383.x) * vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
    let x_2388 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
    let x_2390 : f32 = u_xlat59;
    let x_2392 : vec4<f32> = u_xlat7;
    let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
    let x_2395 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
    let x_2397 : vec4<f32> = u_xlat1;
    let x_2399 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_2397.x, x_2397.y, x_2397.z), vec3<f32>(x_2399.x, x_2399.y, x_2399.z));
    let x_2402 : f32 = u_xlat58;
    u_xlat58 = clamp(x_2402, 0.0f, 1.0f);
    let x_2404 : f32 = u_xlat58;
    let x_2406 : vec4<f32> = u_xlat7;
    let x_2408 : vec3<f32> = (vec3<f32>(x_2404, x_2404, x_2404) * vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
    let x_2409 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
    let x_2411 : vec4<f32> = u_xlat6;
    let x_2413 : vec4<f32> = u_xlat0;
    let x_2416 : vec4<f32> = u_xlat5;
    let x_2418 : vec3<f32> = ((vec3<f32>(x_2411.x, x_2411.y, x_2411.z) * vec3<f32>(x_2413.y, x_2413.z, x_2413.w)) + vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
    let x_2419 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);

    continuing {
      let x_2421 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2421 + bitcast<u32>(1i));
    }
  }
  let x_2424 : vec3<f32> = u_xlat20;
  let x_2425 : vec4<f32> = u_xlat0;
  let x_2428 : vec3<f32> = u_xlat21;
  u_xlat18 = ((x_2424 * vec3<f32>(x_2425.y, x_2425.z, x_2425.w)) + x_2428);
  let x_2430 : vec4<f32> = u_xlat5;
  let x_2432 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_2430.x, x_2430.y, x_2430.z) + x_2432);
  let x_2434 : f32 = u_xlat2;
  let x_2435 : f32 = u_xlat2;
  u_xlat1.x = (x_2434 * -(x_2435));
  let x_2440 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2440);
  let x_2443 : vec3<f32> = u_xlat18;
  let x_2446 : vec4<f32> = x_44.unity_FogColor;
  u_xlat18 = (x_2443 + -(vec3<f32>(x_2446.x, x_2446.y, x_2446.z)));
  let x_2452 : vec4<f32> = u_xlat1;
  let x_2454 : vec3<f32> = u_xlat18;
  let x_2457 : vec4<f32> = x_44.unity_FogColor;
  let x_2459 : vec3<f32> = ((vec3<f32>(x_2452.x, x_2452.x, x_2452.x) * x_2454) + vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2464 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_2464 == 1.0f);
  let x_2466 : bool = u_xlatb18;
  if (x_2466) {
    let x_2471 : f32 = u_xlat0.x;
    x_2467 = x_2471;
  } else {
    x_2467 = 1.0f;
  }
  let x_2473 : f32 = x_2467;
  SV_Target0.w = x_2473;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

