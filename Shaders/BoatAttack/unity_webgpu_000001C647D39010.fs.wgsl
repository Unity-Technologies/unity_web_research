struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_182 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_325 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1740 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb56 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat56 : f32;
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
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
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
  var u_xlatb57 : bool;
  var x_1580 : f32;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
  var x_1882 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat18.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat54;
  let x_104 : f32 = u_xlat36;
  u_xlat36 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat36;
  u_xlat36 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat18.x;
  let x_112 : f32 = u_xlat36;
  u_xlat18.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat18.x;
  u_xlat18.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb36;
  if (x_129) {
    let x_134 : f32 = u_xlat18.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat18.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat18.x;
  u_xlatb18 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb18;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat18;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  let x_172 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  u_xlat2.w = 1.0f;
  let x_185 : vec4<f32> = x_182.unity_SHAr;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_182.unity_SHAg;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_191, x_192);
  let x_198 : vec4<f32> = x_182.unity_SHAb;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_198, x_199);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_203.y, x_203.z, x_203.z, x_203.x) * vec4<f32>(x_205.x, x_205.y, x_205.z, x_205.z));
  let x_211 : vec4<f32> = x_182.unity_SHBr;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_182.unity_SHBg;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_182.unity_SHBb;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_223, x_224);
  let x_228 : f32 = u_xlat2.y;
  let x_230 : f32 = u_xlat2.y;
  u_xlat18.x = (x_228 * x_230);
  let x_234 : f32 = u_xlat2.x;
  let x_236 : f32 = u_xlat2.x;
  let x_239 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_234 * x_236) + -(x_239));
  let x_245 : vec4<f32> = x_182.unity_SHC;
  let x_247 : vec3<f32> = u_xlat18;
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_255 + vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_259, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_264 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
  let x_269 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_265.x, x_265.y));
  let x_270 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_269.x, x_270.y, x_269.y);
  let x_272 : vec3<f32> = u_xlat18;
  let x_274 : vec4<f32> = hlslcc_FragCoord;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.x, x_272.z) * vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_280 : f32 = u_xlat4.y;
  let x_283 : f32 = x_43.x_ScaleBiasRt.x;
  let x_286 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_280 * x_283) + x_286);
  let x_290 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_290) + 1.0f);
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : f32 = x_43.x_GlobalMipBias.x;
  let x_303 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_299.x, x_299.z), x_302);
  u_xlat18.x = x_303.x;
  let x_307 : f32 = u_xlat18.x;
  u_xlat54 = (x_307 + -1.0f);
  let x_312 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_313 : f32 = u_xlat54;
  u_xlat54 = ((x_312 * x_313) + 1.0f);
  let x_317 : f32 = u_xlat18.x;
  u_xlat18.x = min(x_317, 1.0f);
  let x_327 : f32 = x_325.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_327);
  let x_329 : bool = u_xlatb1;
  if (x_329) {
    let x_333 : f32 = x_325.x_MainLightShadowParams.y;
    u_xlatb1 = (x_333 == 1.0f);
    let x_335 : bool = u_xlatb1;
    if (x_335) {
      let x_339 : vec4<f32> = vs_TEXCOORD6;
      let x_343 : vec4<f32> = x_325.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_339.x, x_339.y, x_339.x, x_339.y) + x_343);
      let x_346 : vec4<f32> = u_xlat4;
      let x_347 : vec2<f32> = vec2<f32>(x_346.x, x_346.y);
      let x_349 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_361 : vec3<f32> = txVec0;
      let x_363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_361.xy, x_361.z);
      u_xlat5.x = x_363;
      let x_366 : vec4<f32> = u_xlat4;
      let x_367 : vec2<f32> = vec2<f32>(x_366.z, x_366.w);
      let x_369 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_367.x, x_367.y, x_369);
      let x_376 : vec3<f32> = txVec1;
      let x_378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_376.xy, x_376.z);
      u_xlat5.y = x_378;
      let x_380 : vec4<f32> = vs_TEXCOORD6;
      let x_384 : vec4<f32> = x_325.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_380.x, x_380.y, x_380.x, x_380.y) + x_384);
      let x_387 : vec4<f32> = u_xlat4;
      let x_388 : vec2<f32> = vec2<f32>(x_387.x, x_387.y);
      let x_390 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_388.x, x_388.y, x_390);
      let x_397 : vec3<f32> = txVec2;
      let x_399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_397.xy, x_397.z);
      u_xlat5.z = x_399;
      let x_402 : vec4<f32> = u_xlat4;
      let x_403 : vec2<f32> = vec2<f32>(x_402.z, x_402.w);
      let x_405 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_403.x, x_403.y, x_405);
      let x_412 : vec3<f32> = txVec3;
      let x_414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_412.xy, x_412.z);
      u_xlat5.w = x_414;
      let x_416 : vec4<f32> = u_xlat5;
      u_xlat1.x = dot(x_416, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_424 : f32 = x_325.x_MainLightShadowParams.y;
      u_xlatb56 = (x_424 == 2.0f);
      let x_427 : bool = u_xlatb56;
      if (x_427) {
        let x_430 : vec4<f32> = vs_TEXCOORD6;
        let x_434 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_438 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_434.z, x_434.w)) + vec2<f32>(0.5f, 0.5f));
        let x_439 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec4<f32> = u_xlat4;
        let x_443 : vec2<f32> = floor(vec2<f32>(x_441.x, x_441.y));
        let x_444 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_448 : vec4<f32> = vs_TEXCOORD6;
        let x_451 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_454 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(x_451.z, x_451.w)) + -(vec2<f32>(x_454.x, x_454.y)));
        let x_458 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_458.x, x_458.x, x_458.y, x_458.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat5;
        let x_465 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat6;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_478 : vec2<f32> = u_xlat40;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_488 : vec2<f32> = u_xlat40;
        let x_490 : vec2<f32> = min(x_488, vec2<f32>(0.0f, 0.0f));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_496 : vec4<f32> = u_xlat7;
        let x_499 : vec2<f32> = u_xlat42;
        let x_500 : vec2<f32> = ((-(vec2<f32>(x_493.x, x_493.y)) * vec2<f32>(x_496.x, x_496.y)) + x_499);
        let x_501 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_503 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_503, vec2<f32>(0.0f, 0.0f));
        let x_505 : vec2<f32> = u_xlat40;
        let x_507 : vec2<f32> = u_xlat40;
        let x_509 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_505) * x_507) + vec2<f32>(x_509.y, x_509.w));
        let x_512 : vec4<f32> = u_xlat7;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) + vec2<f32>(1.0f, 1.0f));
        let x_515 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_517 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_517 + vec2<f32>(1.0f, 1.0f));
        let x_520 : vec4<f32> = u_xlat6;
        let x_524 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_525 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec2<f32> = u_xlat42;
        let x_528 : vec2<f32> = (x_527 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_533 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_534 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_537 : vec2<f32> = u_xlat40;
        let x_538 : vec2<f32> = (x_537 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_539 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_541.y, x_541.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_545 : f32 = u_xlat7.x;
        u_xlat8.z = x_545;
        let x_548 : f32 = u_xlat40.x;
        u_xlat8.w = x_548;
        let x_551 : f32 = u_xlat9.x;
        u_xlat6.z = x_551;
        let x_554 : f32 = u_xlat5.x;
        u_xlat6.w = x_554;
        let x_557 : vec4<f32> = u_xlat6;
        let x_559 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_557.z, x_557.w, x_557.x, x_557.z) + vec4<f32>(x_559.z, x_559.w, x_559.x, x_559.z));
        let x_563 : f32 = u_xlat8.y;
        u_xlat7.z = x_563;
        let x_566 : f32 = u_xlat40.y;
        u_xlat7.w = x_566;
        let x_569 : f32 = u_xlat6.y;
        u_xlat9.z = x_569;
        let x_572 : f32 = u_xlat5.z;
        u_xlat9.w = x_572;
        let x_574 : vec4<f32> = u_xlat7;
        let x_576 : vec4<f32> = u_xlat9;
        let x_578 : vec3<f32> = (vec3<f32>(x_574.z, x_574.y, x_574.w) + vec3<f32>(x_576.z, x_576.y, x_576.w));
        let x_579 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat6;
        let x_583 : vec4<f32> = u_xlat10;
        let x_585 : vec3<f32> = (vec3<f32>(x_581.x, x_581.z, x_581.w) / vec3<f32>(x_583.z, x_583.w, x_583.y));
        let x_586 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat6;
        let x_594 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat9;
        let x_599 : vec4<f32> = u_xlat5;
        let x_601 : vec3<f32> = (vec3<f32>(x_597.z, x_597.y, x_597.w) / vec3<f32>(x_599.x, x_599.y, x_599.z));
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat7;
        let x_606 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_607 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
        let x_609 : vec4<f32> = u_xlat6;
        let x_612 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_614 : vec3<f32> = (vec3<f32>(x_609.y, x_609.x, x_609.z) * vec3<f32>(x_612.x, x_612.x, x_612.x));
        let x_615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat7;
        let x_620 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_622 : vec3<f32> = (vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(x_620.y, x_620.y, x_620.y));
        let x_623 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
        let x_626 : f32 = u_xlat7.x;
        u_xlat6.w = x_626;
        let x_628 : vec4<f32> = u_xlat4;
        let x_631 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_634 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y) * vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y)) + vec4<f32>(x_634.y, x_634.w, x_634.x, x_634.w));
        let x_637 : vec4<f32> = u_xlat4;
        let x_640 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_643 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_637.x, x_637.y) * vec2<f32>(x_640.x, x_640.y)) + vec2<f32>(x_643.z, x_643.w));
        let x_647 : f32 = u_xlat6.y;
        u_xlat7.w = x_647;
        let x_649 : vec4<f32> = u_xlat7;
        let x_650 : vec2<f32> = vec2<f32>(x_649.y, x_649.z);
        let x_651 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_651.x, x_650.x, x_651.z, x_650.y);
        let x_653 : vec4<f32> = u_xlat4;
        let x_656 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y) * vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y)) + vec4<f32>(x_659.x, x_659.y, x_659.z, x_659.y));
        let x_662 : vec4<f32> = u_xlat4;
        let x_665 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_668 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y) * vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y)) + vec4<f32>(x_668.w, x_668.y, x_668.w, x_668.z));
        let x_671 : vec4<f32> = u_xlat4;
        let x_674 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_677 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y) * vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y)) + vec4<f32>(x_677.x, x_677.w, x_677.z, x_677.w));
        let x_681 : vec4<f32> = u_xlat5;
        let x_683 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_681.x, x_681.x, x_681.x, x_681.y) * vec4<f32>(x_683.z, x_683.w, x_683.y, x_683.z));
        let x_687 : vec4<f32> = u_xlat5;
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_687.y, x_687.y, x_687.z, x_687.z) * x_689);
        let x_693 : f32 = u_xlat5.z;
        let x_695 : f32 = u_xlat10.y;
        u_xlat56 = (x_693 * x_695);
        let x_698 : vec4<f32> = u_xlat8;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_709 : vec3<f32> = txVec4;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_709.xy, x_709.z);
        u_xlat57 = x_711;
        let x_713 : vec4<f32> = u_xlat8;
        let x_714 : vec2<f32> = vec2<f32>(x_713.z, x_713.w);
        let x_716 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec5;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
        u_xlat4.x = x_725;
        let x_728 : f32 = u_xlat4.x;
        let x_730 : f32 = u_xlat11.y;
        u_xlat4.x = (x_728 * x_730);
        let x_734 : f32 = u_xlat11.x;
        let x_735 : f32 = u_xlat57;
        let x_738 : f32 = u_xlat4.x;
        u_xlat57 = ((x_734 * x_735) + x_738);
        let x_741 : vec2<f32> = u_xlat40;
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec6;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_750.xy, x_750.z);
        u_xlat4.x = x_752;
        let x_755 : f32 = u_xlat11.z;
        let x_757 : f32 = u_xlat4.x;
        let x_759 : f32 = u_xlat57;
        u_xlat57 = ((x_755 * x_757) + x_759);
        let x_762 : vec4<f32> = u_xlat7;
        let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec7;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_772.xy, x_772.z);
        u_xlat4.x = x_774;
        let x_777 : f32 = u_xlat11.w;
        let x_779 : f32 = u_xlat4.x;
        let x_781 : f32 = u_xlat57;
        u_xlat57 = ((x_777 * x_779) + x_781);
        let x_784 : vec4<f32> = u_xlat9;
        let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
        let x_787 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_794 : vec3<f32> = txVec8;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_794.xy, x_794.z);
        u_xlat4.x = x_796;
        let x_799 : f32 = u_xlat12.x;
        let x_801 : f32 = u_xlat4.x;
        let x_803 : f32 = u_xlat57;
        u_xlat57 = ((x_799 * x_801) + x_803);
        let x_806 : vec4<f32> = u_xlat9;
        let x_807 : vec2<f32> = vec2<f32>(x_806.z, x_806.w);
        let x_809 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_807.x, x_807.y, x_809);
        let x_816 : vec3<f32> = txVec9;
        let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_816.xy, x_816.z);
        u_xlat4.x = x_818;
        let x_821 : f32 = u_xlat12.y;
        let x_823 : f32 = u_xlat4.x;
        let x_825 : f32 = u_xlat57;
        u_xlat57 = ((x_821 * x_823) + x_825);
        let x_828 : vec4<f32> = u_xlat7;
        let x_829 : vec2<f32> = vec2<f32>(x_828.z, x_828.w);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec10;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_838.xy, x_838.z);
        u_xlat4.x = x_840;
        let x_843 : f32 = u_xlat12.z;
        let x_845 : f32 = u_xlat4.x;
        let x_847 : f32 = u_xlat57;
        u_xlat57 = ((x_843 * x_845) + x_847);
        let x_850 : vec4<f32> = u_xlat6;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_860 : vec3<f32> = txVec11;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_860.xy, x_860.z);
        u_xlat4.x = x_862;
        let x_865 : f32 = u_xlat12.w;
        let x_867 : f32 = u_xlat4.x;
        let x_869 : f32 = u_xlat57;
        u_xlat57 = ((x_865 * x_867) + x_869);
        let x_872 : vec4<f32> = u_xlat6;
        let x_873 : vec2<f32> = vec2<f32>(x_872.z, x_872.w);
        let x_875 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_882 : vec3<f32> = txVec12;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_882.xy, x_882.z);
        u_xlat4.x = x_884;
        let x_886 : f32 = u_xlat56;
        let x_888 : f32 = u_xlat4.x;
        let x_890 : f32 = u_xlat57;
        u_xlat1.x = ((x_886 * x_888) + x_890);
      } else {
        let x_894 : vec4<f32> = vs_TEXCOORD6;
        let x_897 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = vs_TEXCOORD6;
        let x_911 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = u_xlat40;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat40;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat42;
        let x_950 : vec2<f32> = u_xlat42;
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat42;
        let x_962 : vec2<f32> = u_xlat42;
        let x_964 : vec4<f32> = u_xlat5;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat23;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat5.y;
        u_xlat8.z = (x_981 * 0.081632003f);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat6;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat9.y;
        u_xlat8.x = x_998;
        let x_1000 : vec2<f32> = u_xlat40;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat40;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat5.x;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat6.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat40;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat40;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat5.y;
        u_xlat7.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat9.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat9.y;
        u_xlat6.y = x_1096;
        let x_1099 : f32 = u_xlat7.z;
        u_xlat9.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1104 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat9.y;
        u_xlat6.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat7.w;
        u_xlat9.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat4;
        let x_1141 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat4;
        let x_1177 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat6.x;
        u_xlat7.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_325.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1237.xy, x_1237.z);
        u_xlat56 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat57 = x_1253;
        let x_1254 : f32 = u_xlat57;
        let x_1256 : f32 = u_xlat15.y;
        u_xlat57 = (x_1254 * x_1256);
        let x_1259 : f32 = u_xlat15.x;
        let x_1260 : f32 = u_xlat56;
        let x_1262 : f32 = u_xlat57;
        u_xlat56 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec2<f32> = u_xlat40;
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec15;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat57 = x_1276;
        let x_1278 : f32 = u_xlat15.z;
        let x_1279 : f32 = u_xlat57;
        let x_1281 : f32 = u_xlat56;
        u_xlat56 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat13;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec16;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat57 = x_1296;
        let x_1298 : f32 = u_xlat15.w;
        let x_1299 : f32 = u_xlat57;
        let x_1301 : f32 = u_xlat56;
        u_xlat56 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec17;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1314.xy, x_1314.z);
        u_xlat57 = x_1316;
        let x_1318 : f32 = u_xlat16.x;
        let x_1319 : f32 = u_xlat57;
        let x_1321 : f32 = u_xlat56;
        u_xlat56 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec18;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat57 = x_1336;
        let x_1338 : f32 = u_xlat16.y;
        let x_1339 : f32 = u_xlat57;
        let x_1341 : f32 = u_xlat56;
        u_xlat56 = ((x_1338 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec19;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1354.xy, x_1354.z);
        u_xlat57 = x_1356;
        let x_1358 : f32 = u_xlat16.z;
        let x_1359 : f32 = u_xlat57;
        let x_1361 : f32 = u_xlat56;
        u_xlat56 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat13;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec20;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1374.xy, x_1374.z);
        u_xlat57 = x_1376;
        let x_1378 : f32 = u_xlat16.w;
        let x_1379 : f32 = u_xlat57;
        let x_1381 : f32 = u_xlat56;
        u_xlat56 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat14;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec21;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat57 = x_1396;
        let x_1398 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat57;
        let x_1401 : f32 = u_xlat56;
        u_xlat56 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat14;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec22;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1414.xy, x_1414.z);
        u_xlat57 = x_1416;
        let x_1418 : f32 = u_xlat17.y;
        let x_1419 : f32 = u_xlat57;
        let x_1421 : f32 = u_xlat56;
        u_xlat56 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat24;
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec23;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat57 = x_1435;
        let x_1437 : f32 = u_xlat17.z;
        let x_1438 : f32 = u_xlat57;
        let x_1440 : f32 = u_xlat56;
        u_xlat56 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec2<f32> = u_xlat48;
        let x_1445 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec24;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat57 = x_1454;
        let x_1456 : f32 = u_xlat17.w;
        let x_1457 : f32 = u_xlat57;
        let x_1459 : f32 = u_xlat56;
        u_xlat56 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec25;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat57 = x_1474;
        let x_1476 : f32 = u_xlat5.x;
        let x_1477 : f32 = u_xlat57;
        let x_1479 : f32 = u_xlat56;
        u_xlat56 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec26;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat57 = x_1494;
        let x_1496 : f32 = u_xlat5.y;
        let x_1497 : f32 = u_xlat57;
        let x_1499 : f32 = u_xlat56;
        u_xlat56 = ((x_1496 * x_1497) + x_1499);
        let x_1502 : vec2<f32> = u_xlat43;
        let x_1504 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec27;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
        u_xlat57 = x_1513;
        let x_1515 : f32 = u_xlat5.z;
        let x_1516 : f32 = u_xlat57;
        let x_1518 : f32 = u_xlat56;
        u_xlat56 = ((x_1515 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat4;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec28;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat57 = x_1533;
        let x_1535 : f32 = u_xlat5.w;
        let x_1536 : f32 = u_xlat57;
        let x_1538 : f32 = u_xlat56;
        u_xlat1.x = ((x_1535 * x_1536) + x_1538);
      }
    }
  } else {
    let x_1543 : vec4<f32> = vs_TEXCOORD6;
    let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
    let x_1546 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
    let x_1553 : vec3<f32> = txVec29;
    let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
    u_xlat1.x = x_1555;
  }
  let x_1558 : f32 = x_325.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1558) + 1.0f);
  let x_1562 : f32 = u_xlat1.x;
  let x_1564 : f32 = x_325.x_MainLightShadowParams.x;
  let x_1566 : f32 = u_xlat56;
  u_xlat1.x = ((x_1562 * x_1564) + x_1566);
  let x_1570 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1570);
  let x_1574 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1574 >= 1.0f);
  let x_1576 : bool = u_xlatb56;
  let x_1577 : bool = u_xlatb57;
  u_xlatb56 = (x_1576 | x_1577);
  let x_1579 : bool = u_xlatb56;
  if (x_1579) {
    x_1580 = 1.0f;
  } else {
    let x_1585 : f32 = u_xlat1.x;
    x_1580 = x_1585;
  }
  let x_1586 : f32 = x_1580;
  u_xlat1.x = x_1586;
  let x_1589 : vec3<f32> = vs_TEXCOORD1;
  let x_1592 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1594 : vec3<f32> = (x_1589 + -(x_1592));
  let x_1595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1597 : vec4<f32> = u_xlat4;
  let x_1599 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1597.x, x_1597.y, x_1597.z), vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1602 : f32 = u_xlat56;
  let x_1604 : f32 = x_325.x_MainLightShadowParams.z;
  let x_1607 : f32 = x_325.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1602 * x_1604) + x_1607);
  let x_1609 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1609, 0.0f, 1.0f);
  let x_1612 : f32 = u_xlat1.x;
  u_xlat57 = (-(x_1612) + 1.0f);
  let x_1615 : f32 = u_xlat56;
  let x_1616 : f32 = u_xlat57;
  let x_1619 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1615 * x_1616) + x_1619);
  let x_1622 : f32 = u_xlat54;
  let x_1625 : vec4<f32> = x_43.x_MainLightColor;
  let x_1627 : vec3<f32> = (vec3<f32>(x_1622, x_1622, x_1622) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1630 : vec3<f32> = u_xlat18;
  let x_1632 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1630.x, x_1630.x, x_1630.x) * x_1632);
  let x_1635 : f32 = u_xlat1.x;
  let x_1637 : f32 = x_182.unity_LightData.z;
  u_xlat18.x = (x_1635 * x_1637);
  let x_1640 : vec3<f32> = u_xlat18;
  let x_1642 : vec4<f32> = u_xlat4;
  let x_1644 : vec3<f32> = (vec3<f32>(x_1640.x, x_1640.x, x_1640.x) * vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1645 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
  let x_1647 : vec4<f32> = u_xlat2;
  let x_1651 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(vec3<f32>(x_1647.x, x_1647.y, x_1647.z), vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
  let x_1656 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1656, 0.0f, 1.0f);
  let x_1659 : vec3<f32> = u_xlat18;
  let x_1661 : vec4<f32> = u_xlat4;
  let x_1663 : vec3<f32> = (vec3<f32>(x_1659.x, x_1659.x, x_1659.x) * vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
  let x_1664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
  let x_1666 : vec4<f32> = u_xlat1;
  let x_1668 : vec4<f32> = u_xlat4;
  let x_1670 : vec3<f32> = (vec3<f32>(x_1666.y, x_1666.z, x_1666.w) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
  let x_1671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  let x_1674 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1676 : f32 = x_182.unity_LightData.y;
  u_xlat18.x = min(x_1674, x_1676);
  let x_1682 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1682));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1694 : u32 = u_xlatu_loop_1;
    let x_1695 : u32 = u_xlatu18;
    if ((x_1694 < x_1695)) {
    } else {
      break;
    }
    let x_1698 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1698 >> 2u);
    let x_1702 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1702 & 3u));
    let x_1705 : u32 = u_xlatu56;
    let x_1708 : vec4<f32> = x_182.unity_LightIndices[bitcast<i32>(x_1705)];
    let x_1718 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1723 : vec4<u32> = indexable[x_1718];
    u_xlat56 = dot(x_1708, bitcast<vec4<f32>>(x_1723));
    let x_1727 : f32 = u_xlat56;
    u_xlati56 = i32(x_1727);
    let x_1729 : vec3<f32> = vs_TEXCOORD1;
    let x_1741 : i32 = u_xlati56;
    let x_1743 : vec4<f32> = x_1740.x_AdditionalLightsPosition[x_1741];
    let x_1746 : i32 = u_xlati56;
    let x_1748 : vec4<f32> = x_1740.x_AdditionalLightsPosition[x_1746];
    let x_1750 : vec3<f32> = ((-(x_1729) * vec3<f32>(x_1743.w, x_1743.w, x_1743.w)) + vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
    let x_1751 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
    let x_1753 : vec4<f32> = u_xlat6;
    let x_1755 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1753.x, x_1753.y, x_1753.z), vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
    let x_1758 : f32 = u_xlat57;
    u_xlat57 = max(x_1758, 6.10351562e-05f);
    let x_1762 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1762);
    let x_1764 : f32 = u_xlat58;
    let x_1766 : vec4<f32> = u_xlat6;
    let x_1768 : vec3<f32> = (vec3<f32>(x_1764, x_1764, x_1764) * vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
    let x_1769 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
    let x_1771 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1771);
    let x_1773 : f32 = u_xlat57;
    let x_1774 : i32 = u_xlati56;
    let x_1776 : f32 = x_1740.x_AdditionalLightsAttenuation[x_1774].x;
    u_xlat57 = (x_1773 * x_1776);
    let x_1778 : f32 = u_xlat57;
    let x_1780 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1778) * x_1780) + 1.0f);
    let x_1783 : f32 = u_xlat57;
    u_xlat57 = max(x_1783, 0.0f);
    let x_1785 : f32 = u_xlat57;
    let x_1786 : f32 = u_xlat57;
    u_xlat57 = (x_1785 * x_1786);
    let x_1788 : f32 = u_xlat57;
    let x_1789 : f32 = u_xlat58;
    u_xlat57 = (x_1788 * x_1789);
    let x_1791 : i32 = u_xlati56;
    let x_1793 : vec4<f32> = x_1740.x_AdditionalLightsSpotDir[x_1791];
    let x_1795 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : f32 = u_xlat58;
    let x_1799 : i32 = u_xlati56;
    let x_1801 : f32 = x_1740.x_AdditionalLightsAttenuation[x_1799].z;
    let x_1803 : i32 = u_xlati56;
    let x_1805 : f32 = x_1740.x_AdditionalLightsAttenuation[x_1803].w;
    u_xlat58 = ((x_1798 * x_1801) + x_1805);
    let x_1807 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1807, 0.0f, 1.0f);
    let x_1809 : f32 = u_xlat58;
    let x_1810 : f32 = u_xlat58;
    u_xlat58 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat57;
    let x_1813 : f32 = u_xlat58;
    u_xlat57 = (x_1812 * x_1813);
    let x_1815 : f32 = u_xlat54;
    let x_1817 : i32 = u_xlati56;
    let x_1819 : vec4<f32> = x_1740.x_AdditionalLightsColor[x_1817];
    let x_1821 : vec3<f32> = (vec3<f32>(x_1815, x_1815, x_1815) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    let x_1824 : f32 = u_xlat57;
    let x_1826 : vec4<f32> = u_xlat7;
    let x_1828 : vec3<f32> = (vec3<f32>(x_1824, x_1824, x_1824) * vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
    let x_1831 : vec4<f32> = u_xlat2;
    let x_1833 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(vec3<f32>(x_1831.x, x_1831.y, x_1831.z), vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
    let x_1836 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1836, 0.0f, 1.0f);
    let x_1838 : f32 = u_xlat56;
    let x_1840 : vec4<f32> = u_xlat7;
    let x_1842 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    let x_1845 : vec4<f32> = u_xlat6;
    let x_1847 : vec4<f32> = u_xlat1;
    let x_1850 : vec4<f32> = u_xlat5;
    let x_1852 : vec3<f32> = ((vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * vec3<f32>(x_1847.y, x_1847.z, x_1847.w)) + vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
    let x_1853 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);

    continuing {
      let x_1855 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1855 + bitcast<u32>(1i));
    }
  }
  let x_1857 : vec3<f32> = u_xlat3;
  let x_1858 : vec4<f32> = u_xlat1;
  let x_1861 : vec4<f32> = u_xlat4;
  let x_1863 : vec3<f32> = ((x_1857 * vec3<f32>(x_1858.y, x_1858.z, x_1858.w)) + vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1868 : vec4<f32> = u_xlat5;
  let x_1870 : vec4<f32> = u_xlat1;
  let x_1872 : vec3<f32> = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1876 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1876 == 1.0f);
  let x_1878 : bool = u_xlatb18;
  let x_1879 : bool = u_xlatb36;
  u_xlatb18 = (x_1878 | x_1879);
  let x_1881 : bool = u_xlatb18;
  if (x_1881) {
    let x_1886 : f32 = u_xlat0.x;
    x_1882 = x_1886;
  } else {
    x_1882 = 1.0f;
  }
  let x_1888 : f32 = x_1882;
  SV_Target0.w = x_1888;
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

