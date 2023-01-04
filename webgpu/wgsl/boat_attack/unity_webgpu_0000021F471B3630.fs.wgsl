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
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_286 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1733 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : bool;
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
  var x_1578 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var u_xlat58 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1883 : f32;
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
  let x_62 : vec4<f32> = hlslcc_FragCoord;
  let x_66 : f32 = x_43.x_DitheringTextureInvSize;
  let x_68 : vec2<f32> = (vec2<f32>(x_62.x, x_62.y) * vec2<f32>(x_66, x_66));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_43.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.x = x_80.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb19 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb19;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat1.w = 1.0f;
  let x_153 : vec4<f32> = x_92.unity_SHAr;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_92.unity_SHAg;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_159, x_160);
  let x_166 : vec4<f32> = x_92.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_92.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_92.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_92.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat55 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat55;
  u_xlat55 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_92.unity_SHC;
  let x_213 : f32 = u_xlat55;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_221 + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_243.z, x_243.w);
  let x_246 : f32 = u_xlat3.y;
  let x_249 : f32 = x_43.x_ScaleBiasRt.x;
  let x_252 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat55;
  u_xlat3.z = (-(x_254) + 1.0f);
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : f32 = x_43.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat55 = x_267.x;
  let x_270 : f32 = u_xlat55;
  u_xlat56 = (x_270 + -1.0f);
  let x_275 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_276 : f32 = u_xlat56;
  u_xlat56 = ((x_275 * x_276) + 1.0f);
  let x_279 : f32 = u_xlat55;
  u_xlat55 = min(x_279, 1.0f);
  let x_288 : f32 = x_286.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_288);
  let x_290 : bool = u_xlatb3;
  if (x_290) {
    let x_294 : f32 = x_286.x_MainLightShadowParams.y;
    u_xlatb3 = (x_294 == 1.0f);
    let x_296 : bool = u_xlatb3;
    if (x_296) {
      let x_300 : vec4<f32> = vs_TEXCOORD6;
      let x_304 : vec4<f32> = x_286.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_300.x, x_300.y, x_300.x, x_300.y) + x_304);
      let x_307 : vec4<f32> = u_xlat3;
      let x_308 : vec2<f32> = vec2<f32>(x_307.x, x_307.y);
      let x_310 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_308.x, x_308.y, x_310);
      let x_322 : vec3<f32> = txVec0;
      let x_324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_322.xy, x_322.z);
      u_xlat4.x = x_324;
      let x_327 : vec4<f32> = u_xlat3;
      let x_328 : vec2<f32> = vec2<f32>(x_327.z, x_327.w);
      let x_330 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_328.x, x_328.y, x_330);
      let x_337 : vec3<f32> = txVec1;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
      u_xlat4.y = x_339;
      let x_341 : vec4<f32> = vs_TEXCOORD6;
      let x_344 : vec4<f32> = x_286.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_344);
      let x_347 : vec4<f32> = u_xlat3;
      let x_348 : vec2<f32> = vec2<f32>(x_347.x, x_347.y);
      let x_350 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec2;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_357.xy, x_357.z);
      u_xlat4.z = x_359;
      let x_362 : vec4<f32> = u_xlat3;
      let x_363 : vec2<f32> = vec2<f32>(x_362.z, x_362.w);
      let x_365 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_372 : vec3<f32> = txVec3;
      let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_372.xy, x_372.z);
      u_xlat4.w = x_374;
      let x_376 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_376, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_384 : f32 = x_286.x_MainLightShadowParams.y;
      u_xlatb21 = (x_384 == 2.0f);
      let x_387 : bool = u_xlatb21;
      if (x_387) {
        let x_391 : vec4<f32> = vs_TEXCOORD6;
        let x_395 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_400 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_395.z, x_395.w)) + vec2<f32>(0.5f, 0.5f));
        let x_401 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_400.x, x_400.y, x_401.z);
        let x_403 : vec3<f32> = u_xlat21;
        let x_405 : vec2<f32> = floor(vec2<f32>(x_403.x, x_403.y));
        let x_406 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_405.x, x_405.y, x_406.z);
        let x_408 : vec4<f32> = vs_TEXCOORD6;
        let x_411 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_414 : vec3<f32> = u_xlat21;
        let x_417 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411.z, x_411.w)) + -(vec2<f32>(x_414.x, x_414.y)));
        let x_418 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_421 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_421.x, x_421.x, x_421.y, x_421.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_426 : vec4<f32> = u_xlat5;
        let x_428 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_426.x, x_426.x, x_426.z, x_426.z) * vec4<f32>(x_428.x, x_428.x, x_428.z, x_428.z));
        let x_433 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_433.y, x_433.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_438 : vec4<f32> = u_xlat6;
        let x_441 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_441.x, x_441.y)));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_445.y, x_444.y, x_445.w);
        let x_447 : vec4<f32> = u_xlat4;
        let x_450 : vec2<f32> = (-(vec2<f32>(x_447.x, x_447.y)) + vec2<f32>(1.0f, 1.0f));
        let x_451 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
        let x_454 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_454.x, x_454.y), vec2<f32>(0.0f, 0.0f));
        let x_458 : vec2<f32> = u_xlat42;
        let x_460 : vec2<f32> = u_xlat42;
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_458) * x_460) + vec2<f32>(x_462.x, x_462.y));
        let x_465 : vec4<f32> = u_xlat4;
        let x_467 : vec2<f32> = max(vec2<f32>(x_465.x, x_465.y), vec2<f32>(0.0f, 0.0f));
        let x_468 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_470 : vec4<f32> = u_xlat4;
        let x_473 : vec4<f32> = u_xlat4;
        let x_476 : vec4<f32> = u_xlat5;
        let x_478 : vec2<f32> = ((-(vec2<f32>(x_470.x, x_470.y)) * vec2<f32>(x_473.x, x_473.y)) + vec2<f32>(x_476.y, x_476.w));
        let x_479 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
        let x_481 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_481 + vec2<f32>(1.0f, 1.0f));
        let x_483 : vec4<f32> = u_xlat4;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) + vec2<f32>(1.0f, 1.0f));
        let x_486 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_489 : vec4<f32> = u_xlat5;
        let x_493 : vec2<f32> = (vec2<f32>(x_489.x, x_489.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_494 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_497 : vec4<f32> = u_xlat6;
        let x_499 : vec2<f32> = (vec2<f32>(x_497.x, x_497.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_500 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_502 : vec2<f32> = u_xlat42;
        let x_503 : vec2<f32> = (x_502 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_507 : vec4<f32> = u_xlat4;
        let x_509 : vec2<f32> = (vec2<f32>(x_507.x, x_507.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_510 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat5;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.y, x_512.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_515 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_518 : f32 = u_xlat6.x;
        u_xlat7.z = x_518;
        let x_521 : f32 = u_xlat4.x;
        u_xlat7.w = x_521;
        let x_524 : f32 = u_xlat9.x;
        u_xlat8.z = x_524;
        let x_527 : f32 = u_xlat40.x;
        u_xlat8.w = x_527;
        let x_529 : vec4<f32> = u_xlat7;
        let x_531 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_529.z, x_529.w, x_529.x, x_529.z) + vec4<f32>(x_531.z, x_531.w, x_531.x, x_531.z));
        let x_535 : f32 = u_xlat7.y;
        u_xlat6.z = x_535;
        let x_538 : f32 = u_xlat4.y;
        u_xlat6.w = x_538;
        let x_541 : f32 = u_xlat8.y;
        u_xlat9.z = x_541;
        let x_544 : f32 = u_xlat40.y;
        u_xlat9.w = x_544;
        let x_546 : vec4<f32> = u_xlat6;
        let x_548 : vec4<f32> = u_xlat9;
        let x_550 : vec3<f32> = (vec3<f32>(x_546.z, x_546.y, x_546.w) + vec3<f32>(x_548.z, x_548.y, x_548.w));
        let x_551 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
        let x_553 : vec4<f32> = u_xlat8;
        let x_555 : vec4<f32> = u_xlat5;
        let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) / vec3<f32>(x_555.z, x_555.w, x_555.y));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_566 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat9;
        let x_571 : vec4<f32> = u_xlat4;
        let x_573 : vec3<f32> = (vec3<f32>(x_569.z, x_569.y, x_569.w) / vec3<f32>(x_571.x, x_571.y, x_571.z));
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat7;
        let x_578 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat6;
        let x_584 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_586 : vec3<f32> = (vec3<f32>(x_581.y, x_581.x, x_581.z) * vec3<f32>(x_584.x, x_584.x, x_584.x));
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat7;
        let x_592 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_594 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * vec3<f32>(x_592.y, x_592.y, x_592.y));
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_598 : f32 = u_xlat7.x;
        u_xlat6.w = x_598;
        let x_600 : vec3<f32> = u_xlat21;
        let x_603 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_606 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y) * vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y)) + vec4<f32>(x_606.y, x_606.w, x_606.x, x_606.w));
        let x_609 : vec3<f32> = u_xlat21;
        let x_612 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_615 : vec4<f32> = u_xlat6;
        let x_617 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.x, x_612.y)) + vec2<f32>(x_615.z, x_615.w));
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
        let x_621 : f32 = u_xlat6.y;
        u_xlat7.w = x_621;
        let x_623 : vec4<f32> = u_xlat7;
        let x_624 : vec2<f32> = vec2<f32>(x_623.y, x_623.z);
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_624.x, x_625.z, x_624.y);
        let x_628 : vec3<f32> = u_xlat21;
        let x_631 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_634 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y) * vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y)) + vec4<f32>(x_634.x, x_634.y, x_634.z, x_634.y));
        let x_637 : vec3<f32> = u_xlat21;
        let x_640 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_643 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y) * vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.y)) + vec4<f32>(x_643.w, x_643.y, x_643.w, x_643.z));
        let x_646 : vec3<f32> = u_xlat21;
        let x_649 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.x, x_652.w, x_652.z, x_652.w));
        let x_656 : vec4<f32> = u_xlat4;
        let x_658 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_656.x, x_656.x, x_656.x, x_656.y) * vec4<f32>(x_658.z, x_658.w, x_658.y, x_658.z));
        let x_662 : vec4<f32> = u_xlat4;
        let x_664 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_662.y, x_662.y, x_662.z, x_662.z) * x_664);
        let x_667 : f32 = u_xlat4.z;
        let x_669 : f32 = u_xlat5.y;
        u_xlat21.x = (x_667 * x_669);
        let x_673 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_684 : vec3<f32> = txVec4;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_684.xy, x_684.z);
        u_xlat39 = x_686;
        let x_688 : vec4<f32> = u_xlat8;
        let x_689 : vec2<f32> = vec2<f32>(x_688.z, x_688.w);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_699 : vec3<f32> = txVec5;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_699.xy, x_699.z);
        u_xlat57 = x_701;
        let x_702 : f32 = u_xlat57;
        let x_704 : f32 = u_xlat11.y;
        u_xlat57 = (x_702 * x_704);
        let x_707 : f32 = u_xlat11.x;
        let x_708 : f32 = u_xlat39;
        let x_710 : f32 = u_xlat57;
        u_xlat39 = ((x_707 * x_708) + x_710);
        let x_713 : vec4<f32> = u_xlat9;
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_716 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec6;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
        u_xlat57 = x_725;
        let x_727 : f32 = u_xlat11.z;
        let x_728 : f32 = u_xlat57;
        let x_730 : f32 = u_xlat39;
        u_xlat39 = ((x_727 * x_728) + x_730);
        let x_733 : vec4<f32> = u_xlat7;
        let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
        let x_736 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_743 : vec3<f32> = txVec7;
        let x_745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_743.xy, x_743.z);
        u_xlat57 = x_745;
        let x_747 : f32 = u_xlat11.w;
        let x_748 : f32 = u_xlat57;
        let x_750 : f32 = u_xlat39;
        u_xlat39 = ((x_747 * x_748) + x_750);
        let x_753 : vec4<f32> = u_xlat10;
        let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
        let x_756 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec8;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_763.xy, x_763.z);
        u_xlat57 = x_765;
        let x_767 : f32 = u_xlat12.x;
        let x_768 : f32 = u_xlat57;
        let x_770 : f32 = u_xlat39;
        u_xlat39 = ((x_767 * x_768) + x_770);
        let x_773 : vec4<f32> = u_xlat10;
        let x_774 : vec2<f32> = vec2<f32>(x_773.z, x_773.w);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec9;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat57 = x_785;
        let x_787 : f32 = u_xlat12.y;
        let x_788 : f32 = u_xlat57;
        let x_790 : f32 = u_xlat39;
        u_xlat39 = ((x_787 * x_788) + x_790);
        let x_793 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = vec2<f32>(x_793.z, x_793.w);
        let x_796 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec10;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_803.xy, x_803.z);
        u_xlat57 = x_805;
        let x_807 : f32 = u_xlat12.z;
        let x_808 : f32 = u_xlat57;
        let x_810 : f32 = u_xlat39;
        u_xlat39 = ((x_807 * x_808) + x_810);
        let x_813 : vec4<f32> = u_xlat6;
        let x_814 : vec2<f32> = vec2<f32>(x_813.x, x_813.y);
        let x_816 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_814.x, x_814.y, x_816);
        let x_823 : vec3<f32> = txVec11;
        let x_825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_823.xy, x_823.z);
        u_xlat57 = x_825;
        let x_827 : f32 = u_xlat12.w;
        let x_828 : f32 = u_xlat57;
        let x_830 : f32 = u_xlat39;
        u_xlat39 = ((x_827 * x_828) + x_830);
        let x_833 : vec4<f32> = u_xlat6;
        let x_834 : vec2<f32> = vec2<f32>(x_833.z, x_833.w);
        let x_836 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_834.x, x_834.y, x_836);
        let x_843 : vec3<f32> = txVec12;
        let x_845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_843.xy, x_843.z);
        u_xlat57 = x_845;
        let x_847 : f32 = u_xlat21.x;
        let x_848 : f32 = u_xlat57;
        let x_850 : f32 = u_xlat39;
        u_xlat3.x = ((x_847 * x_848) + x_850);
      } else {
        let x_854 : vec4<f32> = vs_TEXCOORD6;
        let x_857 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_860 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(x_857.z, x_857.w)) + vec2<f32>(0.5f, 0.5f));
        let x_861 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_860.x, x_860.y, x_861.z);
        let x_863 : vec3<f32> = u_xlat21;
        let x_865 : vec2<f32> = floor(vec2<f32>(x_863.x, x_863.y));
        let x_866 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_865.x, x_865.y, x_866.z);
        let x_868 : vec4<f32> = vs_TEXCOORD6;
        let x_871 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_874 : vec3<f32> = u_xlat21;
        let x_877 : vec2<f32> = ((vec2<f32>(x_868.x, x_868.y) * vec2<f32>(x_871.z, x_871.w)) + -(vec2<f32>(x_874.x, x_874.y)));
        let x_878 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_880.x, x_880.x, x_880.y, x_880.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_883 : vec4<f32> = u_xlat5;
        let x_885 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_883.x, x_883.x, x_883.z, x_883.z) * vec4<f32>(x_885.x, x_885.x, x_885.z, x_885.z));
        let x_888 : vec4<f32> = u_xlat6;
        let x_892 : vec2<f32> = (vec2<f32>(x_888.y, x_888.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_893 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_893.x, x_892.x, x_893.z, x_892.y);
        let x_895 : vec4<f32> = u_xlat6;
        let x_898 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_895.x, x_895.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_898.x, x_898.y)));
        let x_902 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = (-(vec2<f32>(x_902.x, x_902.y)) + vec2<f32>(1.0f, 1.0f));
        let x_906 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_905.x, x_906.y, x_905.y, x_906.w);
        let x_908 : vec4<f32> = u_xlat4;
        let x_910 : vec2<f32> = min(vec2<f32>(x_908.x, x_908.y), vec2<f32>(0.0f, 0.0f));
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat6;
        let x_916 : vec4<f32> = u_xlat6;
        let x_919 : vec4<f32> = u_xlat5;
        let x_921 : vec2<f32> = ((-(vec2<f32>(x_913.x, x_913.y)) * vec2<f32>(x_916.x, x_916.y)) + vec2<f32>(x_919.x, x_919.z));
        let x_922 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_921.x, x_922.y, x_921.y, x_922.w);
        let x_924 : vec4<f32> = u_xlat4;
        let x_926 : vec2<f32> = max(vec2<f32>(x_924.x, x_924.y), vec2<f32>(0.0f, 0.0f));
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat6;
        let x_932 : vec4<f32> = u_xlat6;
        let x_935 : vec4<f32> = u_xlat5;
        let x_937 : vec2<f32> = ((-(vec2<f32>(x_929.x, x_929.y)) * vec2<f32>(x_932.x, x_932.y)) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_937.x, x_938.z, x_937.y);
        let x_940 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_940 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_944 : f32 = u_xlat5.y;
        u_xlat6.z = (x_944 * 0.081632003f);
        let x_948 : vec2<f32> = u_xlat40;
        let x_951 : vec2<f32> = (vec2<f32>(x_948.y, x_948.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_954.x, x_954.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_958 : f32 = u_xlat5.w;
        u_xlat8.z = (x_958 * 0.081632003f);
        let x_962 : f32 = u_xlat8.y;
        u_xlat6.x = x_962;
        let x_964 : vec4<f32> = u_xlat4;
        let x_971 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_972 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_971.x, x_972.z, x_971.y);
        let x_974 : vec4<f32> = u_xlat4;
        let x_978 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_979 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_979.w);
        let x_982 : f32 = u_xlat40.x;
        u_xlat5.y = x_982;
        let x_985 : f32 = u_xlat7.y;
        u_xlat5.w = x_985;
        let x_987 : vec4<f32> = u_xlat5;
        let x_988 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_987 + x_988);
        let x_990 : vec4<f32> = u_xlat4;
        let x_993 : vec2<f32> = ((vec2<f32>(x_990.y, x_990.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_993.x, x_994.z, x_993.y);
        let x_996 : vec4<f32> = u_xlat4;
        let x_999 : vec2<f32> = ((vec2<f32>(x_996.y, x_996.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_1000.w);
        let x_1003 : f32 = u_xlat40.y;
        u_xlat7.y = x_1003;
        let x_1005 : vec4<f32> = u_xlat7;
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1005 + x_1006);
        let x_1008 : vec4<f32> = u_xlat5;
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_1008 / x_1009);
        let x_1011 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1011 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1018 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_1017 / x_1018);
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1020 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1022 : vec4<f32> = u_xlat5;
        let x_1025 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1022.w, x_1022.x, x_1022.y, x_1022.z) * vec4<f32>(x_1025.x, x_1025.x, x_1025.x, x_1025.x));
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1031 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1028.x, x_1028.w, x_1028.y, x_1028.z) * vec4<f32>(x_1031.y, x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat5;
        let x_1035 : vec3<f32> = vec3<f32>(x_1034.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1035.z);
        let x_1039 : f32 = u_xlat7.x;
        u_xlat8.y = x_1039;
        let x_1041 : vec3<f32> = u_xlat21;
        let x_1044 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.y));
        let x_1050 : vec3<f32> = u_xlat21;
        let x_1053 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat8;
        let x_1058 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.w, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1062 : f32 = u_xlat8.y;
        u_xlat5.y = x_1062;
        let x_1065 : f32 = u_xlat7.z;
        u_xlat8.y = x_1065;
        let x_1067 : vec3<f32> = u_xlat21;
        let x_1070 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y) * vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y)) + vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1073.y));
        let x_1077 : vec3<f32> = u_xlat21;
        let x_1080 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1080.x, x_1080.y)) + vec2<f32>(x_1083.w, x_1083.y));
        let x_1087 : f32 = u_xlat8.y;
        u_xlat5.z = x_1087;
        let x_1089 : vec3<f32> = u_xlat21;
        let x_1092 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.z));
        let x_1099 : f32 = u_xlat7.w;
        u_xlat8.y = x_1099;
        let x_1102 : vec3<f32> = u_xlat21;
        let x_1105 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y) * vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y)) + vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1108.y));
        let x_1112 : vec3<f32> = u_xlat21;
        let x_1115 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(x_1118.w, x_1118.y));
        let x_1122 : f32 = u_xlat8.y;
        u_xlat5.w = x_1122;
        let x_1125 : vec3<f32> = u_xlat21;
        let x_1128 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.x, x_1131.w));
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1135 : vec3<f32> = vec3<f32>(x_1134.x, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1135.z);
        let x_1138 : vec3<f32> = u_xlat21;
        let x_1141 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec3<f32> = u_xlat21;
        let x_1151 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat5.x;
        u_xlat7.x = x_1158;
        let x_1160 : vec3<f32> = u_xlat21;
        let x_1163 : vec4<f32> = x_286.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.x, x_1166.y));
        let x_1169 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1168.x, x_1168.y, x_1169.z);
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1172.x, x_1172.x, x_1172.x, x_1172.x) * x_1174);
        let x_1177 : vec4<f32> = u_xlat4;
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1177.y, x_1177.y, x_1177.y, x_1177.y) * x_1179);
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1182.z, x_1182.z, x_1182.z, x_1182.z) * x_1184);
        let x_1186 : vec4<f32> = u_xlat4;
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1186.w, x_1186.w, x_1186.w, x_1186.w) * x_1188);
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec13;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1201.xy, x_1201.z);
        u_xlat57 = x_1203;
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec14;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1215.xy, x_1215.z);
        u_xlat5.x = x_1217;
        let x_1220 : f32 = u_xlat5.x;
        let x_1222 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1220 * x_1222);
        let x_1226 : f32 = u_xlat15.x;
        let x_1227 : f32 = u_xlat57;
        let x_1230 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1226 * x_1227) + x_1230);
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec15;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat5.x = x_1245;
        let x_1248 : f32 = u_xlat15.z;
        let x_1250 : f32 = u_xlat5.x;
        let x_1252 : f32 = u_xlat57;
        u_xlat57 = ((x_1248 * x_1250) + x_1252);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec16;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat5.x = x_1267;
        let x_1270 : f32 = u_xlat15.w;
        let x_1272 : f32 = u_xlat5.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec17;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat5.x = x_1289;
        let x_1292 : f32 = u_xlat16.x;
        let x_1294 : f32 = u_xlat5.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.z, x_1299.w);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec18;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat5.x = x_1311;
        let x_1314 : f32 = u_xlat16.y;
        let x_1316 : f32 = u_xlat5.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec2<f32> = u_xlat46;
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec19;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat5.x = x_1332;
        let x_1335 : f32 = u_xlat16.z;
        let x_1337 : f32 = u_xlat5.x;
        let x_1339 : f32 = u_xlat57;
        u_xlat57 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat12;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec20;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat5.x = x_1354;
        let x_1357 : f32 = u_xlat16.w;
        let x_1359 : f32 = u_xlat5.x;
        let x_1361 : f32 = u_xlat57;
        u_xlat57 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat13;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.x, x_1364.y);
        let x_1367 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec21;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1374.xy, x_1374.z);
        u_xlat5.x = x_1376;
        let x_1379 : f32 = u_xlat17.x;
        let x_1381 : f32 = u_xlat5.x;
        let x_1383 : f32 = u_xlat57;
        u_xlat57 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec4<f32> = u_xlat13;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.z, x_1386.w);
        let x_1389 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec22;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
        u_xlat5.x = x_1398;
        let x_1401 : f32 = u_xlat17.y;
        let x_1403 : f32 = u_xlat5.x;
        let x_1405 : f32 = u_xlat57;
        u_xlat57 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec2<f32> = u_xlat23;
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec23;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat5.x = x_1419;
        let x_1422 : f32 = u_xlat17.z;
        let x_1424 : f32 = u_xlat5.x;
        let x_1426 : f32 = u_xlat57;
        u_xlat57 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec2<f32> = u_xlat14;
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec24;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat5.x = x_1440;
        let x_1443 : f32 = u_xlat17.w;
        let x_1445 : f32 = u_xlat5.x;
        let x_1447 : f32 = u_xlat57;
        u_xlat57 = ((x_1443 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat8;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec25;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat5.x = x_1462;
        let x_1465 : f32 = u_xlat4.x;
        let x_1467 : f32 = u_xlat5.x;
        let x_1469 : f32 = u_xlat57;
        u_xlat57 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat8;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec26;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat4.x = x_1484;
        let x_1487 : f32 = u_xlat4.y;
        let x_1489 : f32 = u_xlat4.x;
        let x_1491 : f32 = u_xlat57;
        u_xlat57 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec2<f32> = u_xlat43;
        let x_1496 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec27;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat4.x = x_1505;
        let x_1508 : f32 = u_xlat4.z;
        let x_1510 : f32 = u_xlat4.x;
        let x_1512 : f32 = u_xlat57;
        u_xlat57 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec3<f32> = u_xlat21;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec28;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat21.x = x_1527;
        let x_1530 : f32 = u_xlat4.w;
        let x_1532 : f32 = u_xlat21.x;
        let x_1534 : f32 = u_xlat57;
        u_xlat3.x = ((x_1530 * x_1532) + x_1534);
      }
    }
  } else {
    let x_1539 : vec4<f32> = vs_TEXCOORD6;
    let x_1540 : vec2<f32> = vec2<f32>(x_1539.x, x_1539.y);
    let x_1542 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
    let x_1549 : vec3<f32> = txVec29;
    let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1549.xy, x_1549.z);
    u_xlat3.x = x_1551;
  }
  let x_1554 : f32 = x_286.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1554) + 1.0f);
  let x_1559 : f32 = u_xlat3.x;
  let x_1561 : f32 = x_286.x_MainLightShadowParams.x;
  let x_1564 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1559 * x_1561) + x_1564);
  let x_1568 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1568);
  let x_1572 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1572 >= 1.0f);
  let x_1574 : bool = u_xlatb39;
  let x_1575 : bool = u_xlatb21;
  u_xlatb21 = (x_1574 | x_1575);
  let x_1577 : bool = u_xlatb21;
  if (x_1577) {
    x_1578 = 1.0f;
  } else {
    let x_1583 : f32 = u_xlat3.x;
    x_1578 = x_1583;
  }
  let x_1584 : f32 = x_1578;
  u_xlat3.x = x_1584;
  let x_1587 : vec3<f32> = vs_TEXCOORD1;
  let x_1590 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1587 + -(x_1590));
  let x_1593 : vec3<f32> = u_xlat21;
  let x_1594 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1593, x_1594);
  let x_1598 : f32 = u_xlat21.x;
  let x_1600 : f32 = x_286.x_MainLightShadowParams.z;
  let x_1603 : f32 = x_286.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1598 * x_1600) + x_1603);
  let x_1607 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1607, 0.0f, 1.0f);
  let x_1611 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1611) + 1.0f);
  let x_1615 : f32 = u_xlat21.x;
  let x_1616 : f32 = u_xlat39;
  let x_1619 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1615 * x_1616) + x_1619);
  let x_1622 : f32 = u_xlat56;
  let x_1626 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1622, x_1622, x_1622) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1629 : f32 = u_xlat55;
  let x_1631 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1629, x_1629, x_1629) * x_1631);
  let x_1634 : f32 = u_xlat3.x;
  let x_1637 : f32 = x_92.unity_LightData.z;
  u_xlat55 = (x_1634 * x_1637);
  let x_1639 : f32 = u_xlat55;
  let x_1641 : vec3<f32> = u_xlat21;
  let x_1642 : vec3<f32> = (vec3<f32>(x_1639, x_1639, x_1639) * x_1641);
  let x_1643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
  let x_1645 : vec4<f32> = u_xlat1;
  let x_1648 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1645.x, x_1645.y, x_1645.z), vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1651 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1651, 0.0f, 1.0f);
  let x_1653 : f32 = u_xlat55;
  let x_1655 : vec4<f32> = u_xlat3;
  let x_1657 : vec3<f32> = (vec3<f32>(x_1653, x_1653, x_1653) * vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : vec4<f32> = u_xlat0;
  let x_1662 : vec4<f32> = u_xlat3;
  let x_1664 : vec3<f32> = (vec3<f32>(x_1660.y, x_1660.z, x_1660.w) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
  let x_1668 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1670 : f32 = x_92.unity_LightData.y;
  u_xlat55 = min(x_1668, x_1670);
  let x_1674 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1674));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1686 : u32 = u_xlatu_loop_1;
    let x_1687 : u32 = u_xlatu55;
    if ((x_1686 < x_1687)) {
    } else {
      break;
    }
    let x_1690 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1690 >> 2u);
    let x_1694 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1694 & 3u));
    let x_1698 : u32 = u_xlatu58;
    let x_1701 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_1698)];
    let x_1711 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1716 : vec4<u32> = indexable[x_1711];
    u_xlat58 = dot(x_1701, bitcast<vec4<f32>>(x_1716));
    let x_1720 : f32 = u_xlat58;
    u_xlati58 = i32(x_1720);
    let x_1722 : vec3<f32> = vs_TEXCOORD1;
    let x_1734 : i32 = u_xlati58;
    let x_1736 : vec4<f32> = x_1733.x_AdditionalLightsPosition[x_1734];
    let x_1739 : i32 = u_xlati58;
    let x_1741 : vec4<f32> = x_1733.x_AdditionalLightsPosition[x_1739];
    let x_1743 : vec3<f32> = ((-(x_1722) * vec3<f32>(x_1736.w, x_1736.w, x_1736.w)) + vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
    let x_1744 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
    let x_1747 : vec4<f32> = u_xlat5;
    let x_1749 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1747.x, x_1747.y, x_1747.z), vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
    let x_1752 : f32 = u_xlat59;
    u_xlat59 = max(x_1752, 6.10351562e-05f);
    let x_1755 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1755);
    let x_1758 : vec4<f32> = u_xlat5;
    let x_1760 : vec4<f32> = u_xlat6;
    let x_1762 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1760.x, x_1760.x, x_1760.x));
    let x_1763 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
    let x_1765 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1765);
    let x_1768 : f32 = u_xlat59;
    let x_1769 : i32 = u_xlati58;
    let x_1771 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1769].x;
    u_xlat59 = (x_1768 * x_1771);
    let x_1773 : f32 = u_xlat59;
    let x_1775 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1773) * x_1775) + 1.0f);
    let x_1778 : f32 = u_xlat59;
    u_xlat59 = max(x_1778, 0.0f);
    let x_1780 : f32 = u_xlat59;
    let x_1781 : f32 = u_xlat59;
    u_xlat59 = (x_1780 * x_1781);
    let x_1783 : f32 = u_xlat59;
    let x_1785 : f32 = u_xlat6.x;
    u_xlat59 = (x_1783 * x_1785);
    let x_1787 : i32 = u_xlati58;
    let x_1789 : vec4<f32> = x_1733.x_AdditionalLightsSpotDir[x_1787];
    let x_1791 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1789.x, x_1789.y, x_1789.z), vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
    let x_1796 : f32 = u_xlat6.x;
    let x_1797 : i32 = u_xlati58;
    let x_1799 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1797].z;
    let x_1801 : i32 = u_xlati58;
    let x_1803 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1801].w;
    u_xlat6.x = ((x_1796 * x_1799) + x_1803);
    let x_1807 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1807, 0.0f, 1.0f);
    let x_1811 : f32 = u_xlat6.x;
    let x_1813 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1811 * x_1813);
    let x_1816 : f32 = u_xlat59;
    let x_1818 : f32 = u_xlat6.x;
    u_xlat59 = (x_1816 * x_1818);
    let x_1820 : f32 = u_xlat56;
    let x_1822 : i32 = u_xlati58;
    let x_1824 : vec4<f32> = x_1733.x_AdditionalLightsColor[x_1822];
    let x_1826 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
    let x_1827 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
    let x_1829 : f32 = u_xlat59;
    let x_1831 : vec4<f32> = u_xlat6;
    let x_1833 : vec3<f32> = (vec3<f32>(x_1829, x_1829, x_1829) * vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
    let x_1834 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
    let x_1836 : vec4<f32> = u_xlat1;
    let x_1838 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(vec3<f32>(x_1836.x, x_1836.y, x_1836.z), vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1841, 0.0f, 1.0f);
    let x_1843 : f32 = u_xlat58;
    let x_1845 : vec4<f32> = u_xlat6;
    let x_1847 : vec3<f32> = (vec3<f32>(x_1843, x_1843, x_1843) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
    let x_1848 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat5;
    let x_1852 : vec4<f32> = u_xlat0;
    let x_1855 : vec4<f32> = u_xlat4;
    let x_1857 : vec3<f32> = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * vec3<f32>(x_1852.y, x_1852.z, x_1852.w)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);

    continuing {
      let x_1860 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1860 + bitcast<u32>(1i));
    }
  }
  let x_1863 : vec3<f32> = u_xlat2;
  let x_1864 : vec4<f32> = u_xlat0;
  let x_1867 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_1863 * vec3<f32>(x_1864.y, x_1864.z, x_1864.w)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1872 : vec4<f32> = u_xlat4;
  let x_1874 : vec3<f32> = u_xlat18;
  let x_1875 : vec3<f32> = (vec3<f32>(x_1872.x, x_1872.y, x_1872.z) + x_1874);
  let x_1876 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1880 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1880 == 1.0f);
  let x_1882 : bool = u_xlatb18;
  if (x_1882) {
    let x_1887 : f32 = u_xlat0.x;
    x_1883 = x_1887;
  } else {
    x_1883 = 1.0f;
  }
  let x_1889 : f32 = x_1883;
  SV_Target0.w = x_1889;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

