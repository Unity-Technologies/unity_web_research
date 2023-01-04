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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_199 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1547 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1677 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1793 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1903 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : vec2<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
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
  var u_xlat39 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
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
  var u_xlatb39 : bool;
  var x_1499 : f32;
  var x_1632 : f32;
  var x_1643 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2206 : f32;
  var x_2219 : f32;
  var x_2281 : f32;
  var x_2292 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2381 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = x_88;
  let x_94 : vec2<f32> = vs_TEXCOORD7;
  let x_96 : f32 = x_43.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_94, x_96);
  let x_98 : vec3<f32> = vec3<f32>(x_97.x, x_97.y, x_97.z);
  let x_99 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat2;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(x_109, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat55;
  u_xlat55 = (x_113 + 0.5f);
  let x_116 : f32 = u_xlat55;
  let x_118 : vec4<f32> = u_xlat3;
  let x_120 : vec3<f32> = (vec3<f32>(x_116, x_116, x_116) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : f32 = u_xlat2.w;
  u_xlat55 = max(x_124, 0.0001f);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : f32 = u_xlat55;
  let x_131 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) / vec3<f32>(x_129, x_129, x_129));
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_137 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_138 : vec2<f32> = vec2<f32>(x_137.x, x_137.y);
  let x_142 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_138.x, x_138.y));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_143.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = hlslcc_FragCoord;
  let x_149 : vec2<f32> = (vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_147.x, x_147.y));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
  let x_154 : f32 = u_xlat3.y;
  let x_157 : f32 = x_43.x_ScaleBiasRt.x;
  let x_160 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_154 * x_157) + x_160);
  let x_162 : f32 = u_xlat55;
  u_xlat3.z = (-(x_162) + 1.0f);
  let x_172 : vec4<f32> = u_xlat3;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat55 = x_176.x;
  let x_179 : f32 = u_xlat55;
  u_xlat56 = (x_179 + -1.0f);
  let x_184 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_185 : f32 = u_xlat56;
  u_xlat56 = ((x_184 * x_185) + 1.0f);
  let x_188 : f32 = u_xlat55;
  u_xlat55 = min(x_188, 1.0f);
  let x_202 : f32 = x_199.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_202);
  let x_204 : bool = u_xlatb3;
  if (x_204) {
    let x_208 : f32 = x_199.x_MainLightShadowParams.y;
    u_xlatb3 = (x_208 == 1.0f);
    let x_210 : bool = u_xlatb3;
    if (x_210) {
      let x_214 : vec4<f32> = vs_TEXCOORD6;
      let x_218 : vec4<f32> = x_199.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) + x_218);
      let x_221 : vec4<f32> = u_xlat3;
      let x_222 : vec2<f32> = vec2<f32>(x_221.x, x_221.y);
      let x_224 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_222.x, x_222.y, x_224);
      let x_237 : vec3<f32> = txVec0;
      let x_239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_237.xy, x_237.z);
      u_xlat4.x = x_239;
      let x_242 : vec4<f32> = u_xlat3;
      let x_243 : vec2<f32> = vec2<f32>(x_242.z, x_242.w);
      let x_245 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_243.x, x_243.y, x_245);
      let x_252 : vec3<f32> = txVec1;
      let x_254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_252.xy, x_252.z);
      u_xlat4.y = x_254;
      let x_256 : vec4<f32> = vs_TEXCOORD6;
      let x_259 : vec4<f32> = x_199.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_256.x, x_256.y, x_256.x, x_256.y) + x_259);
      let x_262 : vec4<f32> = u_xlat3;
      let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_272 : vec3<f32> = txVec2;
      let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_272.xy, x_272.z);
      u_xlat4.z = x_274;
      let x_277 : vec4<f32> = u_xlat3;
      let x_278 : vec2<f32> = vec2<f32>(x_277.z, x_277.w);
      let x_280 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_278.x, x_278.y, x_280);
      let x_287 : vec3<f32> = txVec3;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
      u_xlat4.w = x_289;
      let x_291 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_291, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_301 : f32 = x_199.x_MainLightShadowParams.y;
      u_xlatb21.x = (x_301 == 2.0f);
      let x_306 : bool = u_xlatb21.x;
      if (x_306) {
        let x_310 : vec4<f32> = vs_TEXCOORD6;
        let x_314 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_318 : vec2<f32> = ((vec2<f32>(x_310.x, x_310.y) * vec2<f32>(x_314.z, x_314.w)) + vec2<f32>(0.5f, 0.5f));
        let x_319 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_318.x, x_318.y, x_319.z);
        let x_321 : vec3<f32> = u_xlat21;
        let x_323 : vec2<f32> = floor(vec2<f32>(x_321.x, x_321.y));
        let x_324 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_323.x, x_323.y, x_324.z);
        let x_326 : vec4<f32> = vs_TEXCOORD6;
        let x_329 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_332 : vec3<f32> = u_xlat21;
        let x_335 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_329.z, x_329.w)) + -(vec2<f32>(x_332.x, x_332.y)));
        let x_336 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
        let x_339 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_339.x, x_339.x, x_339.y, x_339.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_344 : vec4<f32> = u_xlat5;
        let x_346 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_344.x, x_344.x, x_344.z, x_344.z) * vec4<f32>(x_346.x, x_346.x, x_346.z, x_346.z));
        let x_351 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_351.y, x_351.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_356 : vec4<f32> = u_xlat6;
        let x_359 : vec4<f32> = u_xlat4;
        let x_362 : vec2<f32> = ((vec2<f32>(x_356.x, x_356.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_359.x, x_359.y)));
        let x_363 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_362.x, x_363.y, x_362.y, x_363.w);
        let x_365 : vec4<f32> = u_xlat4;
        let x_368 : vec2<f32> = (-(vec2<f32>(x_365.x, x_365.y)) + vec2<f32>(1.0f, 1.0f));
        let x_369 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
        let x_372 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_372.x, x_372.y), vec2<f32>(0.0f, 0.0f));
        let x_376 : vec2<f32> = u_xlat42;
        let x_378 : vec2<f32> = u_xlat42;
        let x_380 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_376) * x_378) + vec2<f32>(x_380.x, x_380.y));
        let x_383 : vec4<f32> = u_xlat4;
        let x_385 : vec2<f32> = max(vec2<f32>(x_383.x, x_383.y), vec2<f32>(0.0f, 0.0f));
        let x_386 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
        let x_388 : vec4<f32> = u_xlat4;
        let x_391 : vec4<f32> = u_xlat4;
        let x_394 : vec4<f32> = u_xlat5;
        let x_396 : vec2<f32> = ((-(vec2<f32>(x_388.x, x_388.y)) * vec2<f32>(x_391.x, x_391.y)) + vec2<f32>(x_394.y, x_394.w));
        let x_397 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
        let x_399 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_399 + vec2<f32>(1.0f, 1.0f));
        let x_401 : vec4<f32> = u_xlat4;
        let x_403 : vec2<f32> = (vec2<f32>(x_401.x, x_401.y) + vec2<f32>(1.0f, 1.0f));
        let x_404 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
        let x_407 : vec4<f32> = u_xlat5;
        let x_411 : vec2<f32> = (vec2<f32>(x_407.x, x_407.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
        let x_415 : vec4<f32> = u_xlat6;
        let x_417 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_418 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_420 : vec2<f32> = u_xlat42;
        let x_421 : vec2<f32> = (x_420 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_422 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_425 : vec4<f32> = u_xlat4;
        let x_427 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_428 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
        let x_430 : vec4<f32> = u_xlat5;
        let x_432 : vec2<f32> = (vec2<f32>(x_430.y, x_430.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_433 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
        let x_436 : f32 = u_xlat6.x;
        u_xlat7.z = x_436;
        let x_439 : f32 = u_xlat4.x;
        u_xlat7.w = x_439;
        let x_442 : f32 = u_xlat9.x;
        u_xlat8.z = x_442;
        let x_445 : f32 = u_xlat40.x;
        u_xlat8.w = x_445;
        let x_447 : vec4<f32> = u_xlat7;
        let x_449 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_447.z, x_447.w, x_447.x, x_447.z) + vec4<f32>(x_449.z, x_449.w, x_449.x, x_449.z));
        let x_453 : f32 = u_xlat7.y;
        u_xlat6.z = x_453;
        let x_456 : f32 = u_xlat4.y;
        u_xlat6.w = x_456;
        let x_459 : f32 = u_xlat8.y;
        u_xlat9.z = x_459;
        let x_462 : f32 = u_xlat40.y;
        u_xlat9.w = x_462;
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec4<f32> = u_xlat9;
        let x_468 : vec3<f32> = (vec3<f32>(x_464.z, x_464.y, x_464.w) + vec3<f32>(x_466.z, x_466.y, x_466.w));
        let x_469 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
        let x_471 : vec4<f32> = u_xlat8;
        let x_473 : vec4<f32> = u_xlat5;
        let x_475 : vec3<f32> = (vec3<f32>(x_471.x, x_471.z, x_471.w) / vec3<f32>(x_473.z, x_473.w, x_473.y));
        let x_476 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat6;
        let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat9;
        let x_488 : vec4<f32> = u_xlat4;
        let x_490 : vec3<f32> = (vec3<f32>(x_486.z, x_486.y, x_486.w) / vec3<f32>(x_488.x, x_488.y, x_488.z));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat6;
        let x_501 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_503 : vec3<f32> = (vec3<f32>(x_498.y, x_498.x, x_498.z) * vec3<f32>(x_501.x, x_501.x, x_501.x));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat7;
        let x_509 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_511 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_509.y, x_509.y, x_509.y));
        let x_512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
        let x_515 : f32 = u_xlat7.x;
        u_xlat6.w = x_515;
        let x_517 : vec3<f32> = u_xlat21;
        let x_520 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.y, x_523.w, x_523.x, x_523.w));
        let x_526 : vec3<f32> = u_xlat21;
        let x_529 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat6;
        let x_534 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_529.x, x_529.y)) + vec2<f32>(x_532.z, x_532.w));
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : f32 = u_xlat6.y;
        u_xlat7.w = x_538;
        let x_540 : vec4<f32> = u_xlat7;
        let x_541 : vec2<f32> = vec2<f32>(x_540.y, x_540.z);
        let x_542 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_542.x, x_541.x, x_542.z, x_541.y);
        let x_545 : vec3<f32> = u_xlat21;
        let x_548 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_551 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y) * vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y)) + vec4<f32>(x_551.x, x_551.y, x_551.z, x_551.y));
        let x_554 : vec3<f32> = u_xlat21;
        let x_557 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y) * vec4<f32>(x_557.x, x_557.y, x_557.x, x_557.y)) + vec4<f32>(x_560.w, x_560.y, x_560.w, x_560.z));
        let x_563 : vec3<f32> = u_xlat21;
        let x_566 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_563.x, x_563.y, x_563.x, x_563.y) * vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y)) + vec4<f32>(x_569.x, x_569.w, x_569.z, x_569.w));
        let x_573 : vec4<f32> = u_xlat4;
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_573.x, x_573.x, x_573.x, x_573.y) * vec4<f32>(x_575.z, x_575.w, x_575.y, x_575.z));
        let x_579 : vec4<f32> = u_xlat4;
        let x_581 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_579.y, x_579.y, x_579.z, x_579.z) * x_581);
        let x_584 : f32 = u_xlat4.z;
        let x_586 : f32 = u_xlat5.y;
        u_xlat21.x = (x_584 * x_586);
        let x_590 : vec4<f32> = u_xlat8;
        let x_591 : vec2<f32> = vec2<f32>(x_590.x, x_590.y);
        let x_593 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_591.x, x_591.y, x_593);
        let x_601 : vec3<f32> = txVec4;
        let x_603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_601.xy, x_601.z);
        u_xlat39 = x_603;
        let x_605 : vec4<f32> = u_xlat8;
        let x_606 : vec2<f32> = vec2<f32>(x_605.z, x_605.w);
        let x_608 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_606.x, x_606.y, x_608);
        let x_616 : vec3<f32> = txVec5;
        let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_616.xy, x_616.z);
        u_xlat57 = x_618;
        let x_619 : f32 = u_xlat57;
        let x_621 : f32 = u_xlat11.y;
        u_xlat57 = (x_619 * x_621);
        let x_624 : f32 = u_xlat11.x;
        let x_625 : f32 = u_xlat39;
        let x_627 : f32 = u_xlat57;
        u_xlat39 = ((x_624 * x_625) + x_627);
        let x_630 : vec4<f32> = u_xlat9;
        let x_631 : vec2<f32> = vec2<f32>(x_630.x, x_630.y);
        let x_633 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_640 : vec3<f32> = txVec6;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_640.xy, x_640.z);
        u_xlat57 = x_642;
        let x_644 : f32 = u_xlat11.z;
        let x_645 : f32 = u_xlat57;
        let x_647 : f32 = u_xlat39;
        u_xlat39 = ((x_644 * x_645) + x_647);
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
        let x_653 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_660 : vec3<f32> = txVec7;
        let x_662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_660.xy, x_660.z);
        u_xlat57 = x_662;
        let x_664 : f32 = u_xlat11.w;
        let x_665 : f32 = u_xlat57;
        let x_667 : f32 = u_xlat39;
        u_xlat39 = ((x_664 * x_665) + x_667);
        let x_670 : vec4<f32> = u_xlat10;
        let x_671 : vec2<f32> = vec2<f32>(x_670.x, x_670.y);
        let x_673 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_671.x, x_671.y, x_673);
        let x_680 : vec3<f32> = txVec8;
        let x_682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_680.xy, x_680.z);
        u_xlat57 = x_682;
        let x_684 : f32 = u_xlat12.x;
        let x_685 : f32 = u_xlat57;
        let x_687 : f32 = u_xlat39;
        u_xlat39 = ((x_684 * x_685) + x_687);
        let x_690 : vec4<f32> = u_xlat10;
        let x_691 : vec2<f32> = vec2<f32>(x_690.z, x_690.w);
        let x_693 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_700 : vec3<f32> = txVec9;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
        u_xlat57 = x_702;
        let x_704 : f32 = u_xlat12.y;
        let x_705 : f32 = u_xlat57;
        let x_707 : f32 = u_xlat39;
        u_xlat39 = ((x_704 * x_705) + x_707);
        let x_710 : vec4<f32> = u_xlat7;
        let x_711 : vec2<f32> = vec2<f32>(x_710.z, x_710.w);
        let x_713 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_711.x, x_711.y, x_713);
        let x_720 : vec3<f32> = txVec10;
        let x_722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_720.xy, x_720.z);
        u_xlat57 = x_722;
        let x_724 : f32 = u_xlat12.z;
        let x_725 : f32 = u_xlat57;
        let x_727 : f32 = u_xlat39;
        u_xlat39 = ((x_724 * x_725) + x_727);
        let x_730 : vec4<f32> = u_xlat6;
        let x_731 : vec2<f32> = vec2<f32>(x_730.x, x_730.y);
        let x_733 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_731.x, x_731.y, x_733);
        let x_740 : vec3<f32> = txVec11;
        let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
        u_xlat57 = x_742;
        let x_744 : f32 = u_xlat12.w;
        let x_745 : f32 = u_xlat57;
        let x_747 : f32 = u_xlat39;
        u_xlat39 = ((x_744 * x_745) + x_747);
        let x_750 : vec4<f32> = u_xlat6;
        let x_751 : vec2<f32> = vec2<f32>(x_750.z, x_750.w);
        let x_753 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_751.x, x_751.y, x_753);
        let x_760 : vec3<f32> = txVec12;
        let x_762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_760.xy, x_760.z);
        u_xlat57 = x_762;
        let x_764 : f32 = u_xlat21.x;
        let x_765 : f32 = u_xlat57;
        let x_767 : f32 = u_xlat39;
        u_xlat3.x = ((x_764 * x_765) + x_767);
      } else {
        let x_771 : vec4<f32> = vs_TEXCOORD6;
        let x_774 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_777 : vec2<f32> = ((vec2<f32>(x_771.x, x_771.y) * vec2<f32>(x_774.z, x_774.w)) + vec2<f32>(0.5f, 0.5f));
        let x_778 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_777.x, x_777.y, x_778.z);
        let x_780 : vec3<f32> = u_xlat21;
        let x_782 : vec2<f32> = floor(vec2<f32>(x_780.x, x_780.y));
        let x_783 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_782.x, x_782.y, x_783.z);
        let x_785 : vec4<f32> = vs_TEXCOORD6;
        let x_788 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_791 : vec3<f32> = u_xlat21;
        let x_794 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_788.z, x_788.w)) + -(vec2<f32>(x_791.x, x_791.y)));
        let x_795 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_797 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_797.x, x_797.x, x_797.y, x_797.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_800 : vec4<f32> = u_xlat5;
        let x_802 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_800.x, x_800.x, x_800.z, x_800.z) * vec4<f32>(x_802.x, x_802.x, x_802.z, x_802.z));
        let x_805 : vec4<f32> = u_xlat6;
        let x_809 : vec2<f32> = (vec2<f32>(x_805.y, x_805.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_810 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_810.x, x_809.x, x_810.z, x_809.y);
        let x_812 : vec4<f32> = u_xlat6;
        let x_815 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_812.x, x_812.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_815.x, x_815.y)));
        let x_819 : vec4<f32> = u_xlat4;
        let x_822 : vec2<f32> = (-(vec2<f32>(x_819.x, x_819.y)) + vec2<f32>(1.0f, 1.0f));
        let x_823 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_822.x, x_823.y, x_822.y, x_823.w);
        let x_825 : vec4<f32> = u_xlat4;
        let x_827 : vec2<f32> = min(vec2<f32>(x_825.x, x_825.y), vec2<f32>(0.0f, 0.0f));
        let x_828 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = u_xlat6;
        let x_836 : vec4<f32> = u_xlat5;
        let x_838 : vec2<f32> = ((-(vec2<f32>(x_830.x, x_830.y)) * vec2<f32>(x_833.x, x_833.y)) + vec2<f32>(x_836.x, x_836.z));
        let x_839 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_838.x, x_839.y, x_838.y, x_839.w);
        let x_841 : vec4<f32> = u_xlat4;
        let x_843 : vec2<f32> = max(vec2<f32>(x_841.x, x_841.y), vec2<f32>(0.0f, 0.0f));
        let x_844 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat6;
        let x_849 : vec4<f32> = u_xlat6;
        let x_852 : vec4<f32> = u_xlat5;
        let x_854 : vec2<f32> = ((-(vec2<f32>(x_846.x, x_846.y)) * vec2<f32>(x_849.x, x_849.y)) + vec2<f32>(x_852.y, x_852.w));
        let x_855 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_855.x, x_854.x, x_855.z, x_854.y);
        let x_857 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_857 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_861 : f32 = u_xlat5.y;
        u_xlat6.z = (x_861 * 0.081632003f);
        let x_865 : vec2<f32> = u_xlat40;
        let x_868 : vec2<f32> = (vec2<f32>(x_865.y, x_865.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_871.x, x_871.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_875 : f32 = u_xlat5.w;
        u_xlat8.z = (x_875 * 0.081632003f);
        let x_879 : f32 = u_xlat8.y;
        u_xlat6.x = x_879;
        let x_881 : vec4<f32> = u_xlat4;
        let x_888 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_889 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_889.x, x_888.x, x_889.z, x_888.y);
        let x_891 : vec4<f32> = u_xlat4;
        let x_895 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_896 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_895.x, x_896.y, x_895.y, x_896.w);
        let x_899 : f32 = u_xlat40.x;
        u_xlat5.y = x_899;
        let x_902 : f32 = u_xlat7.y;
        u_xlat5.w = x_902;
        let x_904 : vec4<f32> = u_xlat5;
        let x_905 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_904 + x_905);
        let x_907 : vec4<f32> = u_xlat4;
        let x_910 : vec2<f32> = ((vec2<f32>(x_907.y, x_907.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_911 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_911.x, x_910.x, x_911.z, x_910.y);
        let x_913 : vec4<f32> = u_xlat4;
        let x_916 : vec2<f32> = ((vec2<f32>(x_913.y, x_913.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_916.x, x_917.y, x_916.y, x_917.w);
        let x_920 : f32 = u_xlat40.y;
        u_xlat7.y = x_920;
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_922 + x_923);
        let x_925 : vec4<f32> = u_xlat5;
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_925 / x_926);
        let x_928 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_928 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_934 : vec4<f32> = u_xlat7;
        let x_935 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_934 / x_935);
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_937 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_939 : vec4<f32> = u_xlat5;
        let x_942 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_939.w, x_939.x, x_939.y, x_939.z) * vec4<f32>(x_942.x, x_942.x, x_942.x, x_942.x));
        let x_945 : vec4<f32> = u_xlat7;
        let x_948 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_945.x, x_945.w, x_945.y, x_945.z) * vec4<f32>(x_948.y, x_948.y, x_948.y, x_948.y));
        let x_951 : vec4<f32> = u_xlat5;
        let x_952 : vec3<f32> = vec3<f32>(x_951.y, x_951.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_952.z);
        let x_956 : f32 = u_xlat7.x;
        u_xlat8.y = x_956;
        let x_958 : vec3<f32> = u_xlat21;
        let x_961 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y) * vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y)) + vec4<f32>(x_964.x, x_964.y, x_964.z, x_964.y));
        let x_967 : vec3<f32> = u_xlat21;
        let x_970 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_973 : vec4<f32> = u_xlat8;
        let x_975 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.x, x_970.y)) + vec2<f32>(x_973.w, x_973.y));
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_979 : f32 = u_xlat8.y;
        u_xlat5.y = x_979;
        let x_982 : f32 = u_xlat7.z;
        u_xlat8.y = x_982;
        let x_984 : vec3<f32> = u_xlat21;
        let x_987 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y)) + vec4<f32>(x_990.x, x_990.y, x_990.z, x_990.y));
        let x_994 : vec3<f32> = u_xlat21;
        let x_997 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1000 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_994.x, x_994.y) * vec2<f32>(x_997.x, x_997.y)) + vec2<f32>(x_1000.w, x_1000.y));
        let x_1004 : f32 = u_xlat8.y;
        u_xlat5.z = x_1004;
        let x_1006 : vec3<f32> = u_xlat21;
        let x_1009 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y) * vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y)) + vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.z));
        let x_1016 : f32 = u_xlat7.w;
        u_xlat8.y = x_1016;
        let x_1019 : vec3<f32> = u_xlat21;
        let x_1022 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) * vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y)) + vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1025.y));
        let x_1029 : vec3<f32> = u_xlat21;
        let x_1032 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.w, x_1035.y));
        let x_1039 : f32 = u_xlat8.y;
        u_xlat5.w = x_1039;
        let x_1042 : vec3<f32> = u_xlat21;
        let x_1045 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.x, x_1045.y)) + vec2<f32>(x_1048.x, x_1048.w));
        let x_1051 : vec4<f32> = u_xlat8;
        let x_1052 : vec3<f32> = vec3<f32>(x_1051.x, x_1051.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1052.z);
        let x_1055 : vec3<f32> = u_xlat21;
        let x_1058 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.y));
        let x_1065 : vec3<f32> = u_xlat21;
        let x_1068 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1071.w, x_1071.y));
        let x_1075 : f32 = u_xlat5.x;
        u_xlat7.x = x_1075;
        let x_1077 : vec3<f32> = u_xlat21;
        let x_1080 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1080.x, x_1080.y)) + vec2<f32>(x_1083.x, x_1083.y));
        let x_1086 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1089.x, x_1089.x, x_1089.x, x_1089.x) * x_1091);
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1094.y, x_1094.y, x_1094.y, x_1094.y) * x_1096);
        let x_1099 : vec4<f32> = u_xlat4;
        let x_1101 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1099.z, x_1099.z, x_1099.z, x_1099.z) * x_1101);
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1105 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1103.w, x_1103.w, x_1103.w, x_1103.w) * x_1105);
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = vec2<f32>(x_1108.x, x_1108.y);
        let x_1111 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec13;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1118.xy, x_1118.z);
        u_xlat57 = x_1120;
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.z, x_1122.w);
        let x_1125 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec14;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat5.x = x_1134;
        let x_1137 : f32 = u_xlat5.x;
        let x_1139 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1137 * x_1139);
        let x_1143 : f32 = u_xlat15.x;
        let x_1144 : f32 = u_xlat57;
        let x_1147 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1143 * x_1144) + x_1147);
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1151 : vec2<f32> = vec2<f32>(x_1150.x, x_1150.y);
        let x_1153 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
        let x_1160 : vec3<f32> = txVec15;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat5.x = x_1162;
        let x_1165 : f32 = u_xlat15.z;
        let x_1167 : f32 = u_xlat5.x;
        let x_1169 : f32 = u_xlat57;
        u_xlat57 = ((x_1165 * x_1167) + x_1169);
        let x_1172 : vec4<f32> = u_xlat12;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec16;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat5.x = x_1184;
        let x_1187 : f32 = u_xlat15.w;
        let x_1189 : f32 = u_xlat5.x;
        let x_1191 : f32 = u_xlat57;
        u_xlat57 = ((x_1187 * x_1189) + x_1191);
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.x, x_1194.y);
        let x_1197 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec17;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
        u_xlat5.x = x_1206;
        let x_1209 : f32 = u_xlat16.x;
        let x_1211 : f32 = u_xlat5.x;
        let x_1213 : f32 = u_xlat57;
        u_xlat57 = ((x_1209 * x_1211) + x_1213);
        let x_1216 : vec4<f32> = u_xlat11;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.z, x_1216.w);
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec18;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1226.xy, x_1226.z);
        u_xlat5.x = x_1228;
        let x_1231 : f32 = u_xlat16.y;
        let x_1233 : f32 = u_xlat5.x;
        let x_1235 : f32 = u_xlat57;
        u_xlat57 = ((x_1231 * x_1233) + x_1235);
        let x_1238 : vec2<f32> = u_xlat46;
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec19;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat5.x = x_1249;
        let x_1252 : f32 = u_xlat16.z;
        let x_1254 : f32 = u_xlat5.x;
        let x_1256 : f32 = u_xlat57;
        u_xlat57 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec20;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat5.x = x_1271;
        let x_1274 : f32 = u_xlat16.w;
        let x_1276 : f32 = u_xlat5.x;
        let x_1278 : f32 = u_xlat57;
        u_xlat57 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat13;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec21;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat5.x = x_1293;
        let x_1296 : f32 = u_xlat17.x;
        let x_1298 : f32 = u_xlat5.x;
        let x_1300 : f32 = u_xlat57;
        u_xlat57 = ((x_1296 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat13;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec22;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat5.x = x_1315;
        let x_1318 : f32 = u_xlat17.y;
        let x_1320 : f32 = u_xlat5.x;
        let x_1322 : f32 = u_xlat57;
        u_xlat57 = ((x_1318 * x_1320) + x_1322);
        let x_1325 : vec2<f32> = u_xlat23;
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec23;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat5.x = x_1336;
        let x_1339 : f32 = u_xlat17.z;
        let x_1341 : f32 = u_xlat5.x;
        let x_1343 : f32 = u_xlat57;
        u_xlat57 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec2<f32> = u_xlat14;
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec24;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat5.x = x_1357;
        let x_1360 : f32 = u_xlat17.w;
        let x_1362 : f32 = u_xlat5.x;
        let x_1364 : f32 = u_xlat57;
        u_xlat57 = ((x_1360 * x_1362) + x_1364);
        let x_1367 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec25;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1377.xy, x_1377.z);
        u_xlat5.x = x_1379;
        let x_1382 : f32 = u_xlat4.x;
        let x_1384 : f32 = u_xlat5.x;
        let x_1386 : f32 = u_xlat57;
        u_xlat57 = ((x_1382 * x_1384) + x_1386);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec26;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1399.xy, x_1399.z);
        u_xlat4.x = x_1401;
        let x_1404 : f32 = u_xlat4.y;
        let x_1406 : f32 = u_xlat4.x;
        let x_1408 : f32 = u_xlat57;
        u_xlat57 = ((x_1404 * x_1406) + x_1408);
        let x_1411 : vec2<f32> = u_xlat43;
        let x_1413 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec27;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat4.x = x_1422;
        let x_1425 : f32 = u_xlat4.z;
        let x_1427 : f32 = u_xlat4.x;
        let x_1429 : f32 = u_xlat57;
        u_xlat57 = ((x_1425 * x_1427) + x_1429);
        let x_1432 : vec3<f32> = u_xlat21;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec28;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat21.x = x_1444;
        let x_1447 : f32 = u_xlat4.w;
        let x_1449 : f32 = u_xlat21.x;
        let x_1451 : f32 = u_xlat57;
        u_xlat3.x = ((x_1447 * x_1449) + x_1451);
      }
    }
  } else {
    let x_1456 : vec4<f32> = vs_TEXCOORD6;
    let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
    let x_1459 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
    let x_1466 : vec3<f32> = txVec29;
    let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
    u_xlat3.x = x_1468;
  }
  let x_1471 : f32 = x_199.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1471) + 1.0f);
  let x_1476 : f32 = u_xlat3.x;
  let x_1478 : f32 = x_199.x_MainLightShadowParams.x;
  let x_1481 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1476 * x_1478) + x_1481);
  let x_1485 : f32 = vs_TEXCOORD6.z;
  u_xlatb21.x = (0.0f >= x_1485);
  let x_1490 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1490 >= 1.0f);
  let x_1492 : bool = u_xlatb39;
  let x_1494 : bool = u_xlatb21.x;
  u_xlatb21.x = (x_1492 | x_1494);
  let x_1498 : bool = u_xlatb21.x;
  if (x_1498) {
    x_1499 = 1.0f;
  } else {
    let x_1504 : f32 = u_xlat3.x;
    x_1499 = x_1504;
  }
  let x_1505 : f32 = x_1499;
  u_xlat3.x = x_1505;
  let x_1508 : vec3<f32> = vs_TEXCOORD1;
  let x_1511 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1508 + -(x_1511));
  let x_1514 : vec3<f32> = u_xlat21;
  let x_1515 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1514, x_1515);
  let x_1519 : f32 = u_xlat21.x;
  let x_1521 : f32 = x_199.x_MainLightShadowParams.z;
  let x_1524 : f32 = x_199.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1519 * x_1521) + x_1524);
  let x_1528 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1528, 0.0f, 1.0f);
  let x_1532 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1532) + 1.0f);
  let x_1536 : f32 = u_xlat21.x;
  let x_1537 : f32 = u_xlat39;
  let x_1540 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1536 * x_1537) + x_1540);
  let x_1550 : f32 = x_1547.x_MainLightCookieTextureFormat;
  u_xlatb21.x = !((x_1550 == -1.0f));
  let x_1554 : bool = u_xlatb21.x;
  if (x_1554) {
    let x_1557 : vec3<f32> = vs_TEXCOORD1;
    let x_1560 : vec4<f32> = x_1547.x_MainLightWorldToLight[1i];
    let x_1562 : vec2<f32> = (vec2<f32>(x_1557.y, x_1557.y) * vec2<f32>(x_1560.x, x_1560.y));
    let x_1563 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1562.x, x_1562.y, x_1563.z);
    let x_1566 : vec4<f32> = x_1547.x_MainLightWorldToLight[0i];
    let x_1568 : vec3<f32> = vs_TEXCOORD1;
    let x_1571 : vec3<f32> = u_xlat21;
    let x_1573 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1568.x, x_1568.x)) + vec2<f32>(x_1571.x, x_1571.y));
    let x_1574 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1573.x, x_1573.y, x_1574.z);
    let x_1577 : vec4<f32> = x_1547.x_MainLightWorldToLight[2i];
    let x_1579 : vec3<f32> = vs_TEXCOORD1;
    let x_1582 : vec3<f32> = u_xlat21;
    let x_1584 : vec2<f32> = ((vec2<f32>(x_1577.x, x_1577.y) * vec2<f32>(x_1579.z, x_1579.z)) + vec2<f32>(x_1582.x, x_1582.y));
    let x_1585 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1584.x, x_1584.y, x_1585.z);
    let x_1587 : vec3<f32> = u_xlat21;
    let x_1591 : vec4<f32> = x_1547.x_MainLightWorldToLight[3i];
    let x_1593 : vec2<f32> = (vec2<f32>(x_1587.x, x_1587.y) + vec2<f32>(x_1591.x, x_1591.y));
    let x_1594 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1593.x, x_1593.y, x_1594.z);
    let x_1596 : vec3<f32> = u_xlat21;
    let x_1599 : vec2<f32> = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1600 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1599.x, x_1599.y, x_1600.z);
    let x_1607 : vec3<f32> = u_xlat21;
    let x_1610 : f32 = x_43.x_GlobalMipBias.x;
    let x_1611 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1607.x, x_1607.y), x_1610);
    u_xlat4 = x_1611;
    let x_1613 : f32 = x_1547.x_MainLightCookieTextureFormat;
    let x_1615 : f32 = x_1547.x_MainLightCookieTextureFormat;
    let x_1617 : f32 = x_1547.x_MainLightCookieTextureFormat;
    let x_1619 : f32 = x_1547.x_MainLightCookieTextureFormat;
    let x_1620 : vec4<f32> = vec4<f32>(x_1613, x_1615, x_1617, x_1619);
    let x_1628 : vec4<bool> = (vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1620.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb21 = vec2<bool>(x_1628.x, x_1628.y);
    let x_1631 : bool = u_xlatb21.y;
    if (x_1631) {
      let x_1636 : f32 = u_xlat4.w;
      x_1632 = x_1636;
    } else {
      let x_1639 : f32 = u_xlat4.x;
      x_1632 = x_1639;
    }
    let x_1640 : f32 = x_1632;
    u_xlat39 = x_1640;
    let x_1642 : bool = u_xlatb21.x;
    if (x_1642) {
      let x_1646 : vec4<f32> = u_xlat4;
      x_1643 = vec3<f32>(x_1646.x, x_1646.y, x_1646.z);
    } else {
      let x_1649 : f32 = u_xlat39;
      x_1643 = vec3<f32>(x_1649, x_1649, x_1649);
    }
    let x_1651 : vec3<f32> = x_1643;
    u_xlat21 = x_1651;
  } else {
    u_xlat21.x = 1.0f;
    u_xlat21.y = 1.0f;
    u_xlat21.z = 1.0f;
  }
  let x_1656 : vec3<f32> = u_xlat21;
  let x_1658 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (x_1656 * vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
  let x_1661 : f32 = u_xlat56;
  let x_1663 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1661, x_1661, x_1661) * x_1663);
  let x_1665 : f32 = u_xlat55;
  let x_1667 : vec4<f32> = u_xlat2;
  let x_1669 : vec3<f32> = (vec3<f32>(x_1665, x_1665, x_1665) * vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1673 : f32 = u_xlat3.x;
  let x_1680 : f32 = x_1677.unity_LightData.z;
  u_xlat55 = (x_1673 * x_1680);
  let x_1682 : f32 = u_xlat55;
  let x_1684 : vec3<f32> = u_xlat21;
  let x_1685 : vec3<f32> = (vec3<f32>(x_1682, x_1682, x_1682) * x_1684);
  let x_1686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec3<f32> = u_xlat1;
  let x_1690 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1688, vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1693, 0.0f, 1.0f);
  let x_1695 : f32 = u_xlat55;
  let x_1697 : vec4<f32> = u_xlat3;
  let x_1699 : vec3<f32> = (vec3<f32>(x_1695, x_1695, x_1695) * vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
  let x_1702 : vec4<f32> = u_xlat0;
  let x_1704 : vec4<f32> = u_xlat3;
  let x_1706 : vec3<f32> = (vec3<f32>(x_1702.y, x_1702.z, x_1702.w) * vec3<f32>(x_1704.x, x_1704.y, x_1704.z));
  let x_1707 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
  let x_1710 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1712 : f32 = x_1677.unity_LightData.y;
  u_xlat55 = min(x_1710, x_1712);
  let x_1716 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1716));
  let x_1721 : f32 = x_1547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1723 : f32 = x_1547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1725 : f32 = x_1547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1727 : f32 = x_1547.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1728 : vec4<f32> = vec4<f32>(x_1721, x_1723, x_1725, x_1727);
  let x_1734 : vec4<bool> = (vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1728.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1734.x, x_1734.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1745 : u32 = u_xlatu_loop_1;
    let x_1746 : u32 = u_xlatu55;
    if ((x_1745 < x_1746)) {
    } else {
      break;
    }
    let x_1749 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1749 >> 2u);
    let x_1753 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1753 & 3u));
    let x_1756 : u32 = u_xlatu40;
    let x_1759 : vec4<f32> = x_1677.unity_LightIndices[bitcast<i32>(x_1756)];
    let x_1769 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1774 : vec4<u32> = indexable[x_1769];
    u_xlat40.x = dot(x_1759, bitcast<vec4<f32>>(x_1774));
    let x_1779 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_1779));
    let x_1782 : vec3<f32> = vs_TEXCOORD1;
    let x_1794 : u32 = u_xlatu40;
    let x_1797 : vec4<f32> = x_1793.x_AdditionalLightsPosition[bitcast<i32>(x_1794)];
    let x_1800 : u32 = u_xlatu40;
    let x_1803 : vec4<f32> = x_1793.x_AdditionalLightsPosition[bitcast<i32>(x_1800)];
    let x_1805 : vec3<f32> = ((-(x_1782) * vec3<f32>(x_1797.w, x_1797.w, x_1797.w)) + vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1809 : vec4<f32> = u_xlat6;
    let x_1811 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1809.x, x_1809.y, x_1809.z), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : f32 = u_xlat58;
    u_xlat58 = max(x_1814, 6.10351562e-05f);
    let x_1818 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1818);
    let x_1820 : f32 = u_xlat59;
    let x_1822 : vec4<f32> = u_xlat6;
    let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
    let x_1825 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
    let x_1827 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1827);
    let x_1829 : f32 = u_xlat58;
    let x_1830 : u32 = u_xlatu40;
    let x_1833 : f32 = x_1793.x_AdditionalLightsAttenuation[bitcast<i32>(x_1830)].x;
    u_xlat58 = (x_1829 * x_1833);
    let x_1835 : f32 = u_xlat58;
    let x_1837 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1835) * x_1837) + 1.0f);
    let x_1840 : f32 = u_xlat58;
    u_xlat58 = max(x_1840, 0.0f);
    let x_1842 : f32 = u_xlat58;
    let x_1843 : f32 = u_xlat58;
    u_xlat58 = (x_1842 * x_1843);
    let x_1845 : f32 = u_xlat58;
    let x_1846 : f32 = u_xlat59;
    u_xlat58 = (x_1845 * x_1846);
    let x_1848 : u32 = u_xlatu40;
    let x_1851 : vec4<f32> = x_1793.x_AdditionalLightsSpotDir[bitcast<i32>(x_1848)];
    let x_1853 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1851.x, x_1851.y, x_1851.z), vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : f32 = u_xlat59;
    let x_1857 : u32 = u_xlatu40;
    let x_1860 : f32 = x_1793.x_AdditionalLightsAttenuation[bitcast<i32>(x_1857)].z;
    let x_1862 : u32 = u_xlatu40;
    let x_1865 : f32 = x_1793.x_AdditionalLightsAttenuation[bitcast<i32>(x_1862)].w;
    u_xlat59 = ((x_1856 * x_1860) + x_1865);
    let x_1867 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1867, 0.0f, 1.0f);
    let x_1869 : f32 = u_xlat59;
    let x_1870 : f32 = u_xlat59;
    u_xlat59 = (x_1869 * x_1870);
    let x_1872 : f32 = u_xlat58;
    let x_1873 : f32 = u_xlat59;
    u_xlat58 = (x_1872 * x_1873);
    let x_1876 : u32 = u_xlatu40;
    u_xlatu59 = (x_1876 >> 5u);
    let x_1879 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_1879) & 31i)));
    let x_1885 : i32 = u_xlati60;
    let x_1887 : u32 = u_xlatu59;
    let x_1890 : f32 = x_1547.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1887)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_1885) & bitcast<u32>(x_1890)));
    let x_1894 : i32 = u_xlati59;
    if ((x_1894 != 0i)) {
      let x_1904 : u32 = u_xlatu40;
      let x_1907 : f32 = x_1903.x_AdditionalLightsLightTypes[bitcast<i32>(x_1904)].el;
      u_xlati59 = i32(x_1907);
      let x_1909 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_1909 != 0i));
      let x_1913 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_1913) << bitcast<u32>(2i));
      let x_1916 : i32 = u_xlati60;
      if ((x_1916 != 0i)) {
        let x_1921 : vec3<f32> = vs_TEXCOORD1;
        let x_1923 : i32 = u_xlati7;
        let x_1926 : i32 = u_xlati7;
        let x_1930 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_1923 + 1i) / 4i)][((x_1926 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1921.y, x_1921.y, x_1921.y) * vec3<f32>(x_1930.x, x_1930.y, x_1930.w));
        let x_1933 : i32 = u_xlati7;
        let x_1935 : i32 = u_xlati7;
        let x_1938 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[(x_1933 / 4i)][(x_1935 % 4i)];
        let x_1940 : vec3<f32> = vs_TEXCOORD1;
        let x_1943 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1938.x, x_1938.y, x_1938.w) * vec3<f32>(x_1940.x, x_1940.x, x_1940.x)) + x_1943);
        let x_1945 : i32 = u_xlati7;
        let x_1948 : i32 = u_xlati7;
        let x_1952 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_1945 + 2i) / 4i)][((x_1948 + 2i) % 4i)];
        let x_1954 : vec3<f32> = vs_TEXCOORD1;
        let x_1957 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1952.x, x_1952.y, x_1952.w) * vec3<f32>(x_1954.z, x_1954.z, x_1954.z)) + x_1957);
        let x_1959 : vec3<f32> = u_xlat25;
        let x_1960 : i32 = u_xlati7;
        let x_1963 : i32 = u_xlati7;
        let x_1967 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_1960 + 3i) / 4i)][((x_1963 + 3i) % 4i)];
        u_xlat25 = (x_1959 + vec3<f32>(x_1967.x, x_1967.y, x_1967.w));
        let x_1970 : vec3<f32> = u_xlat25;
        let x_1972 : vec3<f32> = u_xlat25;
        let x_1974 : vec2<f32> = (vec2<f32>(x_1970.x, x_1970.y) / vec2<f32>(x_1972.z, x_1972.z));
        let x_1975 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1974.x, x_1974.y, x_1975.z);
        let x_1977 : vec3<f32> = u_xlat25;
        let x_1980 : vec2<f32> = ((vec2<f32>(x_1977.x, x_1977.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1981 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1980.x, x_1980.y, x_1981.z);
        let x_1983 : vec3<f32> = u_xlat25;
        let x_1987 : vec2<f32> = clamp(vec2<f32>(x_1983.x, x_1983.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1988 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1987.x, x_1987.y, x_1988.z);
        let x_1990 : u32 = u_xlatu40;
        let x_1993 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1990)];
        let x_1995 : vec3<f32> = u_xlat25;
        let x_1998 : u32 = u_xlatu40;
        let x_2001 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1998)];
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1993.x, x_1993.y) * vec2<f32>(x_1995.x, x_1995.y)) + vec2<f32>(x_2001.z, x_2001.w));
        let x_2004 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2003.x, x_2003.y, x_2004.z);
      } else {
        let x_2008 : i32 = u_xlati59;
        u_xlatb59 = (x_2008 == 1i);
        let x_2010 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2010);
        let x_2012 : i32 = u_xlati59;
        if ((x_2012 != 0i)) {
          let x_2016 : vec3<f32> = vs_TEXCOORD1;
          let x_2018 : i32 = u_xlati7;
          let x_2021 : i32 = u_xlati7;
          let x_2025 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2018 + 1i) / 4i)][((x_2021 + 1i) % 4i)];
          let x_2027 : vec2<f32> = (vec2<f32>(x_2016.y, x_2016.y) * vec2<f32>(x_2025.x, x_2025.y));
          let x_2028 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
          let x_2030 : i32 = u_xlati7;
          let x_2032 : i32 = u_xlati7;
          let x_2035 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[(x_2030 / 4i)][(x_2032 % 4i)];
          let x_2037 : vec3<f32> = vs_TEXCOORD1;
          let x_2040 : vec4<f32> = u_xlat8;
          let x_2042 : vec2<f32> = ((vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(x_2037.x, x_2037.x)) + vec2<f32>(x_2040.x, x_2040.y));
          let x_2043 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
          let x_2045 : i32 = u_xlati7;
          let x_2048 : i32 = u_xlati7;
          let x_2052 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2045 + 2i) / 4i)][((x_2048 + 2i) % 4i)];
          let x_2054 : vec3<f32> = vs_TEXCOORD1;
          let x_2057 : vec4<f32> = u_xlat8;
          let x_2059 : vec2<f32> = ((vec2<f32>(x_2052.x, x_2052.y) * vec2<f32>(x_2054.z, x_2054.z)) + vec2<f32>(x_2057.x, x_2057.y));
          let x_2060 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
          let x_2062 : vec4<f32> = u_xlat8;
          let x_2064 : i32 = u_xlati7;
          let x_2067 : i32 = u_xlati7;
          let x_2071 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2064 + 3i) / 4i)][((x_2067 + 3i) % 4i)];
          let x_2073 : vec2<f32> = (vec2<f32>(x_2062.x, x_2062.y) + vec2<f32>(x_2071.x, x_2071.y));
          let x_2074 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2073.x, x_2073.y, x_2074.z, x_2074.w);
          let x_2076 : vec4<f32> = u_xlat8;
          let x_2079 : vec2<f32> = ((vec2<f32>(x_2076.x, x_2076.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2080 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2079.x, x_2079.y, x_2080.z, x_2080.w);
          let x_2082 : vec4<f32> = u_xlat8;
          let x_2084 : vec2<f32> = fract(vec2<f32>(x_2082.x, x_2082.y));
          let x_2085 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2084.x, x_2084.y, x_2085.z, x_2085.w);
          let x_2087 : u32 = u_xlatu40;
          let x_2090 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2087)];
          let x_2092 : vec4<f32> = u_xlat8;
          let x_2095 : u32 = u_xlatu40;
          let x_2098 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2095)];
          let x_2100 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2092.x, x_2092.y)) + vec2<f32>(x_2098.z, x_2098.w));
          let x_2101 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2100.x, x_2100.y, x_2101.z);
        } else {
          let x_2104 : vec3<f32> = vs_TEXCOORD1;
          let x_2106 : i32 = u_xlati7;
          let x_2109 : i32 = u_xlati7;
          let x_2113 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2106 + 1i) / 4i)][((x_2109 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2104.y, x_2104.y, x_2104.y, x_2104.y) * x_2113);
          let x_2115 : i32 = u_xlati7;
          let x_2117 : i32 = u_xlati7;
          let x_2120 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[(x_2115 / 4i)][(x_2117 % 4i)];
          let x_2121 : vec3<f32> = vs_TEXCOORD1;
          let x_2124 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2120 * vec4<f32>(x_2121.x, x_2121.x, x_2121.x, x_2121.x)) + x_2124);
          let x_2126 : i32 = u_xlati7;
          let x_2129 : i32 = u_xlati7;
          let x_2133 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2126 + 2i) / 4i)][((x_2129 + 2i) % 4i)];
          let x_2134 : vec3<f32> = vs_TEXCOORD1;
          let x_2137 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2133 * vec4<f32>(x_2134.z, x_2134.z, x_2134.z, x_2134.z)) + x_2137);
          let x_2139 : vec4<f32> = u_xlat8;
          let x_2140 : i32 = u_xlati7;
          let x_2143 : i32 = u_xlati7;
          let x_2147 : vec4<f32> = x_1903.x_AdditionalLightsWorldToLights[((x_2140 + 3i) / 4i)][((x_2143 + 3i) % 4i)];
          u_xlat8 = (x_2139 + x_2147);
          let x_2149 : vec4<f32> = u_xlat8;
          let x_2151 : vec4<f32> = u_xlat8;
          let x_2153 : vec3<f32> = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) / vec3<f32>(x_2151.w, x_2151.w, x_2151.w));
          let x_2154 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
          let x_2156 : vec4<f32> = u_xlat8;
          let x_2158 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.z), vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
          let x_2161 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2161);
          let x_2163 : f32 = u_xlat59;
          let x_2165 : vec4<f32> = u_xlat8;
          let x_2167 : vec3<f32> = (vec3<f32>(x_2163, x_2163, x_2163) * vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
          let x_2168 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
          let x_2170 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2170.x, x_2170.y, x_2170.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2175 : f32 = u_xlat59;
          u_xlat59 = max(x_2175, 0.000001f);
          let x_2178 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2178);
          let x_2180 : f32 = u_xlat59;
          let x_2182 : vec4<f32> = u_xlat8;
          let x_2184 : vec3<f32> = (vec3<f32>(x_2180, x_2180, x_2180) * vec3<f32>(x_2182.z, x_2182.x, x_2182.y));
          let x_2185 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
          let x_2188 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2188);
          let x_2192 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2192, 0.0f, 1.0f);
          let x_2197 : vec4<f32> = u_xlat9;
          let x_2200 : vec4<bool> = (vec4<f32>(x_2197.y, x_2197.y, x_2197.y, x_2197.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2201 : vec2<bool> = vec2<bool>(x_2200.x, x_2200.w);
          let x_2202 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2201.x, x_2202.y, x_2202.z, x_2201.y);
          let x_2205 : bool = u_xlatb7.x;
          if (x_2205) {
            let x_2210 : f32 = u_xlat9.x;
            x_2206 = x_2210;
          } else {
            let x_2213 : f32 = u_xlat9.x;
            x_2206 = -(x_2213);
          }
          let x_2215 : f32 = x_2206;
          u_xlat7.x = x_2215;
          let x_2218 : bool = u_xlatb7.w;
          if (x_2218) {
            let x_2223 : f32 = u_xlat9.x;
            x_2219 = x_2223;
          } else {
            let x_2226 : f32 = u_xlat9.x;
            x_2219 = -(x_2226);
          }
          let x_2228 : f32 = x_2219;
          u_xlat7.w = x_2228;
          let x_2230 : vec4<f32> = u_xlat8;
          let x_2232 : f32 = u_xlat59;
          let x_2235 : vec4<f32> = u_xlat7;
          let x_2237 : vec2<f32> = ((vec2<f32>(x_2230.x, x_2230.y) * vec2<f32>(x_2232, x_2232)) + vec2<f32>(x_2235.x, x_2235.w));
          let x_2238 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2237.x, x_2238.y, x_2238.z, x_2237.y);
          let x_2240 : vec4<f32> = u_xlat7;
          let x_2243 : vec2<f32> = ((vec2<f32>(x_2240.x, x_2240.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2244 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2243.x, x_2244.y, x_2244.z, x_2243.y);
          let x_2246 : vec4<f32> = u_xlat7;
          let x_2250 : vec2<f32> = clamp(vec2<f32>(x_2246.x, x_2246.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2251 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2250.x, x_2251.y, x_2251.z, x_2250.y);
          let x_2253 : u32 = u_xlatu40;
          let x_2256 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2253)];
          let x_2258 : vec4<f32> = u_xlat7;
          let x_2261 : u32 = u_xlatu40;
          let x_2264 : vec4<f32> = x_1903.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2261)];
          let x_2266 : vec2<f32> = ((vec2<f32>(x_2256.x, x_2256.y) * vec2<f32>(x_2258.x, x_2258.w)) + vec2<f32>(x_2264.z, x_2264.w));
          let x_2267 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2266.x, x_2266.y, x_2267.z);
        }
      }
      let x_2274 : vec3<f32> = u_xlat25;
      let x_2277 : f32 = x_43.x_GlobalMipBias.x;
      let x_2278 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2274.x, x_2274.y), x_2277);
      u_xlat7 = x_2278;
      let x_2280 : bool = u_xlatb4.y;
      if (x_2280) {
        let x_2285 : f32 = u_xlat7.w;
        x_2281 = x_2285;
      } else {
        let x_2288 : f32 = u_xlat7.x;
        x_2281 = x_2288;
      }
      let x_2289 : f32 = x_2281;
      u_xlat59 = x_2289;
      let x_2291 : bool = u_xlatb4.x;
      if (x_2291) {
        let x_2295 : vec4<f32> = u_xlat7;
        x_2292 = vec3<f32>(x_2295.x, x_2295.y, x_2295.z);
      } else {
        let x_2298 : f32 = u_xlat59;
        x_2292 = vec3<f32>(x_2298, x_2298, x_2298);
      }
      let x_2300 : vec3<f32> = x_2292;
      let x_2301 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2307 : vec4<f32> = u_xlat7;
    let x_2309 : u32 = u_xlatu40;
    let x_2312 : vec4<f32> = x_1793.x_AdditionalLightsColor[bitcast<i32>(x_2309)];
    let x_2314 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.y, x_2307.z) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
    let x_2315 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
    let x_2317 : f32 = u_xlat56;
    let x_2319 : vec4<f32> = u_xlat7;
    let x_2321 : vec3<f32> = (vec3<f32>(x_2317, x_2317, x_2317) * vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
    let x_2322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
    let x_2324 : f32 = u_xlat58;
    let x_2326 : vec4<f32> = u_xlat7;
    let x_2328 : vec3<f32> = (vec3<f32>(x_2324, x_2324, x_2324) * vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
    let x_2329 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
    let x_2331 : vec3<f32> = u_xlat1;
    let x_2332 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(x_2331, vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
    let x_2337 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2337, 0.0f, 1.0f);
    let x_2340 : vec2<f32> = u_xlat40;
    let x_2342 : vec4<f32> = u_xlat7;
    let x_2344 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.x, x_2340.x) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
    let x_2347 : vec4<f32> = u_xlat6;
    let x_2349 : vec4<f32> = u_xlat0;
    let x_2352 : vec4<f32> = u_xlat5;
    let x_2354 : vec3<f32> = ((vec3<f32>(x_2347.x, x_2347.y, x_2347.z) * vec3<f32>(x_2349.y, x_2349.z, x_2349.w)) + vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
    let x_2355 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);

    continuing {
      let x_2357 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2357 + bitcast<u32>(1i));
    }
  }
  let x_2360 : vec4<f32> = u_xlat2;
  let x_2362 : vec4<f32> = u_xlat0;
  let x_2365 : vec4<f32> = u_xlat3;
  u_xlat18 = ((vec3<f32>(x_2360.x, x_2360.y, x_2360.z) * vec3<f32>(x_2362.y, x_2362.z, x_2362.w)) + vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
  let x_2370 : vec4<f32> = u_xlat5;
  let x_2372 : vec3<f32> = u_xlat18;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2370.x, x_2370.y, x_2370.z) + x_2372);
  let x_2374 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  let x_2378 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2378 == 1.0f);
  let x_2380 : bool = u_xlatb18;
  if (x_2380) {
    let x_2385 : f32 = u_xlat0.x;
    x_2381 = x_2385;
  } else {
    x_2381 = 1.0f;
  }
  let x_2387 : f32 = x_2381;
  SV_Target0.w = x_2387;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

