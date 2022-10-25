struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_296 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1741 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat56 : f32;
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
  var u_xlatb1 : bool;
  var x_1581 : f32;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati56 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat57 : f32;
  var x_1886 : f32;
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
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat18.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat54;
  let x_105 : f32 = u_xlat36;
  u_xlat36 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat36;
  u_xlat36 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat18.x;
  let x_113 : f32 = u_xlat36;
  u_xlat18.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat18.x;
  u_xlat18.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_122, 0.0f, 1.0f);
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
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat18;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat18.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb54 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb54;
  if (x_189) {
    let x_194 : f32 = u_xlat18.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat18.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat18.x = x_201;
  let x_204 : f32 = u_xlat18.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat18.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat18.x;
  u_xlatb18 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb18;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat18;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = x_245;
  let x_251 : vec2<f32> = vs_TEXCOORD7;
  let x_253 : f32 = x_43.x_GlobalMipBias.x;
  let x_254 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_251, x_253);
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec3<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(x_265, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_271 : f32 = u_xlat18.x;
  u_xlat18.x = (x_271 + 0.5f);
  let x_274 : vec3<f32> = u_xlat18;
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.x, x_274.x) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = u_xlat3.w;
  u_xlat18.x = max(x_282, 0.0001f);
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = u_xlat18;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) / vec3<f32>(x_287.x, x_287.x, x_287.x));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_300 : f32 = x_296.x_MainLightShadowParams.y;
  u_xlatb18 = (0.0f < x_300);
  let x_302 : bool = u_xlatb18;
  if (x_302) {
    let x_306 : f32 = x_296.x_MainLightShadowParams.y;
    u_xlatb18 = (x_306 == 1.0f);
    let x_308 : bool = u_xlatb18;
    if (x_308) {
      let x_312 : vec4<f32> = vs_TEXCOORD6;
      let x_315 : vec4<f32> = x_296.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_312.x, x_312.y, x_312.x, x_312.y) + x_315);
      let x_318 : vec4<f32> = u_xlat4;
      let x_319 : vec2<f32> = vec2<f32>(x_318.x, x_318.y);
      let x_321 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_319.x, x_319.y, x_321);
      let x_334 : vec3<f32> = txVec0;
      let x_336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_334.xy, x_334.z);
      u_xlat5.x = x_336;
      let x_339 : vec4<f32> = u_xlat4;
      let x_340 : vec2<f32> = vec2<f32>(x_339.z, x_339.w);
      let x_342 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_340.x, x_340.y, x_342);
      let x_349 : vec3<f32> = txVec1;
      let x_351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_349.xy, x_349.z);
      u_xlat5.y = x_351;
      let x_353 : vec4<f32> = vs_TEXCOORD6;
      let x_357 : vec4<f32> = x_296.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_353.x, x_353.y, x_353.x, x_353.y) + x_357);
      let x_360 : vec4<f32> = u_xlat4;
      let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
      let x_363 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_361.x, x_361.y, x_363);
      let x_370 : vec3<f32> = txVec2;
      let x_372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_370.xy, x_370.z);
      u_xlat5.z = x_372;
      let x_375 : vec4<f32> = u_xlat4;
      let x_376 : vec2<f32> = vec2<f32>(x_375.z, x_375.w);
      let x_378 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_376.x, x_376.y, x_378);
      let x_385 : vec3<f32> = txVec3;
      let x_387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_385.xy, x_385.z);
      u_xlat5.w = x_387;
      let x_389 : vec4<f32> = u_xlat5;
      u_xlat18.x = dot(x_389, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_396 : f32 = x_296.x_MainLightShadowParams.y;
      u_xlatb54 = (x_396 == 2.0f);
      let x_399 : bool = u_xlatb54;
      if (x_399) {
        let x_402 : vec4<f32> = vs_TEXCOORD6;
        let x_406 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_410 : vec2<f32> = ((vec2<f32>(x_402.x, x_402.y) * vec2<f32>(x_406.z, x_406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_411 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
        let x_413 : vec4<f32> = u_xlat4;
        let x_415 : vec2<f32> = floor(vec2<f32>(x_413.x, x_413.y));
        let x_416 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_420 : vec4<f32> = vs_TEXCOORD6;
        let x_423 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_423.z, x_423.w)) + -(vec2<f32>(x_426.x, x_426.y)));
        let x_430 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_430.x, x_430.x, x_430.y, x_430.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_435 : vec4<f32> = u_xlat5;
        let x_437 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_435.x, x_435.x, x_435.z, x_435.z) * vec4<f32>(x_437.x, x_437.x, x_437.z, x_437.z));
        let x_440 : vec4<f32> = u_xlat6;
        let x_444 : vec2<f32> = (vec2<f32>(x_440.y, x_440.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_445.y, x_444.y, x_445.w);
        let x_447 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = u_xlat40;
        let x_452 : vec2<f32> = ((vec2<f32>(x_447.x, x_447.z) * vec2<f32>(0.5f, 0.5f)) + -(x_450));
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_456 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_456) + vec2<f32>(1.0f, 1.0f));
        let x_461 : vec2<f32> = u_xlat40;
        let x_463 : vec2<f32> = min(x_461, vec2<f32>(0.0f, 0.0f));
        let x_464 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec4<f32> = u_xlat7;
        let x_469 : vec4<f32> = u_xlat7;
        let x_472 : vec2<f32> = u_xlat42;
        let x_473 : vec2<f32> = ((-(vec2<f32>(x_466.x, x_466.y)) * vec2<f32>(x_469.x, x_469.y)) + x_472);
        let x_474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_476 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_476, vec2<f32>(0.0f, 0.0f));
        let x_478 : vec2<f32> = u_xlat40;
        let x_480 : vec2<f32> = u_xlat40;
        let x_482 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_478) * x_480) + vec2<f32>(x_482.y, x_482.w));
        let x_485 : vec4<f32> = u_xlat7;
        let x_487 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) + vec2<f32>(1.0f, 1.0f));
        let x_488 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_490 + vec2<f32>(1.0f, 1.0f));
        let x_493 : vec4<f32> = u_xlat6;
        let x_497 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat42;
        let x_501 : vec2<f32> = (x_500 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat7;
        let x_506 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_507 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_510 : vec2<f32> = u_xlat40;
        let x_511 : vec2<f32> = (x_510 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_512 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_514.y, x_514.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_518 : f32 = u_xlat7.x;
        u_xlat8.z = x_518;
        let x_521 : f32 = u_xlat40.x;
        u_xlat8.w = x_521;
        let x_524 : f32 = u_xlat9.x;
        u_xlat6.z = x_524;
        let x_527 : f32 = u_xlat5.x;
        u_xlat6.w = x_527;
        let x_530 : vec4<f32> = u_xlat6;
        let x_532 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_530.z, x_530.w, x_530.x, x_530.z) + vec4<f32>(x_532.z, x_532.w, x_532.x, x_532.z));
        let x_536 : f32 = u_xlat8.y;
        u_xlat7.z = x_536;
        let x_539 : f32 = u_xlat40.y;
        u_xlat7.w = x_539;
        let x_542 : f32 = u_xlat6.y;
        u_xlat9.z = x_542;
        let x_545 : f32 = u_xlat5.z;
        u_xlat9.w = x_545;
        let x_547 : vec4<f32> = u_xlat7;
        let x_549 : vec4<f32> = u_xlat9;
        let x_551 : vec3<f32> = (vec3<f32>(x_547.z, x_547.y, x_547.w) + vec3<f32>(x_549.z, x_549.y, x_549.w));
        let x_552 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec4<f32> = u_xlat10;
        let x_558 : vec3<f32> = (vec3<f32>(x_554.x, x_554.z, x_554.w) / vec3<f32>(x_556.z, x_556.w, x_556.y));
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat6;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat9;
        let x_571 : vec4<f32> = u_xlat5;
        let x_573 : vec3<f32> = (vec3<f32>(x_569.z, x_569.y, x_569.w) / vec3<f32>(x_571.x, x_571.y, x_571.z));
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat7;
        let x_578 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat6;
        let x_584 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_586 : vec3<f32> = (vec3<f32>(x_581.y, x_581.x, x_581.z) * vec3<f32>(x_584.x, x_584.x, x_584.x));
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat7;
        let x_592 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_594 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * vec3<f32>(x_592.y, x_592.y, x_592.y));
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_598 : f32 = u_xlat7.x;
        u_xlat6.w = x_598;
        let x_600 : vec4<f32> = u_xlat4;
        let x_603 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_606 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y) * vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y)) + vec4<f32>(x_606.y, x_606.w, x_606.x, x_606.w));
        let x_609 : vec4<f32> = u_xlat4;
        let x_612 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_615 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.x, x_612.y)) + vec2<f32>(x_615.z, x_615.w));
        let x_619 : f32 = u_xlat6.y;
        u_xlat7.w = x_619;
        let x_621 : vec4<f32> = u_xlat7;
        let x_622 : vec2<f32> = vec2<f32>(x_621.y, x_621.z);
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_623.x, x_622.x, x_623.z, x_622.y);
        let x_625 : vec4<f32> = u_xlat4;
        let x_628 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.y));
        let x_634 : vec4<f32> = u_xlat4;
        let x_637 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.w, x_640.y, x_640.w, x_640.z));
        let x_643 : vec4<f32> = u_xlat4;
        let x_646 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.w, x_649.z, x_649.w));
        let x_653 : vec4<f32> = u_xlat5;
        let x_655 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_653.x, x_653.x, x_653.x, x_653.y) * vec4<f32>(x_655.z, x_655.w, x_655.y, x_655.z));
        let x_659 : vec4<f32> = u_xlat5;
        let x_661 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_659.y, x_659.y, x_659.z, x_659.z) * x_661);
        let x_664 : f32 = u_xlat5.z;
        let x_666 : f32 = u_xlat10.y;
        u_xlat54 = (x_664 * x_666);
        let x_669 : vec4<f32> = u_xlat8;
        let x_670 : vec2<f32> = vec2<f32>(x_669.x, x_669.y);
        let x_672 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_670.x, x_670.y, x_672);
        let x_679 : vec3<f32> = txVec4;
        let x_681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_679.xy, x_679.z);
        u_xlat1.x = x_681;
        let x_684 : vec4<f32> = u_xlat8;
        let x_685 : vec2<f32> = vec2<f32>(x_684.z, x_684.w);
        let x_687 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_685.x, x_685.y, x_687);
        let x_695 : vec3<f32> = txVec5;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_695.xy, x_695.z);
        u_xlat56 = x_697;
        let x_698 : f32 = u_xlat56;
        let x_700 : f32 = u_xlat11.y;
        u_xlat56 = (x_698 * x_700);
        let x_703 : f32 = u_xlat11.x;
        let x_705 : f32 = u_xlat1.x;
        let x_707 : f32 = u_xlat56;
        u_xlat1.x = ((x_703 * x_705) + x_707);
        let x_711 : vec2<f32> = u_xlat40;
        let x_713 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_711.x, x_711.y, x_713);
        let x_720 : vec3<f32> = txVec6;
        let x_722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_720.xy, x_720.z);
        u_xlat56 = x_722;
        let x_724 : f32 = u_xlat11.z;
        let x_725 : f32 = u_xlat56;
        let x_728 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_724 * x_725) + x_728);
        let x_732 : vec4<f32> = u_xlat7;
        let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
        let x_735 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_733.x, x_733.y, x_735);
        let x_742 : vec3<f32> = txVec7;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_742.xy, x_742.z);
        u_xlat56 = x_744;
        let x_746 : f32 = u_xlat11.w;
        let x_747 : f32 = u_xlat56;
        let x_750 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_746 * x_747) + x_750);
        let x_754 : vec4<f32> = u_xlat9;
        let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
        let x_757 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec8;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
        u_xlat56 = x_766;
        let x_768 : f32 = u_xlat12.x;
        let x_769 : f32 = u_xlat56;
        let x_772 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_768 * x_769) + x_772);
        let x_776 : vec4<f32> = u_xlat9;
        let x_777 : vec2<f32> = vec2<f32>(x_776.z, x_776.w);
        let x_779 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec9;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_786.xy, x_786.z);
        u_xlat56 = x_788;
        let x_790 : f32 = u_xlat12.y;
        let x_791 : f32 = u_xlat56;
        let x_794 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_790 * x_791) + x_794);
        let x_798 : vec4<f32> = u_xlat7;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec10;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat56 = x_810;
        let x_812 : f32 = u_xlat12.z;
        let x_813 : f32 = u_xlat56;
        let x_816 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_812 * x_813) + x_816);
        let x_820 : vec4<f32> = u_xlat6;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec11;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_830.xy, x_830.z);
        u_xlat56 = x_832;
        let x_834 : f32 = u_xlat12.w;
        let x_835 : f32 = u_xlat56;
        let x_838 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_834 * x_835) + x_838);
        let x_842 : vec4<f32> = u_xlat6;
        let x_843 : vec2<f32> = vec2<f32>(x_842.z, x_842.w);
        let x_845 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec12;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_852.xy, x_852.z);
        u_xlat56 = x_854;
        let x_855 : f32 = u_xlat54;
        let x_856 : f32 = u_xlat56;
        let x_859 : f32 = u_xlat1.x;
        u_xlat18.x = ((x_855 * x_856) + x_859);
      } else {
        let x_863 : vec4<f32> = vs_TEXCOORD6;
        let x_866 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_869 : vec2<f32> = ((vec2<f32>(x_863.x, x_863.y) * vec2<f32>(x_866.z, x_866.w)) + vec2<f32>(0.5f, 0.5f));
        let x_870 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat4;
        let x_874 : vec2<f32> = floor(vec2<f32>(x_872.x, x_872.y));
        let x_875 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
        let x_877 : vec4<f32> = vs_TEXCOORD6;
        let x_880 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_883 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_880.z, x_880.w)) + -(vec2<f32>(x_883.x, x_883.y)));
        let x_887 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_887.x, x_887.x, x_887.y, x_887.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_890 : vec4<f32> = u_xlat5;
        let x_892 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_890.x, x_890.x, x_890.z, x_890.z) * vec4<f32>(x_892.x, x_892.x, x_892.z, x_892.z));
        let x_895 : vec4<f32> = u_xlat6;
        let x_899 : vec2<f32> = (vec2<f32>(x_895.y, x_895.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_900 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_900.x, x_899.x, x_900.z, x_899.y);
        let x_902 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = u_xlat40;
        let x_907 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.z) * vec2<f32>(0.5f, 0.5f)) + -(x_905));
        let x_908 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_907.x, x_908.y, x_907.y, x_908.w);
        let x_910 : vec2<f32> = u_xlat40;
        let x_912 : vec2<f32> = (-(x_910) + vec2<f32>(1.0f, 1.0f));
        let x_913 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_915, vec2<f32>(0.0f, 0.0f));
        let x_917 : vec2<f32> = u_xlat42;
        let x_919 : vec2<f32> = u_xlat42;
        let x_921 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = ((-(x_917) * x_919) + vec2<f32>(x_921.x, x_921.y));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_926, vec2<f32>(0.0f, 0.0f));
        let x_929 : vec2<f32> = u_xlat42;
        let x_931 : vec2<f32> = u_xlat42;
        let x_933 : vec4<f32> = u_xlat5;
        let x_935 : vec2<f32> = ((-(x_929) * x_931) + vec2<f32>(x_933.y, x_933.w));
        let x_936 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_935.x, x_936.y, x_935.y);
        let x_938 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) + vec2<f32>(2.0f, 2.0f));
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec3<f32> = u_xlat23;
        let x_946 : vec2<f32> = (vec2<f32>(x_944.x, x_944.z) + vec2<f32>(2.0f, 2.0f));
        let x_947 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_950 : f32 = u_xlat5.y;
        u_xlat8.z = (x_950 * 0.081632003f);
        let x_954 : vec4<f32> = u_xlat5;
        let x_957 : vec3<f32> = (vec3<f32>(x_954.z, x_954.x, x_954.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_958 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = (vec2<f32>(x_960.x, x_960.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_964 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_967 : f32 = u_xlat9.y;
        u_xlat8.x = x_967;
        let x_969 : vec2<f32> = u_xlat40;
        let x_976 : vec2<f32> = ((vec2<f32>(x_969.x, x_969.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec2<f32> = u_xlat40;
        let x_983 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_984 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_983.x, x_984.y, x_983.y, x_984.w);
        let x_987 : f32 = u_xlat5.x;
        u_xlat6.y = x_987;
        let x_990 : f32 = u_xlat7.y;
        u_xlat6.w = x_990;
        let x_992 : vec4<f32> = u_xlat6;
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_992 + x_993);
        let x_995 : vec2<f32> = u_xlat40;
        let x_998 : vec2<f32> = ((vec2<f32>(x_995.y, x_995.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec2<f32> = u_xlat40;
        let x_1004 : vec2<f32> = ((vec2<f32>(x_1001.y, x_1001.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1005 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1004.x, x_1005.y, x_1004.y, x_1005.w);
        let x_1008 : f32 = u_xlat5.y;
        u_xlat7.y = x_1008;
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1010 + x_1011);
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1013 / x_1014);
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1016 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1023 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1022 / x_1023);
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1025 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1030 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1027.w, x_1027.x, x_1027.y, x_1027.z) * vec4<f32>(x_1030.x, x_1030.x, x_1030.x, x_1030.x));
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1036 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1033.x, x_1033.w, x_1033.y, x_1033.z) * vec4<f32>(x_1036.y, x_1036.y, x_1036.y, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1040 : vec3<f32> = vec3<f32>(x_1039.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1040.x, x_1041.y, x_1040.y, x_1040.z);
        let x_1044 : f32 = u_xlat7.x;
        u_xlat9.y = x_1044;
        let x_1046 : vec4<f32> = u_xlat4;
        let x_1049 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.y) * vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y)) + vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat4;
        let x_1058 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1061.w, x_1061.y));
        let x_1065 : f32 = u_xlat9.y;
        u_xlat6.y = x_1065;
        let x_1068 : f32 = u_xlat7.z;
        u_xlat9.y = x_1068;
        let x_1070 : vec4<f32> = u_xlat4;
        let x_1073 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1076.y));
        let x_1079 : vec4<f32> = u_xlat4;
        let x_1082 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1082.x, x_1082.y)) + vec2<f32>(x_1085.w, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1091 : f32 = u_xlat9.y;
        u_xlat6.z = x_1091;
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.z));
        let x_1104 : f32 = u_xlat7.w;
        u_xlat9.y = x_1104;
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.y));
        let x_1117 : vec4<f32> = u_xlat4;
        let x_1120 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.w, x_1123.y));
        let x_1127 : f32 = u_xlat9.y;
        u_xlat6.w = x_1127;
        let x_1130 : vec4<f32> = u_xlat4;
        let x_1133 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.x, x_1136.w));
        let x_1139 : vec4<f32> = u_xlat9;
        let x_1140 : vec3<f32> = vec3<f32>(x_1139.x, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1140.z);
        let x_1143 : vec4<f32> = u_xlat4;
        let x_1146 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y) * vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y)) + vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1149.y));
        let x_1153 : vec4<f32> = u_xlat4;
        let x_1156 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.w, x_1159.y));
        let x_1163 : f32 = u_xlat6.x;
        u_xlat7.x = x_1163;
        let x_1165 : vec4<f32> = u_xlat4;
        let x_1168 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat7;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.x, x_1168.y)) + vec2<f32>(x_1171.x, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1177.x, x_1177.x, x_1177.x, x_1177.x) * x_1179);
        let x_1182 : vec4<f32> = u_xlat5;
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1182.y, x_1182.y, x_1182.y, x_1182.y) * x_1184);
        let x_1187 : vec4<f32> = u_xlat5;
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1187.z, x_1187.z, x_1187.z, x_1187.z) * x_1189);
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1191.w, x_1191.w, x_1191.w, x_1191.w) * x_1193);
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
        let x_1199 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec13;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1206.xy, x_1206.z);
        u_xlat54 = x_1208;
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.z, x_1210.w);
        let x_1213 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec14;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1220.xy, x_1220.z);
        u_xlat1.x = x_1222;
        let x_1225 : f32 = u_xlat1.x;
        let x_1227 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1225 * x_1227);
        let x_1231 : f32 = u_xlat15.x;
        let x_1232 : f32 = u_xlat54;
        let x_1235 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1231 * x_1232) + x_1235);
        let x_1238 : vec2<f32> = u_xlat40;
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec15;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat1.x = x_1249;
        let x_1252 : f32 = u_xlat15.z;
        let x_1254 : f32 = u_xlat1.x;
        let x_1256 : f32 = u_xlat54;
        u_xlat54 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat13;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec16;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat1.x = x_1271;
        let x_1274 : f32 = u_xlat15.w;
        let x_1276 : f32 = u_xlat1.x;
        let x_1278 : f32 = u_xlat54;
        u_xlat54 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec17;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat1.x = x_1293;
        let x_1296 : f32 = u_xlat16.x;
        let x_1298 : f32 = u_xlat1.x;
        let x_1300 : f32 = u_xlat54;
        u_xlat54 = ((x_1296 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec18;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat1.x = x_1315;
        let x_1318 : f32 = u_xlat16.y;
        let x_1320 : f32 = u_xlat1.x;
        let x_1322 : f32 = u_xlat54;
        u_xlat54 = ((x_1318 * x_1320) + x_1322);
        let x_1325 : vec4<f32> = u_xlat12;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec19;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1335.xy, x_1335.z);
        u_xlat1.x = x_1337;
        let x_1340 : f32 = u_xlat16.z;
        let x_1342 : f32 = u_xlat1.x;
        let x_1344 : f32 = u_xlat54;
        u_xlat54 = ((x_1340 * x_1342) + x_1344);
        let x_1347 : vec4<f32> = u_xlat13;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec20;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1357.xy, x_1357.z);
        u_xlat1.x = x_1359;
        let x_1362 : f32 = u_xlat16.w;
        let x_1364 : f32 = u_xlat1.x;
        let x_1366 : f32 = u_xlat54;
        u_xlat54 = ((x_1362 * x_1364) + x_1366);
        let x_1369 : vec4<f32> = u_xlat14;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec21;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1379.xy, x_1379.z);
        u_xlat1.x = x_1381;
        let x_1384 : f32 = u_xlat17.x;
        let x_1386 : f32 = u_xlat1.x;
        let x_1388 : f32 = u_xlat54;
        u_xlat54 = ((x_1384 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat14;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec22;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat1.x = x_1403;
        let x_1406 : f32 = u_xlat17.y;
        let x_1408 : f32 = u_xlat1.x;
        let x_1410 : f32 = u_xlat54;
        u_xlat54 = ((x_1406 * x_1408) + x_1410);
        let x_1413 : vec2<f32> = u_xlat24;
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec23;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat1.x = x_1424;
        let x_1427 : f32 = u_xlat17.z;
        let x_1429 : f32 = u_xlat1.x;
        let x_1431 : f32 = u_xlat54;
        u_xlat54 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec2<f32> = u_xlat48;
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec24;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat1.x = x_1445;
        let x_1448 : f32 = u_xlat17.w;
        let x_1450 : f32 = u_xlat1.x;
        let x_1452 : f32 = u_xlat54;
        u_xlat54 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec25;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat1.x = x_1467;
        let x_1470 : f32 = u_xlat5.x;
        let x_1472 : f32 = u_xlat1.x;
        let x_1474 : f32 = u_xlat54;
        u_xlat54 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec26;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat1.x = x_1489;
        let x_1492 : f32 = u_xlat5.y;
        let x_1494 : f32 = u_xlat1.x;
        let x_1496 : f32 = u_xlat54;
        u_xlat54 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec2<f32> = u_xlat43;
        let x_1501 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec27;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat1.x = x_1510;
        let x_1513 : f32 = u_xlat5.z;
        let x_1515 : f32 = u_xlat1.x;
        let x_1517 : f32 = u_xlat54;
        u_xlat54 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat4;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec28;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat1.x = x_1532;
        let x_1535 : f32 = u_xlat5.w;
        let x_1537 : f32 = u_xlat1.x;
        let x_1539 : f32 = u_xlat54;
        u_xlat18.x = ((x_1535 * x_1537) + x_1539);
      }
    }
  } else {
    let x_1544 : vec4<f32> = vs_TEXCOORD6;
    let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
    let x_1547 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
    let x_1554 : vec3<f32> = txVec29;
    let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
    u_xlat18.x = x_1556;
  }
  let x_1559 : f32 = x_296.x_MainLightShadowParams.x;
  u_xlat54 = (-(x_1559) + 1.0f);
  let x_1563 : f32 = u_xlat18.x;
  let x_1565 : f32 = x_296.x_MainLightShadowParams.x;
  let x_1567 : f32 = u_xlat54;
  u_xlat18.x = ((x_1563 * x_1565) + x_1567);
  let x_1571 : f32 = vs_TEXCOORD6.z;
  u_xlatb54 = (0.0f >= x_1571);
  let x_1575 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1575 >= 1.0f);
  let x_1577 : bool = u_xlatb54;
  let x_1578 : bool = u_xlatb1;
  u_xlatb54 = (x_1577 | x_1578);
  let x_1580 : bool = u_xlatb54;
  if (x_1580) {
    x_1581 = 1.0f;
  } else {
    let x_1586 : f32 = u_xlat18.x;
    x_1581 = x_1586;
  }
  let x_1587 : f32 = x_1581;
  u_xlat18.x = x_1587;
  let x_1590 : vec3<f32> = vs_TEXCOORD1;
  let x_1594 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1596 : vec3<f32> = (x_1590 + -(x_1594));
  let x_1597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
  let x_1599 : vec4<f32> = u_xlat4;
  let x_1601 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_1599.x, x_1599.y, x_1599.z), vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1604 : f32 = u_xlat54;
  let x_1606 : f32 = x_296.x_MainLightShadowParams.z;
  let x_1609 : f32 = x_296.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1604 * x_1606) + x_1609);
  let x_1611 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1611, 0.0f, 1.0f);
  let x_1614 : f32 = u_xlat18.x;
  u_xlat1.x = (-(x_1614) + 1.0f);
  let x_1618 : f32 = u_xlat54;
  let x_1620 : f32 = u_xlat1.x;
  let x_1623 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_1618 * x_1620) + x_1623);
  let x_1627 : f32 = u_xlat18.x;
  let x_1629 : f32 = x_184.unity_LightData.z;
  u_xlat18.x = (x_1627 * x_1629);
  let x_1632 : vec3<f32> = u_xlat18;
  let x_1636 : vec4<f32> = x_43.x_MainLightColor;
  let x_1638 : vec3<f32> = (vec3<f32>(x_1632.x, x_1632.x, x_1632.x) * vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1641 : vec3<f32> = u_xlat2;
  let x_1643 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(x_1641, vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
  let x_1648 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1648, 0.0f, 1.0f);
  let x_1651 : vec3<f32> = u_xlat18;
  let x_1653 : vec4<f32> = u_xlat4;
  let x_1655 : vec3<f32> = (vec3<f32>(x_1651.x, x_1651.x, x_1651.x) * vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : vec4<f32> = u_xlat1;
  let x_1660 : vec4<f32> = u_xlat4;
  let x_1662 : vec3<f32> = (vec3<f32>(x_1658.y, x_1658.z, x_1658.w) * vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
  let x_1663 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
  let x_1665 : vec4<f32> = u_xlat0;
  let x_1667 : vec4<f32> = u_xlat4;
  let x_1669 : vec3<f32> = (vec3<f32>(x_1665.x, x_1665.x, x_1665.x) * vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1673 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1675 : f32 = x_184.unity_LightData.y;
  u_xlat18.x = min(x_1673, x_1675);
  let x_1681 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1681));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1693 : u32 = u_xlatu_loop_1;
    let x_1694 : u32 = u_xlatu18;
    if ((x_1693 < x_1694)) {
    } else {
      break;
    }
    let x_1697 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_1697 >> 2u);
    let x_1701 : u32 = u_xlatu_loop_1;
    u_xlati56 = bitcast<i32>((x_1701 & 3u));
    let x_1704 : u32 = u_xlatu1;
    let x_1707 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1704)];
    let x_1717 : i32 = u_xlati56;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1722 : vec4<u32> = indexable[x_1717];
    u_xlat1.x = dot(x_1707, bitcast<vec4<f32>>(x_1722));
    let x_1728 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_1728);
    let x_1730 : vec3<f32> = vs_TEXCOORD1;
    let x_1742 : i32 = u_xlati1;
    let x_1744 : vec4<f32> = x_1741.x_AdditionalLightsPosition[x_1742];
    let x_1747 : i32 = u_xlati1;
    let x_1749 : vec4<f32> = x_1741.x_AdditionalLightsPosition[x_1747];
    let x_1751 : vec3<f32> = ((-(x_1730) * vec3<f32>(x_1744.w, x_1744.w, x_1744.w)) + vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
    let x_1752 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    let x_1754 : vec4<f32> = u_xlat6;
    let x_1756 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(vec3<f32>(x_1754.x, x_1754.y, x_1754.z), vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
    let x_1759 : f32 = u_xlat56;
    u_xlat56 = max(x_1759, 6.10351562e-05f);
    let x_1763 : f32 = u_xlat56;
    u_xlat57 = inverseSqrt(x_1763);
    let x_1765 : f32 = u_xlat57;
    let x_1767 : vec4<f32> = u_xlat6;
    let x_1769 : vec3<f32> = (vec3<f32>(x_1765, x_1765, x_1765) * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
    let x_1770 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
    let x_1772 : f32 = u_xlat56;
    u_xlat57 = (1.0f / x_1772);
    let x_1774 : f32 = u_xlat56;
    let x_1775 : i32 = u_xlati1;
    let x_1777 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1775].x;
    u_xlat56 = (x_1774 * x_1777);
    let x_1779 : f32 = u_xlat56;
    let x_1781 : f32 = u_xlat56;
    u_xlat56 = ((-(x_1779) * x_1781) + 1.0f);
    let x_1784 : f32 = u_xlat56;
    u_xlat56 = max(x_1784, 0.0f);
    let x_1786 : f32 = u_xlat56;
    let x_1787 : f32 = u_xlat56;
    u_xlat56 = (x_1786 * x_1787);
    let x_1789 : f32 = u_xlat56;
    let x_1790 : f32 = u_xlat57;
    u_xlat56 = (x_1789 * x_1790);
    let x_1792 : i32 = u_xlati1;
    let x_1794 : vec4<f32> = x_1741.x_AdditionalLightsSpotDir[x_1792];
    let x_1796 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1794.x, x_1794.y, x_1794.z), vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
    let x_1799 : f32 = u_xlat57;
    let x_1800 : i32 = u_xlati1;
    let x_1802 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1800].z;
    let x_1804 : i32 = u_xlati1;
    let x_1806 : f32 = x_1741.x_AdditionalLightsAttenuation[x_1804].w;
    u_xlat57 = ((x_1799 * x_1802) + x_1806);
    let x_1808 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1808, 0.0f, 1.0f);
    let x_1810 : f32 = u_xlat57;
    let x_1811 : f32 = u_xlat57;
    u_xlat57 = (x_1810 * x_1811);
    let x_1813 : f32 = u_xlat56;
    let x_1814 : f32 = u_xlat57;
    u_xlat56 = (x_1813 * x_1814);
    let x_1816 : f32 = u_xlat56;
    let x_1818 : i32 = u_xlati1;
    let x_1820 : vec4<f32> = x_1741.x_AdditionalLightsColor[x_1818];
    let x_1822 : vec3<f32> = (vec3<f32>(x_1816, x_1816, x_1816) * vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
    let x_1823 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    let x_1825 : vec3<f32> = u_xlat2;
    let x_1826 : vec4<f32> = u_xlat6;
    u_xlat1.x = dot(x_1825, vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1831 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1831, 0.0f, 1.0f);
    let x_1834 : vec4<f32> = u_xlat1;
    let x_1836 : vec4<f32> = u_xlat7;
    let x_1838 : vec3<f32> = (vec3<f32>(x_1834.x, x_1834.x, x_1834.x) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
    let x_1839 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
    let x_1841 : vec4<f32> = u_xlat1;
    let x_1843 : vec4<f32> = u_xlat6;
    let x_1845 : vec3<f32> = (vec3<f32>(x_1841.y, x_1841.z, x_1841.w) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
    let x_1846 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
    let x_1848 : vec4<f32> = u_xlat6;
    let x_1850 : vec4<f32> = u_xlat0;
    let x_1853 : vec4<f32> = u_xlat5;
    let x_1855 : vec3<f32> = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(x_1850.x, x_1850.x, x_1850.x)) + vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);

    continuing {
      let x_1858 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1858 + bitcast<u32>(1i));
    }
  }
  let x_1860 : vec4<f32> = u_xlat3;
  let x_1862 : vec4<f32> = u_xlat1;
  let x_1865 : vec4<f32> = u_xlat4;
  let x_1867 : vec3<f32> = ((vec3<f32>(x_1860.x, x_1860.y, x_1860.z) * vec3<f32>(x_1862.y, x_1862.z, x_1862.w)) + vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
  let x_1872 : vec4<f32> = u_xlat5;
  let x_1874 : vec4<f32> = u_xlat1;
  let x_1876 : vec3<f32> = (vec3<f32>(x_1872.x, x_1872.y, x_1872.z) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
  let x_1880 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1880 == 1.0f);
  let x_1882 : bool = u_xlatb18;
  let x_1883 : bool = u_xlatb36;
  u_xlatb18 = (x_1882 | x_1883);
  let x_1885 : bool = u_xlatb18;
  if (x_1885) {
    let x_1890 : f32 = u_xlat0.x;
    x_1886 = x_1890;
  } else {
    x_1886 = 1.0f;
  }
  let x_1892 : f32 = x_1886;
  SV_Target0.w = x_1892;
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

