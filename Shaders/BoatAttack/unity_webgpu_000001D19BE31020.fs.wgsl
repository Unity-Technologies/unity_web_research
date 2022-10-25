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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_312 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1726 : AdditionalLights;

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
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
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
  var x_1567 : f32;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
  var x_1867 : f32;
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
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat18;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat18.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
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
  let x_207 : f32 = x_185.unity_LODFade.x;
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
  let x_245 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  let x_249 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
  let x_254 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_250.x, x_250.y));
  let x_255 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_254.x, x_255.y, x_254.y);
  let x_258 : vec3<f32> = u_xlat18;
  let x_260 : vec4<f32> = hlslcc_FragCoord;
  let x_262 : vec2<f32> = (vec2<f32>(x_258.x, x_258.z) * vec2<f32>(x_260.x, x_260.y));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_267 : f32 = u_xlat4.y;
  let x_270 : f32 = x_43.x_ScaleBiasRt.x;
  let x_273 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_267 * x_270) + x_273);
  let x_277 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_277) + 1.0f);
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : f32 = x_43.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_286.x, x_286.z), x_289);
  u_xlat18.x = x_290.x;
  let x_294 : f32 = u_xlat18.x;
  u_xlat54 = (x_294 + -1.0f);
  let x_299 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_300 : f32 = u_xlat54;
  u_xlat54 = ((x_299 * x_300) + 1.0f);
  let x_304 : f32 = u_xlat18.x;
  u_xlat18.x = min(x_304, 1.0f);
  let x_314 : f32 = x_312.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_314);
  let x_316 : bool = u_xlatb1;
  if (x_316) {
    let x_320 : f32 = x_312.x_MainLightShadowParams.y;
    u_xlatb1 = (x_320 == 1.0f);
    let x_322 : bool = u_xlatb1;
    if (x_322) {
      let x_326 : vec4<f32> = vs_TEXCOORD6;
      let x_330 : vec4<f32> = x_312.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_326.x, x_326.y, x_326.x, x_326.y) + x_330);
      let x_333 : vec4<f32> = u_xlat4;
      let x_334 : vec2<f32> = vec2<f32>(x_333.x, x_333.y);
      let x_336 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_334.x, x_334.y, x_336);
      let x_349 : vec3<f32> = txVec0;
      let x_351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_349.xy, x_349.z);
      u_xlat5.x = x_351;
      let x_354 : vec4<f32> = u_xlat4;
      let x_355 : vec2<f32> = vec2<f32>(x_354.z, x_354.w);
      let x_357 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_355.x, x_355.y, x_357);
      let x_364 : vec3<f32> = txVec1;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_364.xy, x_364.z);
      u_xlat5.y = x_366;
      let x_368 : vec4<f32> = vs_TEXCOORD6;
      let x_372 : vec4<f32> = x_312.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_368.x, x_368.y, x_368.x, x_368.y) + x_372);
      let x_375 : vec4<f32> = u_xlat4;
      let x_376 : vec2<f32> = vec2<f32>(x_375.x, x_375.y);
      let x_378 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_376.x, x_376.y, x_378);
      let x_385 : vec3<f32> = txVec2;
      let x_387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_385.xy, x_385.z);
      u_xlat5.z = x_387;
      let x_390 : vec4<f32> = u_xlat4;
      let x_391 : vec2<f32> = vec2<f32>(x_390.z, x_390.w);
      let x_393 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec3;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_400.xy, x_400.z);
      u_xlat5.w = x_402;
      let x_404 : vec4<f32> = u_xlat5;
      u_xlat1.x = dot(x_404, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_412 : f32 = x_312.x_MainLightShadowParams.y;
      u_xlatb56 = (x_412 == 2.0f);
      let x_415 : bool = u_xlatb56;
      if (x_415) {
        let x_418 : vec4<f32> = vs_TEXCOORD6;
        let x_421 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_425 : vec2<f32> = ((vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_421.z, x_421.w)) + vec2<f32>(0.5f, 0.5f));
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
        let x_428 : vec4<f32> = u_xlat4;
        let x_430 : vec2<f32> = floor(vec2<f32>(x_428.x, x_428.y));
        let x_431 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
        let x_435 : vec4<f32> = vs_TEXCOORD6;
        let x_438 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_441 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(x_438.z, x_438.w)) + -(vec2<f32>(x_441.x, x_441.y)));
        let x_445 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_445.x, x_445.x, x_445.y, x_445.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_450 : vec4<f32> = u_xlat5;
        let x_452 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_450.x, x_450.x, x_450.z, x_450.z) * vec4<f32>(x_452.x, x_452.x, x_452.z, x_452.z));
        let x_455 : vec4<f32> = u_xlat6;
        let x_459 : vec2<f32> = (vec2<f32>(x_455.y, x_455.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_459.x, x_460.y, x_459.y, x_460.w);
        let x_462 : vec4<f32> = u_xlat6;
        let x_465 : vec2<f32> = u_xlat40;
        let x_467 : vec2<f32> = ((vec2<f32>(x_462.x, x_462.z) * vec2<f32>(0.5f, 0.5f)) + -(x_465));
        let x_468 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_471 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_471) + vec2<f32>(1.0f, 1.0f));
        let x_475 : vec2<f32> = u_xlat40;
        let x_477 : vec2<f32> = min(x_475, vec2<f32>(0.0f, 0.0f));
        let x_478 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec4<f32> = u_xlat7;
        let x_483 : vec4<f32> = u_xlat7;
        let x_486 : vec2<f32> = u_xlat42;
        let x_487 : vec2<f32> = ((-(vec2<f32>(x_480.x, x_480.y)) * vec2<f32>(x_483.x, x_483.y)) + x_486);
        let x_488 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_490, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec2<f32> = u_xlat40;
        let x_494 : vec2<f32> = u_xlat40;
        let x_496 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_492) * x_494) + vec2<f32>(x_496.y, x_496.w));
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) + vec2<f32>(1.0f, 1.0f));
        let x_502 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_504 + vec2<f32>(1.0f, 1.0f));
        let x_507 : vec4<f32> = u_xlat6;
        let x_511 : vec2<f32> = (vec2<f32>(x_507.x, x_507.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec2<f32> = u_xlat42;
        let x_515 : vec2<f32> = (x_514 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_516 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec4<f32> = u_xlat7;
        let x_520 : vec2<f32> = (vec2<f32>(x_518.x, x_518.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
        let x_524 : vec2<f32> = u_xlat40;
        let x_525 : vec2<f32> = (x_524 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_528.y, x_528.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_532 : f32 = u_xlat7.x;
        u_xlat8.z = x_532;
        let x_535 : f32 = u_xlat40.x;
        u_xlat8.w = x_535;
        let x_538 : f32 = u_xlat9.x;
        u_xlat6.z = x_538;
        let x_541 : f32 = u_xlat5.x;
        u_xlat6.w = x_541;
        let x_544 : vec4<f32> = u_xlat6;
        let x_546 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_544.z, x_544.w, x_544.x, x_544.z) + vec4<f32>(x_546.z, x_546.w, x_546.x, x_546.z));
        let x_550 : f32 = u_xlat8.y;
        u_xlat7.z = x_550;
        let x_553 : f32 = u_xlat40.y;
        u_xlat7.w = x_553;
        let x_556 : f32 = u_xlat6.y;
        u_xlat9.z = x_556;
        let x_559 : f32 = u_xlat5.z;
        u_xlat9.w = x_559;
        let x_561 : vec4<f32> = u_xlat7;
        let x_563 : vec4<f32> = u_xlat9;
        let x_565 : vec3<f32> = (vec3<f32>(x_561.z, x_561.y, x_561.w) + vec3<f32>(x_563.z, x_563.y, x_563.w));
        let x_566 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat6;
        let x_570 : vec4<f32> = u_xlat10;
        let x_572 : vec3<f32> = (vec3<f32>(x_568.x, x_568.z, x_568.w) / vec3<f32>(x_570.z, x_570.w, x_570.y));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat6;
        let x_581 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat9;
        let x_586 : vec4<f32> = u_xlat5;
        let x_588 : vec3<f32> = (vec3<f32>(x_584.z, x_584.y, x_584.w) / vec3<f32>(x_586.x, x_586.y, x_586.z));
        let x_589 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat7;
        let x_593 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat6;
        let x_599 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_601 : vec3<f32> = (vec3<f32>(x_596.y, x_596.x, x_596.z) * vec3<f32>(x_599.x, x_599.x, x_599.x));
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_609 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_607.y, x_607.y, x_607.y));
        let x_610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_613 : f32 = u_xlat7.x;
        u_xlat6.w = x_613;
        let x_615 : vec4<f32> = u_xlat4;
        let x_618 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y) * vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y)) + vec4<f32>(x_621.y, x_621.w, x_621.x, x_621.w));
        let x_624 : vec4<f32> = u_xlat4;
        let x_627 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.x, x_627.y)) + vec2<f32>(x_630.z, x_630.w));
        let x_634 : f32 = u_xlat6.y;
        u_xlat7.w = x_634;
        let x_636 : vec4<f32> = u_xlat7;
        let x_637 : vec2<f32> = vec2<f32>(x_636.y, x_636.z);
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_638.x, x_637.x, x_638.z, x_637.y);
        let x_640 : vec4<f32> = u_xlat4;
        let x_643 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.y) * vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y)) + vec4<f32>(x_646.x, x_646.y, x_646.z, x_646.y));
        let x_649 : vec4<f32> = u_xlat4;
        let x_652 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y) * vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y)) + vec4<f32>(x_655.w, x_655.y, x_655.w, x_655.z));
        let x_658 : vec4<f32> = u_xlat4;
        let x_661 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y) * vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y)) + vec4<f32>(x_664.x, x_664.w, x_664.z, x_664.w));
        let x_668 : vec4<f32> = u_xlat5;
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_668.x, x_668.x, x_668.x, x_668.y) * vec4<f32>(x_670.z, x_670.w, x_670.y, x_670.z));
        let x_674 : vec4<f32> = u_xlat5;
        let x_676 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_674.y, x_674.y, x_674.z, x_674.z) * x_676);
        let x_680 : f32 = u_xlat5.z;
        let x_682 : f32 = u_xlat10.y;
        u_xlat56 = (x_680 * x_682);
        let x_685 : vec4<f32> = u_xlat8;
        let x_686 : vec2<f32> = vec2<f32>(x_685.x, x_685.y);
        let x_688 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_696 : vec3<f32> = txVec4;
        let x_698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_696.xy, x_696.z);
        u_xlat57 = x_698;
        let x_700 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = vec2<f32>(x_700.z, x_700.w);
        let x_703 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec5;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_710.xy, x_710.z);
        u_xlat4.x = x_712;
        let x_715 : f32 = u_xlat4.x;
        let x_717 : f32 = u_xlat11.y;
        u_xlat4.x = (x_715 * x_717);
        let x_721 : f32 = u_xlat11.x;
        let x_722 : f32 = u_xlat57;
        let x_725 : f32 = u_xlat4.x;
        u_xlat57 = ((x_721 * x_722) + x_725);
        let x_728 : vec2<f32> = u_xlat40;
        let x_730 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_728.x, x_728.y, x_730);
        let x_737 : vec3<f32> = txVec6;
        let x_739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_737.xy, x_737.z);
        u_xlat4.x = x_739;
        let x_742 : f32 = u_xlat11.z;
        let x_744 : f32 = u_xlat4.x;
        let x_746 : f32 = u_xlat57;
        u_xlat57 = ((x_742 * x_744) + x_746);
        let x_749 : vec4<f32> = u_xlat7;
        let x_750 : vec2<f32> = vec2<f32>(x_749.x, x_749.y);
        let x_752 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_759 : vec3<f32> = txVec7;
        let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_759.xy, x_759.z);
        u_xlat4.x = x_761;
        let x_764 : f32 = u_xlat11.w;
        let x_766 : f32 = u_xlat4.x;
        let x_768 : f32 = u_xlat57;
        u_xlat57 = ((x_764 * x_766) + x_768);
        let x_771 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec8;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
        u_xlat4.x = x_783;
        let x_786 : f32 = u_xlat12.x;
        let x_788 : f32 = u_xlat4.x;
        let x_790 : f32 = u_xlat57;
        u_xlat57 = ((x_786 * x_788) + x_790);
        let x_793 : vec4<f32> = u_xlat9;
        let x_794 : vec2<f32> = vec2<f32>(x_793.z, x_793.w);
        let x_796 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec9;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_803.xy, x_803.z);
        u_xlat4.x = x_805;
        let x_808 : f32 = u_xlat12.y;
        let x_810 : f32 = u_xlat4.x;
        let x_812 : f32 = u_xlat57;
        u_xlat57 = ((x_808 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat7;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec10;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
        u_xlat4.x = x_827;
        let x_830 : f32 = u_xlat12.z;
        let x_832 : f32 = u_xlat4.x;
        let x_834 : f32 = u_xlat57;
        u_xlat57 = ((x_830 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat6;
        let x_838 : vec2<f32> = vec2<f32>(x_837.x, x_837.y);
        let x_840 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec11;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_847.xy, x_847.z);
        u_xlat4.x = x_849;
        let x_852 : f32 = u_xlat12.w;
        let x_854 : f32 = u_xlat4.x;
        let x_856 : f32 = u_xlat57;
        u_xlat57 = ((x_852 * x_854) + x_856);
        let x_859 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec12;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_869.xy, x_869.z);
        u_xlat4.x = x_871;
        let x_873 : f32 = u_xlat56;
        let x_875 : f32 = u_xlat4.x;
        let x_877 : f32 = u_xlat57;
        u_xlat1.x = ((x_873 * x_875) + x_877);
      } else {
        let x_881 : vec4<f32> = vs_TEXCOORD6;
        let x_884 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_887 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.z, x_884.w)) + vec2<f32>(0.5f, 0.5f));
        let x_888 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat4;
        let x_892 : vec2<f32> = floor(vec2<f32>(x_890.x, x_890.y));
        let x_893 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = vs_TEXCOORD6;
        let x_898 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_895.x, x_895.y) * vec2<f32>(x_898.z, x_898.w)) + -(vec2<f32>(x_901.x, x_901.y)));
        let x_905 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_905.x, x_905.x, x_905.y, x_905.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_908 : vec4<f32> = u_xlat5;
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_908.x, x_908.x, x_908.z, x_908.z) * vec4<f32>(x_910.x, x_910.x, x_910.z, x_910.z));
        let x_913 : vec4<f32> = u_xlat6;
        let x_917 : vec2<f32> = (vec2<f32>(x_913.y, x_913.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_918 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = u_xlat40;
        let x_925 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.z) * vec2<f32>(0.5f, 0.5f)) + -(x_923));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_926.y, x_925.y, x_926.w);
        let x_928 : vec2<f32> = u_xlat40;
        let x_930 : vec2<f32> = (-(x_928) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_933, vec2<f32>(0.0f, 0.0f));
        let x_935 : vec2<f32> = u_xlat42;
        let x_937 : vec2<f32> = u_xlat42;
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = ((-(x_935) * x_937) + vec2<f32>(x_939.x, x_939.y));
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_944, vec2<f32>(0.0f, 0.0f));
        let x_947 : vec2<f32> = u_xlat42;
        let x_949 : vec2<f32> = u_xlat42;
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec2<f32> = ((-(x_947) * x_949) + vec2<f32>(x_951.y, x_951.w));
        let x_954 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_953.x, x_954.y, x_953.y);
        let x_956 : vec4<f32> = u_xlat6;
        let x_959 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) + vec2<f32>(2.0f, 2.0f));
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec3<f32> = u_xlat23;
        let x_964 : vec2<f32> = (vec2<f32>(x_962.x, x_962.z) + vec2<f32>(2.0f, 2.0f));
        let x_965 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_968 : f32 = u_xlat5.y;
        u_xlat8.z = (x_968 * 0.081632003f);
        let x_972 : vec4<f32> = u_xlat5;
        let x_975 : vec3<f32> = (vec3<f32>(x_972.z, x_972.x, x_972.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_985 : f32 = u_xlat9.y;
        u_xlat8.x = x_985;
        let x_987 : vec2<f32> = u_xlat40;
        let x_994 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_997 : vec2<f32> = u_xlat40;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1002 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1001.x, x_1002.y, x_1001.y, x_1002.w);
        let x_1005 : f32 = u_xlat5.x;
        u_xlat6.y = x_1005;
        let x_1008 : f32 = u_xlat7.y;
        u_xlat6.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1010 + x_1011);
        let x_1013 : vec2<f32> = u_xlat40;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1013.y, x_1013.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1016.x, x_1017.z, x_1016.y);
        let x_1019 : vec2<f32> = u_xlat40;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1019.y, x_1019.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1026 : f32 = u_xlat5.y;
        u_xlat7.y = x_1026;
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1028 + x_1029);
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1031 / x_1032);
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1040 / x_1041);
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1043 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1045.w, x_1045.x, x_1045.y, x_1045.z) * vec4<f32>(x_1048.x, x_1048.x, x_1048.x, x_1048.x));
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1051.x, x_1051.w, x_1051.y, x_1051.z) * vec4<f32>(x_1054.y, x_1054.y, x_1054.y, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = vec3<f32>(x_1057.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1058.z);
        let x_1062 : f32 = u_xlat7.x;
        u_xlat9.y = x_1062;
        let x_1064 : vec4<f32> = u_xlat4;
        let x_1067 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.w, x_1079.y));
        let x_1083 : f32 = u_xlat9.y;
        u_xlat6.y = x_1083;
        let x_1086 : f32 = u_xlat7.z;
        u_xlat9.y = x_1086;
        let x_1088 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y) * vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y)) + vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1109 : f32 = u_xlat9.y;
        u_xlat6.z = x_1109;
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.z));
        let x_1122 : f32 = u_xlat7.w;
        u_xlat9.y = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1131.y));
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.w, x_1141.y));
        let x_1145 : f32 = u_xlat9.y;
        u_xlat6.w = x_1145;
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.x, x_1154.w));
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1158 : vec3<f32> = vec3<f32>(x_1157.x, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1158.z);
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y) * vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y)) + vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.y));
        let x_1171 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.w, x_1177.y));
        let x_1181 : f32 = u_xlat6.x;
        u_xlat7.x = x_1181;
        let x_1183 : vec4<f32> = u_xlat4;
        let x_1186 : vec4<f32> = x_312.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.x, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x) * x_1197);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1202);
        let x_1205 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1205.z, x_1205.z, x_1205.z, x_1205.z) * x_1207);
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1209.w, x_1209.w, x_1209.w, x_1209.w) * x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec13;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat56 = x_1226;
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.z, x_1228.w);
        let x_1231 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1229.x, x_1229.y, x_1231);
        let x_1238 : vec3<f32> = txVec14;
        let x_1240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1238.xy, x_1238.z);
        u_xlat57 = x_1240;
        let x_1241 : f32 = u_xlat57;
        let x_1243 : f32 = u_xlat15.y;
        u_xlat57 = (x_1241 * x_1243);
        let x_1246 : f32 = u_xlat15.x;
        let x_1247 : f32 = u_xlat56;
        let x_1249 : f32 = u_xlat57;
        u_xlat56 = ((x_1246 * x_1247) + x_1249);
        let x_1252 : vec2<f32> = u_xlat40;
        let x_1254 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec15;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1261.xy, x_1261.z);
        u_xlat57 = x_1263;
        let x_1265 : f32 = u_xlat15.z;
        let x_1266 : f32 = u_xlat57;
        let x_1268 : f32 = u_xlat56;
        u_xlat56 = ((x_1265 * x_1266) + x_1268);
        let x_1271 : vec4<f32> = u_xlat13;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.x, x_1271.y);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec16;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1281.xy, x_1281.z);
        u_xlat57 = x_1283;
        let x_1285 : f32 = u_xlat15.w;
        let x_1286 : f32 = u_xlat57;
        let x_1288 : f32 = u_xlat56;
        u_xlat56 = ((x_1285 * x_1286) + x_1288);
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1292 : vec2<f32> = vec2<f32>(x_1291.x, x_1291.y);
        let x_1294 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec17;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1301.xy, x_1301.z);
        u_xlat57 = x_1303;
        let x_1305 : f32 = u_xlat16.x;
        let x_1306 : f32 = u_xlat57;
        let x_1308 : f32 = u_xlat56;
        u_xlat56 = ((x_1305 * x_1306) + x_1308);
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec18;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1321.xy, x_1321.z);
        u_xlat57 = x_1323;
        let x_1325 : f32 = u_xlat16.y;
        let x_1326 : f32 = u_xlat57;
        let x_1328 : f32 = u_xlat56;
        u_xlat56 = ((x_1325 * x_1326) + x_1328);
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.x, x_1331.y);
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec19;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1341.xy, x_1341.z);
        u_xlat57 = x_1343;
        let x_1345 : f32 = u_xlat16.z;
        let x_1346 : f32 = u_xlat57;
        let x_1348 : f32 = u_xlat56;
        u_xlat56 = ((x_1345 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat13;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec20;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat57 = x_1363;
        let x_1365 : f32 = u_xlat16.w;
        let x_1366 : f32 = u_xlat57;
        let x_1368 : f32 = u_xlat56;
        u_xlat56 = ((x_1365 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat14;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec21;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat57 = x_1383;
        let x_1385 : f32 = u_xlat17.x;
        let x_1386 : f32 = u_xlat57;
        let x_1388 : f32 = u_xlat56;
        u_xlat56 = ((x_1385 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat14;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec22;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat57 = x_1403;
        let x_1405 : f32 = u_xlat17.y;
        let x_1406 : f32 = u_xlat57;
        let x_1408 : f32 = u_xlat56;
        u_xlat56 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec2<f32> = u_xlat24;
        let x_1413 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec23;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat57 = x_1422;
        let x_1424 : f32 = u_xlat17.z;
        let x_1425 : f32 = u_xlat57;
        let x_1427 : f32 = u_xlat56;
        u_xlat56 = ((x_1424 * x_1425) + x_1427);
        let x_1430 : vec2<f32> = u_xlat48;
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec24;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat57 = x_1441;
        let x_1443 : f32 = u_xlat17.w;
        let x_1444 : f32 = u_xlat57;
        let x_1446 : f32 = u_xlat56;
        u_xlat56 = ((x_1443 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat9;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec25;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1459.xy, x_1459.z);
        u_xlat57 = x_1461;
        let x_1463 : f32 = u_xlat5.x;
        let x_1464 : f32 = u_xlat57;
        let x_1466 : f32 = u_xlat56;
        u_xlat56 = ((x_1463 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat9;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec26;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat57 = x_1481;
        let x_1483 : f32 = u_xlat5.y;
        let x_1484 : f32 = u_xlat57;
        let x_1486 : f32 = u_xlat56;
        u_xlat56 = ((x_1483 * x_1484) + x_1486);
        let x_1489 : vec2<f32> = u_xlat43;
        let x_1491 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec27;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat57 = x_1500;
        let x_1502 : f32 = u_xlat5.z;
        let x_1503 : f32 = u_xlat57;
        let x_1505 : f32 = u_xlat56;
        u_xlat56 = ((x_1502 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat4;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec28;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat57 = x_1520;
        let x_1522 : f32 = u_xlat5.w;
        let x_1523 : f32 = u_xlat57;
        let x_1525 : f32 = u_xlat56;
        u_xlat1.x = ((x_1522 * x_1523) + x_1525);
      }
    }
  } else {
    let x_1530 : vec4<f32> = vs_TEXCOORD6;
    let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
    let x_1533 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
    let x_1540 : vec3<f32> = txVec29;
    let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
    u_xlat1.x = x_1542;
  }
  let x_1545 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1545) + 1.0f);
  let x_1549 : f32 = u_xlat1.x;
  let x_1551 : f32 = x_312.x_MainLightShadowParams.x;
  let x_1553 : f32 = u_xlat56;
  u_xlat1.x = ((x_1549 * x_1551) + x_1553);
  let x_1557 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1557);
  let x_1561 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1561 >= 1.0f);
  let x_1563 : bool = u_xlatb56;
  let x_1564 : bool = u_xlatb57;
  u_xlatb56 = (x_1563 | x_1564);
  let x_1566 : bool = u_xlatb56;
  if (x_1566) {
    x_1567 = 1.0f;
  } else {
    let x_1572 : f32 = u_xlat1.x;
    x_1567 = x_1572;
  }
  let x_1573 : f32 = x_1567;
  u_xlat1.x = x_1573;
  let x_1576 : vec3<f32> = vs_TEXCOORD1;
  let x_1579 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1581 : vec3<f32> = (x_1576 + -(x_1579));
  let x_1582 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
  let x_1584 : vec4<f32> = u_xlat4;
  let x_1586 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1584.x, x_1584.y, x_1584.z), vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
  let x_1589 : f32 = u_xlat56;
  let x_1591 : f32 = x_312.x_MainLightShadowParams.z;
  let x_1594 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1589 * x_1591) + x_1594);
  let x_1596 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1596, 0.0f, 1.0f);
  let x_1599 : f32 = u_xlat1.x;
  u_xlat57 = (-(x_1599) + 1.0f);
  let x_1602 : f32 = u_xlat56;
  let x_1603 : f32 = u_xlat57;
  let x_1606 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1602 * x_1603) + x_1606);
  let x_1609 : f32 = u_xlat54;
  let x_1612 : vec4<f32> = x_43.x_MainLightColor;
  let x_1614 : vec3<f32> = (vec3<f32>(x_1609, x_1609, x_1609) * vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  let x_1617 : vec3<f32> = u_xlat18;
  let x_1619 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1617.x, x_1617.x, x_1617.x) * x_1619);
  let x_1622 : f32 = u_xlat1.x;
  let x_1624 : f32 = x_185.unity_LightData.z;
  u_xlat18.x = (x_1622 * x_1624);
  let x_1627 : vec3<f32> = u_xlat18;
  let x_1629 : vec4<f32> = u_xlat4;
  let x_1631 : vec3<f32> = (vec3<f32>(x_1627.x, x_1627.x, x_1627.x) * vec3<f32>(x_1629.x, x_1629.y, x_1629.z));
  let x_1632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1632.w);
  let x_1634 : vec3<f32> = u_xlat2;
  let x_1637 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(x_1634, vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1642 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1642, 0.0f, 1.0f);
  let x_1645 : vec3<f32> = u_xlat18;
  let x_1647 : vec4<f32> = u_xlat4;
  let x_1649 : vec3<f32> = (vec3<f32>(x_1645.x, x_1645.x, x_1645.x) * vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
  let x_1650 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
  let x_1652 : vec4<f32> = u_xlat1;
  let x_1654 : vec4<f32> = u_xlat4;
  let x_1656 : vec3<f32> = (vec3<f32>(x_1652.y, x_1652.z, x_1652.w) * vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1660 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1662 : f32 = x_185.unity_LightData.y;
  u_xlat18.x = min(x_1660, x_1662);
  let x_1668 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1668));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1680 : u32 = u_xlatu_loop_1;
    let x_1681 : u32 = u_xlatu18;
    if ((x_1680 < x_1681)) {
    } else {
      break;
    }
    let x_1684 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1684 >> 2u);
    let x_1688 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1688 & 3u));
    let x_1691 : u32 = u_xlatu56;
    let x_1694 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_1691)];
    let x_1704 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1709 : vec4<u32> = indexable[x_1704];
    u_xlat56 = dot(x_1694, bitcast<vec4<f32>>(x_1709));
    let x_1713 : f32 = u_xlat56;
    u_xlati56 = i32(x_1713);
    let x_1715 : vec3<f32> = vs_TEXCOORD1;
    let x_1727 : i32 = u_xlati56;
    let x_1729 : vec4<f32> = x_1726.x_AdditionalLightsPosition[x_1727];
    let x_1732 : i32 = u_xlati56;
    let x_1734 : vec4<f32> = x_1726.x_AdditionalLightsPosition[x_1732];
    let x_1736 : vec3<f32> = ((-(x_1715) * vec3<f32>(x_1729.w, x_1729.w, x_1729.w)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
    let x_1737 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
    let x_1739 : vec4<f32> = u_xlat6;
    let x_1741 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1739.x, x_1739.y, x_1739.z), vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
    let x_1744 : f32 = u_xlat57;
    u_xlat57 = max(x_1744, 6.10351562e-05f);
    let x_1748 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1748);
    let x_1750 : f32 = u_xlat58;
    let x_1752 : vec4<f32> = u_xlat6;
    let x_1754 : vec3<f32> = (vec3<f32>(x_1750, x_1750, x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
    let x_1755 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
    let x_1757 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1757);
    let x_1759 : f32 = u_xlat57;
    let x_1760 : i32 = u_xlati56;
    let x_1762 : f32 = x_1726.x_AdditionalLightsAttenuation[x_1760].x;
    u_xlat57 = (x_1759 * x_1762);
    let x_1764 : f32 = u_xlat57;
    let x_1766 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1764) * x_1766) + 1.0f);
    let x_1769 : f32 = u_xlat57;
    u_xlat57 = max(x_1769, 0.0f);
    let x_1771 : f32 = u_xlat57;
    let x_1772 : f32 = u_xlat57;
    u_xlat57 = (x_1771 * x_1772);
    let x_1774 : f32 = u_xlat57;
    let x_1775 : f32 = u_xlat58;
    u_xlat57 = (x_1774 * x_1775);
    let x_1777 : i32 = u_xlati56;
    let x_1779 : vec4<f32> = x_1726.x_AdditionalLightsSpotDir[x_1777];
    let x_1781 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
    let x_1784 : f32 = u_xlat58;
    let x_1785 : i32 = u_xlati56;
    let x_1787 : f32 = x_1726.x_AdditionalLightsAttenuation[x_1785].z;
    let x_1789 : i32 = u_xlati56;
    let x_1791 : f32 = x_1726.x_AdditionalLightsAttenuation[x_1789].w;
    u_xlat58 = ((x_1784 * x_1787) + x_1791);
    let x_1793 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1793, 0.0f, 1.0f);
    let x_1795 : f32 = u_xlat58;
    let x_1796 : f32 = u_xlat58;
    u_xlat58 = (x_1795 * x_1796);
    let x_1798 : f32 = u_xlat57;
    let x_1799 : f32 = u_xlat58;
    u_xlat57 = (x_1798 * x_1799);
    let x_1801 : f32 = u_xlat54;
    let x_1803 : i32 = u_xlati56;
    let x_1805 : vec4<f32> = x_1726.x_AdditionalLightsColor[x_1803];
    let x_1807 : vec3<f32> = (vec3<f32>(x_1801, x_1801, x_1801) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    let x_1810 : f32 = u_xlat57;
    let x_1812 : vec4<f32> = u_xlat7;
    let x_1814 : vec3<f32> = (vec3<f32>(x_1810, x_1810, x_1810) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
    let x_1817 : vec3<f32> = u_xlat2;
    let x_1818 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(x_1817, vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1821, 0.0f, 1.0f);
    let x_1823 : f32 = u_xlat56;
    let x_1825 : vec4<f32> = u_xlat7;
    let x_1827 : vec3<f32> = (vec3<f32>(x_1823, x_1823, x_1823) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
    let x_1828 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
    let x_1830 : vec4<f32> = u_xlat6;
    let x_1832 : vec4<f32> = u_xlat1;
    let x_1835 : vec4<f32> = u_xlat5;
    let x_1837 : vec3<f32> = ((vec3<f32>(x_1830.x, x_1830.y, x_1830.z) * vec3<f32>(x_1832.y, x_1832.z, x_1832.w)) + vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
    let x_1838 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);

    continuing {
      let x_1840 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1840 + bitcast<u32>(1i));
    }
  }
  let x_1842 : vec3<f32> = u_xlat3;
  let x_1843 : vec4<f32> = u_xlat1;
  let x_1846 : vec4<f32> = u_xlat4;
  let x_1848 : vec3<f32> = ((x_1842 * vec3<f32>(x_1843.y, x_1843.z, x_1843.w)) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1853 : vec4<f32> = u_xlat5;
  let x_1855 : vec4<f32> = u_xlat1;
  let x_1857 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.y, x_1853.z) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  let x_1861 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1861 == 1.0f);
  let x_1863 : bool = u_xlatb18;
  let x_1864 : bool = u_xlatb36;
  u_xlatb18 = (x_1863 | x_1864);
  let x_1866 : bool = u_xlatb18;
  if (x_1866) {
    let x_1871 : f32 = u_xlat0.x;
    x_1867 = x_1871;
  } else {
    x_1867 = 1.0f;
  }
  let x_1873 : f32 = x_1867;
  SV_Target0.w = x_1873;
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

