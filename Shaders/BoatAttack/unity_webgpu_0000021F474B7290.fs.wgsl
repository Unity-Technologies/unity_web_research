struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_155 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_236 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1664 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_109 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb54 : bool;
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
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati56 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat57 : f32;
  var x_1809 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat18 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat54;
  let x_89 : f32 = u_xlat36;
  u_xlat36 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat36;
  u_xlat36 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat18;
  let x_96 : f32 = u_xlat36;
  u_xlat18 = (x_95 / x_96);
  let x_98 : f32 = u_xlat18;
  u_xlat18 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat18;
  u_xlat18 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb36;
  if (x_108) {
    let x_112 : f32 = u_xlat18;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat18 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat18;
  u_xlatb18 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb18;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat18;
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  u_xlat2.w = 1.0f;
  let x_158 : vec4<f32> = x_155.unity_SHAr;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_158, x_159);
  let x_164 : vec4<f32> = x_155.unity_SHAg;
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_164, x_165);
  let x_171 : vec4<f32> = x_155.unity_SHAb;
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_171, x_172);
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_176.y, x_176.z, x_176.z, x_176.x) * vec4<f32>(x_178.x, x_178.y, x_178.z, x_178.z));
  let x_184 : vec4<f32> = x_155.unity_SHBr;
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_184, x_185);
  let x_190 : vec4<f32> = x_155.unity_SHBg;
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_190, x_191);
  let x_196 : vec4<f32> = x_155.unity_SHBb;
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_196, x_197);
  let x_201 : f32 = u_xlat2.y;
  let x_203 : f32 = u_xlat2.y;
  u_xlat18 = (x_201 * x_203);
  let x_206 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat2.x;
  let x_210 : f32 = u_xlat18;
  u_xlat18 = ((x_206 * x_208) + -(x_210));
  let x_215 : vec4<f32> = x_155.unity_SHC;
  let x_217 : f32 = u_xlat18;
  let x_220 : vec4<f32> = u_xlat5;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217, x_217, x_217)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_225 + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_229, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_239 : f32 = x_236.x_MainLightShadowParams.y;
  u_xlatb18 = (0.0f < x_239);
  let x_241 : bool = u_xlatb18;
  if (x_241) {
    let x_245 : f32 = x_236.x_MainLightShadowParams.y;
    u_xlatb18 = (x_245 == 1.0f);
    let x_247 : bool = u_xlatb18;
    if (x_247) {
      let x_252 : vec4<f32> = vs_TEXCOORD6;
      let x_256 : vec4<f32> = x_236.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_252.x, x_252.y, x_252.x, x_252.y) + x_256);
      let x_259 : vec4<f32> = u_xlat4;
      let x_260 : vec2<f32> = vec2<f32>(x_259.x, x_259.y);
      let x_263 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_260.x, x_260.y, x_263);
      let x_275 : vec3<f32> = txVec0;
      let x_277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_275.xy, x_275.z);
      u_xlat5.x = x_277;
      let x_280 : vec4<f32> = u_xlat4;
      let x_281 : vec2<f32> = vec2<f32>(x_280.z, x_280.w);
      let x_283 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_281.x, x_281.y, x_283);
      let x_290 : vec3<f32> = txVec1;
      let x_292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_290.xy, x_290.z);
      u_xlat5.y = x_292;
      let x_294 : vec4<f32> = vs_TEXCOORD6;
      let x_298 : vec4<f32> = x_236.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_294.x, x_294.y, x_294.x, x_294.y) + x_298);
      let x_301 : vec4<f32> = u_xlat4;
      let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
      let x_304 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_302.x, x_302.y, x_304);
      let x_311 : vec3<f32> = txVec2;
      let x_313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_311.xy, x_311.z);
      u_xlat5.z = x_313;
      let x_316 : vec4<f32> = u_xlat4;
      let x_317 : vec2<f32> = vec2<f32>(x_316.z, x_316.w);
      let x_319 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_317.x, x_317.y, x_319);
      let x_326 : vec3<f32> = txVec3;
      let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
      u_xlat5.w = x_328;
      let x_330 : vec4<f32> = u_xlat5;
      u_xlat18 = dot(x_330, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_337 : f32 = x_236.x_MainLightShadowParams.y;
      u_xlatb54 = (x_337 == 2.0f);
      let x_340 : bool = u_xlatb54;
      if (x_340) {
        let x_343 : vec4<f32> = vs_TEXCOORD6;
        let x_347 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_351 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_347.z, x_347.w)) + vec2<f32>(0.5f, 0.5f));
        let x_352 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
        let x_354 : vec4<f32> = u_xlat4;
        let x_356 : vec2<f32> = floor(vec2<f32>(x_354.x, x_354.y));
        let x_357 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_357.z, x_357.w);
        let x_361 : vec4<f32> = vs_TEXCOORD6;
        let x_364 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_367 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_364.z, x_364.w)) + -(vec2<f32>(x_367.x, x_367.y)));
        let x_371 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_371.x, x_371.x, x_371.y, x_371.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_376 : vec4<f32> = u_xlat5;
        let x_378 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_376.x, x_376.x, x_376.z, x_376.z) * vec4<f32>(x_378.x, x_378.x, x_378.z, x_378.z));
        let x_381 : vec4<f32> = u_xlat6;
        let x_385 : vec2<f32> = (vec2<f32>(x_381.y, x_381.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_386 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_386.w);
        let x_388 : vec4<f32> = u_xlat6;
        let x_391 : vec2<f32> = u_xlat40;
        let x_393 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.z) * vec2<f32>(0.5f, 0.5f)) + -(x_391));
        let x_394 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_397 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_397) + vec2<f32>(1.0f, 1.0f));
        let x_402 : vec2<f32> = u_xlat40;
        let x_404 : vec2<f32> = min(x_402, vec2<f32>(0.0f, 0.0f));
        let x_405 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_407 : vec4<f32> = u_xlat7;
        let x_410 : vec4<f32> = u_xlat7;
        let x_413 : vec2<f32> = u_xlat42;
        let x_414 : vec2<f32> = ((-(vec2<f32>(x_407.x, x_407.y)) * vec2<f32>(x_410.x, x_410.y)) + x_413);
        let x_415 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
        let x_417 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_417, vec2<f32>(0.0f, 0.0f));
        let x_419 : vec2<f32> = u_xlat40;
        let x_421 : vec2<f32> = u_xlat40;
        let x_423 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_419) * x_421) + vec2<f32>(x_423.y, x_423.w));
        let x_426 : vec4<f32> = u_xlat7;
        let x_428 : vec2<f32> = (vec2<f32>(x_426.x, x_426.y) + vec2<f32>(1.0f, 1.0f));
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_431 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_431 + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec4<f32> = u_xlat6;
        let x_438 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_439 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec2<f32> = u_xlat42;
        let x_442 : vec2<f32> = (x_441 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_443 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_445 : vec4<f32> = u_xlat7;
        let x_447 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_448 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_451 : vec2<f32> = u_xlat40;
        let x_452 : vec2<f32> = (x_451 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_455.y, x_455.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_459 : f32 = u_xlat7.x;
        u_xlat8.z = x_459;
        let x_462 : f32 = u_xlat40.x;
        u_xlat8.w = x_462;
        let x_465 : f32 = u_xlat9.x;
        u_xlat6.z = x_465;
        let x_468 : f32 = u_xlat5.x;
        u_xlat6.w = x_468;
        let x_471 : vec4<f32> = u_xlat6;
        let x_473 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_471.z, x_471.w, x_471.x, x_471.z) + vec4<f32>(x_473.z, x_473.w, x_473.x, x_473.z));
        let x_477 : f32 = u_xlat8.y;
        u_xlat7.z = x_477;
        let x_480 : f32 = u_xlat40.y;
        u_xlat7.w = x_480;
        let x_483 : f32 = u_xlat6.y;
        u_xlat9.z = x_483;
        let x_486 : f32 = u_xlat5.z;
        u_xlat9.w = x_486;
        let x_488 : vec4<f32> = u_xlat7;
        let x_490 : vec4<f32> = u_xlat9;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.z, x_488.y, x_488.w) + vec3<f32>(x_490.z, x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec4<f32> = u_xlat10;
        let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.z, x_495.w) / vec3<f32>(x_497.z, x_497.w, x_497.y));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
        let x_502 : vec4<f32> = u_xlat6;
        let x_508 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat9;
        let x_513 : vec4<f32> = u_xlat5;
        let x_515 : vec3<f32> = (vec3<f32>(x_511.z, x_511.y, x_511.w) / vec3<f32>(x_513.x, x_513.y, x_513.z));
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
        let x_518 : vec4<f32> = u_xlat7;
        let x_520 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
        let x_523 : vec4<f32> = u_xlat6;
        let x_526 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_528 : vec3<f32> = (vec3<f32>(x_523.y, x_523.x, x_523.z) * vec3<f32>(x_526.x, x_526.x, x_526.x));
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_534 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_536 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_534.y, x_534.y, x_534.y));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_540 : f32 = u_xlat7.x;
        u_xlat6.w = x_540;
        let x_542 : vec4<f32> = u_xlat4;
        let x_545 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_548 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) * vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)) + vec4<f32>(x_548.y, x_548.w, x_548.x, x_548.w));
        let x_551 : vec4<f32> = u_xlat4;
        let x_554 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_557.z, x_557.w));
        let x_561 : f32 = u_xlat6.y;
        u_xlat7.w = x_561;
        let x_563 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = vec2<f32>(x_563.y, x_563.z);
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_565.x, x_564.x, x_565.z, x_564.y);
        let x_567 : vec4<f32> = u_xlat4;
        let x_570 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_567.x, x_567.y, x_567.x, x_567.y) * vec4<f32>(x_570.x, x_570.y, x_570.x, x_570.y)) + vec4<f32>(x_573.x, x_573.y, x_573.z, x_573.y));
        let x_576 : vec4<f32> = u_xlat4;
        let x_579 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_582 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_576.x, x_576.y, x_576.x, x_576.y) * vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y)) + vec4<f32>(x_582.w, x_582.y, x_582.w, x_582.z));
        let x_585 : vec4<f32> = u_xlat4;
        let x_588 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_591 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y) * vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y)) + vec4<f32>(x_591.x, x_591.w, x_591.z, x_591.w));
        let x_595 : vec4<f32> = u_xlat5;
        let x_597 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_595.x, x_595.x, x_595.x, x_595.y) * vec4<f32>(x_597.z, x_597.w, x_597.y, x_597.z));
        let x_601 : vec4<f32> = u_xlat5;
        let x_603 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_601.y, x_601.y, x_601.z, x_601.z) * x_603);
        let x_606 : f32 = u_xlat5.z;
        let x_608 : f32 = u_xlat10.y;
        u_xlat54 = (x_606 * x_608);
        let x_611 : vec4<f32> = u_xlat8;
        let x_612 : vec2<f32> = vec2<f32>(x_611.x, x_611.y);
        let x_614 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_612.x, x_612.y, x_614);
        let x_621 : vec3<f32> = txVec4;
        let x_623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_621.xy, x_621.z);
        u_xlat1.x = x_623;
        let x_626 : vec4<f32> = u_xlat8;
        let x_627 : vec2<f32> = vec2<f32>(x_626.z, x_626.w);
        let x_629 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_627.x, x_627.y, x_629);
        let x_637 : vec3<f32> = txVec5;
        let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_637.xy, x_637.z);
        u_xlat56 = x_639;
        let x_640 : f32 = u_xlat56;
        let x_642 : f32 = u_xlat11.y;
        u_xlat56 = (x_640 * x_642);
        let x_645 : f32 = u_xlat11.x;
        let x_647 : f32 = u_xlat1.x;
        let x_649 : f32 = u_xlat56;
        u_xlat1.x = ((x_645 * x_647) + x_649);
        let x_653 : vec2<f32> = u_xlat40;
        let x_655 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_653.x, x_653.y, x_655);
        let x_662 : vec3<f32> = txVec6;
        let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
        u_xlat56 = x_664;
        let x_666 : f32 = u_xlat11.z;
        let x_667 : f32 = u_xlat56;
        let x_670 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_666 * x_667) + x_670);
        let x_674 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = vec2<f32>(x_674.x, x_674.y);
        let x_677 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_675.x, x_675.y, x_677);
        let x_684 : vec3<f32> = txVec7;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_684.xy, x_684.z);
        u_xlat56 = x_686;
        let x_688 : f32 = u_xlat11.w;
        let x_689 : f32 = u_xlat56;
        let x_692 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_688 * x_689) + x_692);
        let x_696 : vec4<f32> = u_xlat9;
        let x_697 : vec2<f32> = vec2<f32>(x_696.x, x_696.y);
        let x_699 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_697.x, x_697.y, x_699);
        let x_706 : vec3<f32> = txVec8;
        let x_708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_706.xy, x_706.z);
        u_xlat56 = x_708;
        let x_710 : f32 = u_xlat12.x;
        let x_711 : f32 = u_xlat56;
        let x_714 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_710 * x_711) + x_714);
        let x_718 : vec4<f32> = u_xlat9;
        let x_719 : vec2<f32> = vec2<f32>(x_718.z, x_718.w);
        let x_721 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_719.x, x_719.y, x_721);
        let x_728 : vec3<f32> = txVec9;
        let x_730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_728.xy, x_728.z);
        u_xlat56 = x_730;
        let x_732 : f32 = u_xlat12.y;
        let x_733 : f32 = u_xlat56;
        let x_736 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_732 * x_733) + x_736);
        let x_740 : vec4<f32> = u_xlat7;
        let x_741 : vec2<f32> = vec2<f32>(x_740.z, x_740.w);
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec10;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_750.xy, x_750.z);
        u_xlat56 = x_752;
        let x_754 : f32 = u_xlat12.z;
        let x_755 : f32 = u_xlat56;
        let x_758 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_754 * x_755) + x_758);
        let x_762 : vec4<f32> = u_xlat6;
        let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec11;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_772.xy, x_772.z);
        u_xlat56 = x_774;
        let x_776 : f32 = u_xlat12.w;
        let x_777 : f32 = u_xlat56;
        let x_780 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_776 * x_777) + x_780);
        let x_784 : vec4<f32> = u_xlat6;
        let x_785 : vec2<f32> = vec2<f32>(x_784.z, x_784.w);
        let x_787 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_794 : vec3<f32> = txVec12;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_794.xy, x_794.z);
        u_xlat56 = x_796;
        let x_797 : f32 = u_xlat54;
        let x_798 : f32 = u_xlat56;
        let x_801 : f32 = u_xlat1.x;
        u_xlat18 = ((x_797 * x_798) + x_801);
      } else {
        let x_804 : vec4<f32> = vs_TEXCOORD6;
        let x_807 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_810 : vec2<f32> = ((vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_807.z, x_807.w)) + vec2<f32>(0.5f, 0.5f));
        let x_811 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
        let x_813 : vec4<f32> = u_xlat4;
        let x_815 : vec2<f32> = floor(vec2<f32>(x_813.x, x_813.y));
        let x_816 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_818 : vec4<f32> = vs_TEXCOORD6;
        let x_821 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_824 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_818.x, x_818.y) * vec2<f32>(x_821.z, x_821.w)) + -(vec2<f32>(x_824.x, x_824.y)));
        let x_828 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_828.x, x_828.x, x_828.y, x_828.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_831 : vec4<f32> = u_xlat5;
        let x_833 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_831.x, x_831.x, x_831.z, x_831.z) * vec4<f32>(x_833.x, x_833.x, x_833.z, x_833.z));
        let x_836 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = (vec2<f32>(x_836.y, x_836.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_841.x, x_840.x, x_841.z, x_840.y);
        let x_843 : vec4<f32> = u_xlat6;
        let x_846 : vec2<f32> = u_xlat40;
        let x_848 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.z) * vec2<f32>(0.5f, 0.5f)) + -(x_846));
        let x_849 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_848.x, x_849.y, x_848.y, x_849.w);
        let x_851 : vec2<f32> = u_xlat40;
        let x_853 : vec2<f32> = (-(x_851) + vec2<f32>(1.0f, 1.0f));
        let x_854 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
        let x_856 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_856, vec2<f32>(0.0f, 0.0f));
        let x_858 : vec2<f32> = u_xlat42;
        let x_860 : vec2<f32> = u_xlat42;
        let x_862 : vec4<f32> = u_xlat6;
        let x_864 : vec2<f32> = ((-(x_858) * x_860) + vec2<f32>(x_862.x, x_862.y));
        let x_865 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_867, vec2<f32>(0.0f, 0.0f));
        let x_870 : vec2<f32> = u_xlat42;
        let x_872 : vec2<f32> = u_xlat42;
        let x_874 : vec4<f32> = u_xlat5;
        let x_876 : vec2<f32> = ((-(x_870) * x_872) + vec2<f32>(x_874.y, x_874.w));
        let x_877 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_876.x, x_877.y, x_876.y);
        let x_879 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = (vec2<f32>(x_879.x, x_879.y) + vec2<f32>(2.0f, 2.0f));
        let x_883 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_885 : vec3<f32> = u_xlat23;
        let x_887 : vec2<f32> = (vec2<f32>(x_885.x, x_885.z) + vec2<f32>(2.0f, 2.0f));
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_888.x, x_887.x, x_888.z, x_887.y);
        let x_891 : f32 = u_xlat5.y;
        u_xlat8.z = (x_891 * 0.081632003f);
        let x_895 : vec4<f32> = u_xlat5;
        let x_898 : vec3<f32> = (vec3<f32>(x_895.z, x_895.x, x_895.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_899 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
        let x_901 : vec4<f32> = u_xlat6;
        let x_904 : vec2<f32> = (vec2<f32>(x_901.x, x_901.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_905 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_908 : f32 = u_xlat9.y;
        u_xlat8.x = x_908;
        let x_910 : vec2<f32> = u_xlat40;
        let x_917 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec2<f32> = u_xlat40;
        let x_924 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_925 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_924.x, x_925.y, x_924.y, x_925.w);
        let x_928 : f32 = u_xlat5.x;
        u_xlat6.y = x_928;
        let x_931 : f32 = u_xlat7.y;
        u_xlat6.w = x_931;
        let x_933 : vec4<f32> = u_xlat6;
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_933 + x_934);
        let x_936 : vec2<f32> = u_xlat40;
        let x_939 : vec2<f32> = ((vec2<f32>(x_936.y, x_936.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_939.x, x_940.z, x_939.y);
        let x_942 : vec2<f32> = u_xlat40;
        let x_945 : vec2<f32> = ((vec2<f32>(x_942.y, x_942.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_946.w);
        let x_949 : f32 = u_xlat5.y;
        u_xlat7.y = x_949;
        let x_951 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_951 + x_952);
        let x_954 : vec4<f32> = u_xlat6;
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_954 / x_955);
        let x_957 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_957 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_963 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_963 / x_964);
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_966 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_968 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_968.w, x_968.x, x_968.y, x_968.z) * vec4<f32>(x_971.x, x_971.x, x_971.x, x_971.x));
        let x_974 : vec4<f32> = u_xlat7;
        let x_977 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_974.x, x_974.w, x_974.y, x_974.z) * vec4<f32>(x_977.y, x_977.y, x_977.y, x_977.y));
        let x_980 : vec4<f32> = u_xlat6;
        let x_981 : vec3<f32> = vec3<f32>(x_980.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_981.z);
        let x_985 : f32 = u_xlat7.x;
        u_xlat9.y = x_985;
        let x_987 : vec4<f32> = u_xlat4;
        let x_990 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y) * vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y)) + vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.y));
        let x_996 : vec4<f32> = u_xlat4;
        let x_999 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_996.x, x_996.y) * vec2<f32>(x_999.x, x_999.y)) + vec2<f32>(x_1002.w, x_1002.y));
        let x_1006 : f32 = u_xlat9.y;
        u_xlat6.y = x_1006;
        let x_1009 : f32 = u_xlat7.z;
        u_xlat9.y = x_1009;
        let x_1011 : vec4<f32> = u_xlat4;
        let x_1014 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y) * vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y)) + vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat4;
        let x_1023 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1023.x, x_1023.y)) + vec2<f32>(x_1026.w, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat9.y;
        u_xlat6.z = x_1032;
        let x_1035 : vec4<f32> = u_xlat4;
        let x_1038 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) * vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y)) + vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.z));
        let x_1045 : f32 = u_xlat7.w;
        u_xlat9.y = x_1045;
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1058 : vec4<f32> = u_xlat4;
        let x_1061 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat9.y;
        u_xlat6.w = x_1068;
        let x_1071 : vec4<f32> = u_xlat4;
        let x_1074 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.x, x_1077.w));
        let x_1080 : vec4<f32> = u_xlat9;
        let x_1081 : vec3<f32> = vec3<f32>(x_1080.x, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1082.y, x_1081.y, x_1081.z);
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1087 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.y));
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1104 : f32 = u_xlat6.x;
        u_xlat7.x = x_1104;
        let x_1106 : vec4<f32> = u_xlat4;
        let x_1109 : vec4<f32> = x_236.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.x, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1118 : vec4<f32> = u_xlat5;
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1118.x, x_1118.x, x_1118.x, x_1118.x) * x_1120);
        let x_1123 : vec4<f32> = u_xlat5;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1123.y, x_1123.y, x_1123.y, x_1123.y) * x_1125);
        let x_1128 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1128.z, x_1128.z, x_1128.z, x_1128.z) * x_1130);
        let x_1132 : vec4<f32> = u_xlat5;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1132.w, x_1132.w, x_1132.w, x_1132.w) * x_1134);
        let x_1137 : vec4<f32> = u_xlat10;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
        let x_1140 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1147 : vec3<f32> = txVec13;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat54 = x_1149;
        let x_1151 : vec4<f32> = u_xlat10;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.z, x_1151.w);
        let x_1154 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec14;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat1.x = x_1163;
        let x_1166 : f32 = u_xlat1.x;
        let x_1168 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1166 * x_1168);
        let x_1172 : f32 = u_xlat15.x;
        let x_1173 : f32 = u_xlat54;
        let x_1176 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1172 * x_1173) + x_1176);
        let x_1179 : vec2<f32> = u_xlat40;
        let x_1181 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec15;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat1.x = x_1190;
        let x_1193 : f32 = u_xlat15.z;
        let x_1195 : f32 = u_xlat1.x;
        let x_1197 : f32 = u_xlat54;
        u_xlat54 = ((x_1193 * x_1195) + x_1197);
        let x_1200 : vec4<f32> = u_xlat13;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec16;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat1.x = x_1212;
        let x_1215 : f32 = u_xlat15.w;
        let x_1217 : f32 = u_xlat1.x;
        let x_1219 : f32 = u_xlat54;
        u_xlat54 = ((x_1215 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat11;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec17;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat1.x = x_1234;
        let x_1237 : f32 = u_xlat16.x;
        let x_1239 : f32 = u_xlat1.x;
        let x_1241 : f32 = u_xlat54;
        u_xlat54 = ((x_1237 * x_1239) + x_1241);
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.z, x_1244.w);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec18;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat1.x = x_1256;
        let x_1259 : f32 = u_xlat16.y;
        let x_1261 : f32 = u_xlat1.x;
        let x_1263 : f32 = u_xlat54;
        u_xlat54 = ((x_1259 * x_1261) + x_1263);
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec19;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1276.xy, x_1276.z);
        u_xlat1.x = x_1278;
        let x_1281 : f32 = u_xlat16.z;
        let x_1283 : f32 = u_xlat1.x;
        let x_1285 : f32 = u_xlat54;
        u_xlat54 = ((x_1281 * x_1283) + x_1285);
        let x_1288 : vec4<f32> = u_xlat13;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.z, x_1288.w);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec20;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat1.x = x_1300;
        let x_1303 : f32 = u_xlat16.w;
        let x_1305 : f32 = u_xlat1.x;
        let x_1307 : f32 = u_xlat54;
        u_xlat54 = ((x_1303 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat14;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.x, x_1310.y);
        let x_1313 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec21;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1320.xy, x_1320.z);
        u_xlat1.x = x_1322;
        let x_1325 : f32 = u_xlat17.x;
        let x_1327 : f32 = u_xlat1.x;
        let x_1329 : f32 = u_xlat54;
        u_xlat54 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat14;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec22;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1342.xy, x_1342.z);
        u_xlat1.x = x_1344;
        let x_1347 : f32 = u_xlat17.y;
        let x_1349 : f32 = u_xlat1.x;
        let x_1351 : f32 = u_xlat54;
        u_xlat54 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec2<f32> = u_xlat24;
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec23;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1363.xy, x_1363.z);
        u_xlat1.x = x_1365;
        let x_1368 : f32 = u_xlat17.z;
        let x_1370 : f32 = u_xlat1.x;
        let x_1372 : f32 = u_xlat54;
        u_xlat54 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec2<f32> = u_xlat48;
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec24;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat1.x = x_1386;
        let x_1389 : f32 = u_xlat17.w;
        let x_1391 : f32 = u_xlat1.x;
        let x_1393 : f32 = u_xlat54;
        u_xlat54 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat9;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec25;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1406.xy, x_1406.z);
        u_xlat1.x = x_1408;
        let x_1411 : f32 = u_xlat5.x;
        let x_1413 : f32 = u_xlat1.x;
        let x_1415 : f32 = u_xlat54;
        u_xlat54 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat9;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec26;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat1.x = x_1430;
        let x_1433 : f32 = u_xlat5.y;
        let x_1435 : f32 = u_xlat1.x;
        let x_1437 : f32 = u_xlat54;
        u_xlat54 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec2<f32> = u_xlat43;
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec27;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : f32 = u_xlat5.z;
        let x_1456 : f32 = u_xlat1.x;
        let x_1458 : f32 = u_xlat54;
        u_xlat54 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat4;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec28;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat1.x = x_1473;
        let x_1476 : f32 = u_xlat5.w;
        let x_1478 : f32 = u_xlat1.x;
        let x_1480 : f32 = u_xlat54;
        u_xlat18 = ((x_1476 * x_1478) + x_1480);
      }
    }
  } else {
    let x_1484 : vec4<f32> = vs_TEXCOORD6;
    let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
    let x_1487 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
    let x_1494 : vec3<f32> = txVec29;
    let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
    u_xlat18 = x_1496;
  }
  let x_1498 : f32 = x_236.x_MainLightShadowParams.x;
  u_xlat54 = (-(x_1498) + 1.0f);
  let x_1501 : f32 = u_xlat18;
  let x_1503 : f32 = x_236.x_MainLightShadowParams.x;
  let x_1505 : f32 = u_xlat54;
  u_xlat18 = ((x_1501 * x_1503) + x_1505);
  let x_1508 : f32 = vs_TEXCOORD6.z;
  u_xlatb54 = (0.0f >= x_1508);
  let x_1512 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1512 >= 1.0f);
  let x_1514 : bool = u_xlatb54;
  let x_1515 : bool = u_xlatb1;
  u_xlatb54 = (x_1514 | x_1515);
  let x_1517 : bool = u_xlatb54;
  let x_1518 : f32 = u_xlat18;
  u_xlat18 = select(x_1518, 1.0f, x_1517);
  let x_1521 : vec3<f32> = vs_TEXCOORD1;
  let x_1525 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1527 : vec3<f32> = (x_1521 + -(x_1525));
  let x_1528 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1530 : vec4<f32> = u_xlat4;
  let x_1532 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_1530.x, x_1530.y, x_1530.z), vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
  let x_1535 : f32 = u_xlat54;
  let x_1537 : f32 = x_236.x_MainLightShadowParams.z;
  let x_1540 : f32 = x_236.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1535 * x_1537) + x_1540);
  let x_1542 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1542, 0.0f, 1.0f);
  let x_1544 : f32 = u_xlat18;
  u_xlat1.x = (-(x_1544) + 1.0f);
  let x_1548 : f32 = u_xlat54;
  let x_1550 : f32 = u_xlat1.x;
  let x_1552 : f32 = u_xlat18;
  u_xlat18 = ((x_1548 * x_1550) + x_1552);
  let x_1554 : f32 = u_xlat18;
  let x_1556 : f32 = x_155.unity_LightData.z;
  u_xlat18 = (x_1554 * x_1556);
  let x_1558 : f32 = u_xlat18;
  let x_1562 : vec4<f32> = x_27.x_MainLightColor;
  let x_1564 : vec3<f32> = (vec3<f32>(x_1558, x_1558, x_1558) * vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat2;
  let x_1571 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat18 = dot(vec3<f32>(x_1567.x, x_1567.y, x_1567.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1574, 0.0f, 1.0f);
  let x_1576 : f32 = u_xlat18;
  let x_1578 : vec4<f32> = u_xlat4;
  let x_1580 : vec3<f32> = (vec3<f32>(x_1576, x_1576, x_1576) * vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat1;
  let x_1585 : vec4<f32> = u_xlat4;
  let x_1587 : vec3<f32> = (vec3<f32>(x_1583.y, x_1583.z, x_1583.w) * vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : vec4<f32> = u_xlat0;
  let x_1592 : vec4<f32> = u_xlat4;
  let x_1594 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.x, x_1590.x) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
  let x_1595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1598 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1600 : f32 = x_155.unity_LightData.y;
  u_xlat18 = min(x_1598, x_1600);
  let x_1604 : f32 = u_xlat18;
  u_xlatu18 = bitcast<u32>(i32(x_1604));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1616 : u32 = u_xlatu_loop_1;
    let x_1617 : u32 = u_xlatu18;
    if ((x_1616 < x_1617)) {
    } else {
      break;
    }
    let x_1620 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_1620 >> 2u);
    let x_1624 : u32 = u_xlatu_loop_1;
    u_xlati56 = bitcast<i32>((x_1624 & 3u));
    let x_1627 : u32 = u_xlatu1;
    let x_1630 : vec4<f32> = x_155.unity_LightIndices[bitcast<i32>(x_1627)];
    let x_1640 : i32 = u_xlati56;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1645 : vec4<u32> = indexable[x_1640];
    u_xlat1.x = dot(x_1630, bitcast<vec4<f32>>(x_1645));
    let x_1651 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_1651);
    let x_1653 : vec3<f32> = vs_TEXCOORD1;
    let x_1665 : i32 = u_xlati1;
    let x_1667 : vec4<f32> = x_1664.x_AdditionalLightsPosition[x_1665];
    let x_1670 : i32 = u_xlati1;
    let x_1672 : vec4<f32> = x_1664.x_AdditionalLightsPosition[x_1670];
    let x_1674 : vec3<f32> = ((-(x_1653) * vec3<f32>(x_1667.w, x_1667.w, x_1667.w)) + vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
    let x_1677 : vec4<f32> = u_xlat6;
    let x_1679 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(vec3<f32>(x_1677.x, x_1677.y, x_1677.z), vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
    let x_1682 : f32 = u_xlat56;
    u_xlat56 = max(x_1682, 6.10351562e-05f);
    let x_1686 : f32 = u_xlat56;
    u_xlat57 = inverseSqrt(x_1686);
    let x_1688 : f32 = u_xlat57;
    let x_1690 : vec4<f32> = u_xlat6;
    let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
    let x_1693 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
    let x_1695 : f32 = u_xlat56;
    u_xlat57 = (1.0f / x_1695);
    let x_1697 : f32 = u_xlat56;
    let x_1698 : i32 = u_xlati1;
    let x_1700 : f32 = x_1664.x_AdditionalLightsAttenuation[x_1698].x;
    u_xlat56 = (x_1697 * x_1700);
    let x_1702 : f32 = u_xlat56;
    let x_1704 : f32 = u_xlat56;
    u_xlat56 = ((-(x_1702) * x_1704) + 1.0f);
    let x_1707 : f32 = u_xlat56;
    u_xlat56 = max(x_1707, 0.0f);
    let x_1709 : f32 = u_xlat56;
    let x_1710 : f32 = u_xlat56;
    u_xlat56 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat56;
    let x_1713 : f32 = u_xlat57;
    u_xlat56 = (x_1712 * x_1713);
    let x_1715 : i32 = u_xlati1;
    let x_1717 : vec4<f32> = x_1664.x_AdditionalLightsSpotDir[x_1715];
    let x_1719 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1717.x, x_1717.y, x_1717.z), vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
    let x_1722 : f32 = u_xlat57;
    let x_1723 : i32 = u_xlati1;
    let x_1725 : f32 = x_1664.x_AdditionalLightsAttenuation[x_1723].z;
    let x_1727 : i32 = u_xlati1;
    let x_1729 : f32 = x_1664.x_AdditionalLightsAttenuation[x_1727].w;
    u_xlat57 = ((x_1722 * x_1725) + x_1729);
    let x_1731 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1731, 0.0f, 1.0f);
    let x_1733 : f32 = u_xlat57;
    let x_1734 : f32 = u_xlat57;
    u_xlat57 = (x_1733 * x_1734);
    let x_1736 : f32 = u_xlat56;
    let x_1737 : f32 = u_xlat57;
    u_xlat56 = (x_1736 * x_1737);
    let x_1739 : f32 = u_xlat56;
    let x_1741 : i32 = u_xlati1;
    let x_1743 : vec4<f32> = x_1664.x_AdditionalLightsColor[x_1741];
    let x_1745 : vec3<f32> = (vec3<f32>(x_1739, x_1739, x_1739) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
    let x_1748 : vec4<f32> = u_xlat2;
    let x_1750 : vec4<f32> = u_xlat6;
    u_xlat1.x = dot(vec3<f32>(x_1748.x, x_1748.y, x_1748.z), vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
    let x_1755 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1755, 0.0f, 1.0f);
    let x_1758 : vec4<f32> = u_xlat1;
    let x_1760 : vec4<f32> = u_xlat7;
    let x_1762 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.x, x_1758.x) * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
    let x_1763 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
    let x_1765 : vec4<f32> = u_xlat1;
    let x_1767 : vec4<f32> = u_xlat6;
    let x_1769 : vec3<f32> = (vec3<f32>(x_1765.y, x_1765.z, x_1765.w) * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
    let x_1770 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
    let x_1772 : vec4<f32> = u_xlat6;
    let x_1774 : vec4<f32> = u_xlat0;
    let x_1777 : vec4<f32> = u_xlat5;
    let x_1779 : vec3<f32> = ((vec3<f32>(x_1772.x, x_1772.y, x_1772.z) * vec3<f32>(x_1774.x, x_1774.x, x_1774.x)) + vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
    let x_1780 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);

    continuing {
      let x_1782 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1782 + bitcast<u32>(1i));
    }
  }
  let x_1784 : vec3<f32> = u_xlat3;
  let x_1785 : vec4<f32> = u_xlat1;
  let x_1788 : vec4<f32> = u_xlat4;
  let x_1790 : vec3<f32> = ((x_1784 * vec3<f32>(x_1785.y, x_1785.z, x_1785.w)) + vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1795 : vec4<f32> = u_xlat5;
  let x_1797 : vec4<f32> = u_xlat1;
  let x_1799 : vec3<f32> = (vec3<f32>(x_1795.x, x_1795.y, x_1795.z) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
  let x_1803 : f32 = x_41.x_Surface;
  u_xlatb18 = (x_1803 == 1.0f);
  let x_1805 : bool = u_xlatb18;
  let x_1806 : bool = u_xlatb36;
  u_xlatb18 = (x_1805 | x_1806);
  let x_1808 : bool = u_xlatb18;
  if (x_1808) {
    let x_1813 : f32 = u_xlat0.x;
    x_1809 = x_1813;
  } else {
    x_1809 = 1.0f;
  }
  let x_1815 : f32 = x_1809;
  SV_Target0.w = x_1815;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

