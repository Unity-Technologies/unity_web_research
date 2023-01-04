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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_276 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1606 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1703 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_123 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat57 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat22 : f32;
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
  var u_xlatb4 : bool;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati57 : i32;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var x_1872 : f32;
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
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat18 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat54;
  let x_103 : f32 = u_xlat36;
  u_xlat36 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat36;
  u_xlat36 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat18;
  let x_110 : f32 = u_xlat36;
  u_xlat18 = (x_109 / x_110);
  let x_112 : f32 = u_xlat18;
  u_xlat18 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat18;
  u_xlat18 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb36;
  if (x_122) {
    let x_126 : f32 = u_xlat18;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat18 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat18;
  u_xlatb18 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb18;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat18;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_164 : f32 = vs_TEXCOORD1.y;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat18 = (x_164 * x_168);
  let x_171 : f32 = x_44.unity_MatrixV[0i].z;
  let x_173 : f32 = vs_TEXCOORD1.x;
  let x_175 : f32 = u_xlat18;
  u_xlat18 = ((x_171 * x_173) + x_175);
  let x_178 : f32 = x_44.unity_MatrixV[2i].z;
  let x_180 : f32 = vs_TEXCOORD1.z;
  let x_182 : f32 = u_xlat18;
  u_xlat18 = ((x_178 * x_180) + x_182);
  let x_184 : f32 = u_xlat18;
  let x_187 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat18 = (x_184 + x_187);
  let x_189 : f32 = u_xlat18;
  let x_193 : f32 = x_44.x_ProjectionParams.y;
  u_xlat18 = (-(x_189) + -(x_193));
  let x_196 : f32 = u_xlat18;
  u_xlat18 = max(x_196, 0.0f);
  let x_198 : f32 = u_xlat18;
  let x_201 : f32 = x_44.unity_FogParams.x;
  u_xlat18 = (x_198 * x_201);
  let x_210 : vec2<f32> = vs_TEXCOORD7;
  let x_212 : f32 = x_44.x_GlobalMipBias.x;
  let x_213 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_218 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = hlslcc_FragCoord;
  let x_230 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) * vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_231.w);
  let x_234 : f32 = u_xlat4.y;
  let x_237 : f32 = x_44.x_ScaleBiasRt.x;
  let x_240 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat54 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat54;
  u_xlat4.z = (-(x_242) + 1.0f);
  let x_251 : vec4<f32> = u_xlat4;
  let x_254 : f32 = x_44.x_GlobalMipBias.x;
  let x_255 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_251.x, x_251.z), x_254);
  u_xlat54 = x_255.x;
  let x_257 : f32 = u_xlat54;
  u_xlat1.x = (x_257 + -1.0f);
  let x_263 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_263 * x_265) + 1.0f);
  let x_269 : f32 = u_xlat54;
  u_xlat54 = min(x_269, 1.0f);
  let x_278 : f32 = x_276.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_278);
  let x_280 : bool = u_xlatb56;
  if (x_280) {
    let x_284 : f32 = x_276.x_MainLightShadowParams.y;
    u_xlatb56 = (x_284 == 1.0f);
    let x_286 : bool = u_xlatb56;
    if (x_286) {
      let x_290 : vec4<f32> = vs_TEXCOORD6;
      let x_294 : vec4<f32> = x_276.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_290.x, x_290.y, x_290.x, x_290.y) + x_294);
      let x_297 : vec4<f32> = u_xlat4;
      let x_298 : vec2<f32> = vec2<f32>(x_297.x, x_297.y);
      let x_300 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_298.x, x_298.y, x_300);
      let x_313 : vec3<f32> = txVec0;
      let x_315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_313.xy, x_313.z);
      u_xlat5.x = x_315;
      let x_318 : vec4<f32> = u_xlat4;
      let x_319 : vec2<f32> = vec2<f32>(x_318.z, x_318.w);
      let x_321 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_319.x, x_319.y, x_321);
      let x_328 : vec3<f32> = txVec1;
      let x_330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_328.xy, x_328.z);
      u_xlat5.y = x_330;
      let x_332 : vec4<f32> = vs_TEXCOORD6;
      let x_336 : vec4<f32> = x_276.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_332.x, x_332.y, x_332.x, x_332.y) + x_336);
      let x_339 : vec4<f32> = u_xlat4;
      let x_340 : vec2<f32> = vec2<f32>(x_339.x, x_339.y);
      let x_342 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_340.x, x_340.y, x_342);
      let x_349 : vec3<f32> = txVec2;
      let x_351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_349.xy, x_349.z);
      u_xlat5.z = x_351;
      let x_354 : vec4<f32> = u_xlat4;
      let x_355 : vec2<f32> = vec2<f32>(x_354.z, x_354.w);
      let x_357 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_355.x, x_355.y, x_357);
      let x_364 : vec3<f32> = txVec3;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_364.xy, x_364.z);
      u_xlat5.w = x_366;
      let x_369 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_369, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_376 : f32 = x_276.x_MainLightShadowParams.y;
      u_xlatb57 = (x_376 == 2.0f);
      let x_379 : bool = u_xlatb57;
      if (x_379) {
        let x_382 : vec4<f32> = vs_TEXCOORD6;
        let x_385 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_389 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_385.z, x_385.w)) + vec2<f32>(0.5f, 0.5f));
        let x_390 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
        let x_392 : vec4<f32> = u_xlat4;
        let x_394 : vec2<f32> = floor(vec2<f32>(x_392.x, x_392.y));
        let x_395 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
        let x_399 : vec4<f32> = vs_TEXCOORD6;
        let x_402 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_405 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.w)) + -(vec2<f32>(x_405.x, x_405.y)));
        let x_409 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_409.x, x_409.x, x_409.y, x_409.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_414 : vec4<f32> = u_xlat5;
        let x_416 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_414.x, x_414.x, x_414.z, x_414.z) * vec4<f32>(x_416.x, x_416.x, x_416.z, x_416.z));
        let x_419 : vec4<f32> = u_xlat6;
        let x_423 : vec2<f32> = (vec2<f32>(x_419.y, x_419.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_424 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_423.x, x_424.y, x_423.y, x_424.w);
        let x_426 : vec4<f32> = u_xlat6;
        let x_429 : vec2<f32> = u_xlat40;
        let x_431 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_429));
        let x_432 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_435) + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec2<f32> = u_xlat40;
        let x_441 : vec2<f32> = min(x_439, vec2<f32>(0.0f, 0.0f));
        let x_442 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec4<f32> = u_xlat7;
        let x_447 : vec4<f32> = u_xlat7;
        let x_450 : vec2<f32> = u_xlat42;
        let x_451 : vec2<f32> = ((-(vec2<f32>(x_444.x, x_444.y)) * vec2<f32>(x_447.x, x_447.y)) + x_450);
        let x_452 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
        let x_454 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_454, vec2<f32>(0.0f, 0.0f));
        let x_456 : vec2<f32> = u_xlat40;
        let x_458 : vec2<f32> = u_xlat40;
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_456) * x_458) + vec2<f32>(x_460.y, x_460.w));
        let x_463 : vec4<f32> = u_xlat7;
        let x_465 : vec2<f32> = (vec2<f32>(x_463.x, x_463.y) + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_468 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_468 + vec2<f32>(1.0f, 1.0f));
        let x_471 : vec4<f32> = u_xlat6;
        let x_475 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_476 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat42;
        let x_479 : vec2<f32> = (x_478 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec4<f32> = u_xlat7;
        let x_484 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_485 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec2<f32> = u_xlat40;
        let x_489 : vec2<f32> = (x_488 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_490 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_492.y, x_492.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_496 : f32 = u_xlat7.x;
        u_xlat8.z = x_496;
        let x_499 : f32 = u_xlat40.x;
        u_xlat8.w = x_499;
        let x_502 : f32 = u_xlat9.x;
        u_xlat6.z = x_502;
        let x_505 : f32 = u_xlat5.x;
        u_xlat6.w = x_505;
        let x_508 : vec4<f32> = u_xlat6;
        let x_510 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_508.z, x_508.w, x_508.x, x_508.z) + vec4<f32>(x_510.z, x_510.w, x_510.x, x_510.z));
        let x_514 : f32 = u_xlat8.y;
        u_xlat7.z = x_514;
        let x_517 : f32 = u_xlat40.y;
        u_xlat7.w = x_517;
        let x_520 : f32 = u_xlat6.y;
        u_xlat9.z = x_520;
        let x_523 : f32 = u_xlat5.z;
        u_xlat9.w = x_523;
        let x_525 : vec4<f32> = u_xlat7;
        let x_527 : vec4<f32> = u_xlat9;
        let x_529 : vec3<f32> = (vec3<f32>(x_525.z, x_525.y, x_525.w) + vec3<f32>(x_527.z, x_527.y, x_527.w));
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat6;
        let x_534 : vec4<f32> = u_xlat10;
        let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.z, x_532.w) / vec3<f32>(x_534.z, x_534.w, x_534.y));
        let x_537 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_539 : vec4<f32> = u_xlat6;
        let x_545 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_546 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat9;
        let x_550 : vec4<f32> = u_xlat5;
        let x_552 : vec3<f32> = (vec3<f32>(x_548.z, x_548.y, x_548.w) / vec3<f32>(x_550.x, x_550.y, x_550.z));
        let x_553 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat7;
        let x_557 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_558 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_563 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_565 : vec3<f32> = (vec3<f32>(x_560.y, x_560.x, x_560.z) * vec3<f32>(x_563.x, x_563.x, x_563.x));
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat7;
        let x_571 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_573 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_571.y, x_571.y, x_571.y));
        let x_574 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_577 : f32 = u_xlat7.x;
        u_xlat6.w = x_577;
        let x_579 : vec4<f32> = u_xlat4;
        let x_582 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_585 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y) * vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y)) + vec4<f32>(x_585.y, x_585.w, x_585.x, x_585.w));
        let x_588 : vec4<f32> = u_xlat4;
        let x_591 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_591.x, x_591.y)) + vec2<f32>(x_594.z, x_594.w));
        let x_598 : f32 = u_xlat6.y;
        u_xlat7.w = x_598;
        let x_600 : vec4<f32> = u_xlat7;
        let x_601 : vec2<f32> = vec2<f32>(x_600.y, x_600.z);
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_602.x, x_601.x, x_602.z, x_601.y);
        let x_604 : vec4<f32> = u_xlat4;
        let x_607 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y)) + vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.y));
        let x_613 : vec4<f32> = u_xlat4;
        let x_616 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y) * vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y)) + vec4<f32>(x_619.w, x_619.y, x_619.w, x_619.z));
        let x_622 : vec4<f32> = u_xlat4;
        let x_625 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.x, x_628.w, x_628.z, x_628.w));
        let x_632 : vec4<f32> = u_xlat5;
        let x_634 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_632.x, x_632.x, x_632.x, x_632.y) * vec4<f32>(x_634.z, x_634.w, x_634.y, x_634.z));
        let x_638 : vec4<f32> = u_xlat5;
        let x_640 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_638.y, x_638.y, x_638.z, x_638.z) * x_640);
        let x_644 : f32 = u_xlat5.z;
        let x_646 : f32 = u_xlat10.y;
        u_xlat57 = (x_644 * x_646);
        let x_649 : vec4<f32> = u_xlat8;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec4;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_659.xy, x_659.z);
        u_xlat4.x = x_661;
        let x_664 : vec4<f32> = u_xlat8;
        let x_665 : vec2<f32> = vec2<f32>(x_664.z, x_664.w);
        let x_667 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_665.x, x_665.y, x_667);
        let x_675 : vec3<f32> = txVec5;
        let x_677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_675.xy, x_675.z);
        u_xlat22 = x_677;
        let x_678 : f32 = u_xlat22;
        let x_680 : f32 = u_xlat11.y;
        u_xlat22 = (x_678 * x_680);
        let x_683 : f32 = u_xlat11.x;
        let x_685 : f32 = u_xlat4.x;
        let x_687 : f32 = u_xlat22;
        u_xlat4.x = ((x_683 * x_685) + x_687);
        let x_691 : vec2<f32> = u_xlat40;
        let x_693 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_700 : vec3<f32> = txVec6;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
        u_xlat22 = x_702;
        let x_704 : f32 = u_xlat11.z;
        let x_705 : f32 = u_xlat22;
        let x_708 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_704 * x_705) + x_708);
        let x_712 : vec4<f32> = u_xlat7;
        let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
        let x_715 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_722 : vec3<f32> = txVec7;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_722.xy, x_722.z);
        u_xlat22 = x_724;
        let x_726 : f32 = u_xlat11.w;
        let x_727 : f32 = u_xlat22;
        let x_730 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_726 * x_727) + x_730);
        let x_734 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec8;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_744.xy, x_744.z);
        u_xlat22 = x_746;
        let x_748 : f32 = u_xlat12.x;
        let x_749 : f32 = u_xlat22;
        let x_752 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_748 * x_749) + x_752);
        let x_756 : vec4<f32> = u_xlat9;
        let x_757 : vec2<f32> = vec2<f32>(x_756.z, x_756.w);
        let x_759 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec9;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_766.xy, x_766.z);
        u_xlat22 = x_768;
        let x_770 : f32 = u_xlat12.y;
        let x_771 : f32 = u_xlat22;
        let x_774 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_770 * x_771) + x_774);
        let x_778 : vec4<f32> = u_xlat7;
        let x_779 : vec2<f32> = vec2<f32>(x_778.z, x_778.w);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec10;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
        u_xlat22 = x_790;
        let x_792 : f32 = u_xlat12.z;
        let x_793 : f32 = u_xlat22;
        let x_796 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_792 * x_793) + x_796);
        let x_800 : vec4<f32> = u_xlat6;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec11;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
        u_xlat22 = x_812;
        let x_814 : f32 = u_xlat12.w;
        let x_815 : f32 = u_xlat22;
        let x_818 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_814 * x_815) + x_818);
        let x_822 : vec4<f32> = u_xlat6;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec12;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_832.xy, x_832.z);
        u_xlat22 = x_834;
        let x_835 : f32 = u_xlat57;
        let x_836 : f32 = u_xlat22;
        let x_839 : f32 = u_xlat4.x;
        u_xlat56 = ((x_835 * x_836) + x_839);
      } else {
        let x_842 : vec4<f32> = vs_TEXCOORD6;
        let x_845 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_848 : vec2<f32> = ((vec2<f32>(x_842.x, x_842.y) * vec2<f32>(x_845.z, x_845.w)) + vec2<f32>(0.5f, 0.5f));
        let x_849 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat4;
        let x_853 : vec2<f32> = floor(vec2<f32>(x_851.x, x_851.y));
        let x_854 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
        let x_856 : vec4<f32> = vs_TEXCOORD6;
        let x_859 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_856.x, x_856.y) * vec2<f32>(x_859.z, x_859.w)) + -(vec2<f32>(x_862.x, x_862.y)));
        let x_866 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_866.x, x_866.x, x_866.y, x_866.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_869 : vec4<f32> = u_xlat5;
        let x_871 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_869.x, x_869.x, x_869.z, x_869.z) * vec4<f32>(x_871.x, x_871.x, x_871.z, x_871.z));
        let x_874 : vec4<f32> = u_xlat6;
        let x_878 : vec2<f32> = (vec2<f32>(x_874.y, x_874.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_879.x, x_878.x, x_879.z, x_878.y);
        let x_881 : vec4<f32> = u_xlat6;
        let x_884 : vec2<f32> = u_xlat40;
        let x_886 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.z) * vec2<f32>(0.5f, 0.5f)) + -(x_884));
        let x_887 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_886.x, x_887.y, x_886.y, x_887.w);
        let x_889 : vec2<f32> = u_xlat40;
        let x_891 : vec2<f32> = (-(x_889) + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_894, vec2<f32>(0.0f, 0.0f));
        let x_896 : vec2<f32> = u_xlat42;
        let x_898 : vec2<f32> = u_xlat42;
        let x_900 : vec4<f32> = u_xlat6;
        let x_902 : vec2<f32> = ((-(x_896) * x_898) + vec2<f32>(x_900.x, x_900.y));
        let x_903 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_905, vec2<f32>(0.0f, 0.0f));
        let x_908 : vec2<f32> = u_xlat42;
        let x_910 : vec2<f32> = u_xlat42;
        let x_912 : vec4<f32> = u_xlat5;
        let x_914 : vec2<f32> = ((-(x_908) * x_910) + vec2<f32>(x_912.y, x_912.w));
        let x_915 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_914.x, x_915.y, x_914.y);
        let x_917 : vec4<f32> = u_xlat6;
        let x_920 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) + vec2<f32>(2.0f, 2.0f));
        let x_921 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec3<f32> = u_xlat23;
        let x_925 : vec2<f32> = (vec2<f32>(x_923.x, x_923.z) + vec2<f32>(2.0f, 2.0f));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_926.x, x_925.x, x_926.z, x_925.y);
        let x_929 : f32 = u_xlat5.y;
        u_xlat8.z = (x_929 * 0.081632003f);
        let x_933 : vec4<f32> = u_xlat5;
        let x_936 : vec3<f32> = (vec3<f32>(x_933.z, x_933.x, x_933.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat6;
        let x_942 : vec2<f32> = (vec2<f32>(x_939.x, x_939.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_943 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_946 : f32 = u_xlat9.y;
        u_xlat8.x = x_946;
        let x_948 : vec2<f32> = u_xlat40;
        let x_955 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_958 : vec2<f32> = u_xlat40;
        let x_962 : vec2<f32> = ((vec2<f32>(x_958.x, x_958.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_962.x, x_963.y, x_962.y, x_963.w);
        let x_966 : f32 = u_xlat5.x;
        u_xlat6.y = x_966;
        let x_969 : f32 = u_xlat7.y;
        u_xlat6.w = x_969;
        let x_971 : vec4<f32> = u_xlat6;
        let x_972 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_971 + x_972);
        let x_974 : vec2<f32> = u_xlat40;
        let x_977 : vec2<f32> = ((vec2<f32>(x_974.y, x_974.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_980 : vec2<f32> = u_xlat40;
        let x_983 : vec2<f32> = ((vec2<f32>(x_980.y, x_980.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_984 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_983.x, x_984.y, x_983.y, x_984.w);
        let x_987 : f32 = u_xlat5.y;
        u_xlat7.y = x_987;
        let x_989 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_989 + x_990);
        let x_992 : vec4<f32> = u_xlat6;
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_992 / x_993);
        let x_995 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_995 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1002 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1001 / x_1002);
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1004 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1006 : vec4<f32> = u_xlat6;
        let x_1009 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1006.w, x_1006.x, x_1006.y, x_1006.z) * vec4<f32>(x_1009.x, x_1009.x, x_1009.x, x_1009.x));
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1015 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1012.x, x_1012.w, x_1012.y, x_1012.z) * vec4<f32>(x_1015.y, x_1015.y, x_1015.y, x_1015.y));
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1019 : vec3<f32> = vec3<f32>(x_1018.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1019.x, x_1020.y, x_1019.y, x_1019.z);
        let x_1023 : f32 = u_xlat7.x;
        u_xlat9.y = x_1023;
        let x_1025 : vec4<f32> = u_xlat4;
        let x_1028 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y) * vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y)) + vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat4;
        let x_1037 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.w, x_1040.y));
        let x_1044 : f32 = u_xlat9.y;
        u_xlat6.y = x_1044;
        let x_1047 : f32 = u_xlat7.z;
        u_xlat9.y = x_1047;
        let x_1049 : vec4<f32> = u_xlat4;
        let x_1052 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat4;
        let x_1061 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1067 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1070 : f32 = u_xlat9.y;
        u_xlat6.z = x_1070;
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.z));
        let x_1083 : f32 = u_xlat7.w;
        u_xlat9.y = x_1083;
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1092.y));
        let x_1096 : vec4<f32> = u_xlat4;
        let x_1099 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1102.w, x_1102.y));
        let x_1106 : f32 = u_xlat9.y;
        u_xlat6.w = x_1106;
        let x_1109 : vec4<f32> = u_xlat4;
        let x_1112 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.x, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat9;
        let x_1119 : vec3<f32> = vec3<f32>(x_1118.x, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1119.z);
        let x_1122 : vec4<f32> = u_xlat4;
        let x_1125 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.y));
        let x_1132 : vec4<f32> = u_xlat4;
        let x_1135 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.w, x_1138.y));
        let x_1142 : f32 = u_xlat6.x;
        u_xlat7.x = x_1142;
        let x_1144 : vec4<f32> = u_xlat4;
        let x_1147 : vec4<f32> = x_276.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat7;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.x, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1156.x, x_1156.x, x_1156.x, x_1156.x) * x_1158);
        let x_1161 : vec4<f32> = u_xlat5;
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1161.y, x_1161.y, x_1161.y, x_1161.y) * x_1163);
        let x_1166 : vec4<f32> = u_xlat5;
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1166.z, x_1166.z, x_1166.z, x_1166.z) * x_1168);
        let x_1170 : vec4<f32> = u_xlat5;
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1170.w, x_1170.w, x_1170.w, x_1170.w) * x_1172);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec13;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat57 = x_1187;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.z, x_1189.w);
        let x_1192 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec14;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
        u_xlat6.x = x_1201;
        let x_1204 : f32 = u_xlat6.x;
        let x_1206 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1204 * x_1206);
        let x_1210 : f32 = u_xlat15.x;
        let x_1211 : f32 = u_xlat57;
        let x_1214 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1210 * x_1211) + x_1214);
        let x_1217 : vec2<f32> = u_xlat40;
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec15;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1226.xy, x_1226.z);
        u_xlat40.x = x_1228;
        let x_1231 : f32 = u_xlat15.z;
        let x_1233 : f32 = u_xlat40.x;
        let x_1235 : f32 = u_xlat57;
        u_xlat57 = ((x_1231 * x_1233) + x_1235);
        let x_1238 : vec4<f32> = u_xlat13;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec16;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat40.x = x_1250;
        let x_1253 : f32 = u_xlat15.w;
        let x_1255 : f32 = u_xlat40.x;
        let x_1257 : f32 = u_xlat57;
        u_xlat57 = ((x_1253 * x_1255) + x_1257);
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec17;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat40.x = x_1272;
        let x_1275 : f32 = u_xlat16.x;
        let x_1277 : f32 = u_xlat40.x;
        let x_1279 : f32 = u_xlat57;
        u_xlat57 = ((x_1275 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat11;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec18;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1292.xy, x_1292.z);
        u_xlat40.x = x_1294;
        let x_1297 : f32 = u_xlat16.y;
        let x_1299 : f32 = u_xlat40.x;
        let x_1301 : f32 = u_xlat57;
        u_xlat57 = ((x_1297 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat12;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec19;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1314.xy, x_1314.z);
        u_xlat40.x = x_1316;
        let x_1319 : f32 = u_xlat16.z;
        let x_1321 : f32 = u_xlat40.x;
        let x_1323 : f32 = u_xlat57;
        u_xlat57 = ((x_1319 * x_1321) + x_1323);
        let x_1326 : vec4<f32> = u_xlat13;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.z, x_1326.w);
        let x_1329 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec20;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1336.xy, x_1336.z);
        u_xlat40.x = x_1338;
        let x_1341 : f32 = u_xlat16.w;
        let x_1343 : f32 = u_xlat40.x;
        let x_1345 : f32 = u_xlat57;
        u_xlat57 = ((x_1341 * x_1343) + x_1345);
        let x_1348 : vec4<f32> = u_xlat14;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.x, x_1348.y);
        let x_1351 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec21;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1358.xy, x_1358.z);
        u_xlat40.x = x_1360;
        let x_1363 : f32 = u_xlat17.x;
        let x_1365 : f32 = u_xlat40.x;
        let x_1367 : f32 = u_xlat57;
        u_xlat57 = ((x_1363 * x_1365) + x_1367);
        let x_1370 : vec4<f32> = u_xlat14;
        let x_1371 : vec2<f32> = vec2<f32>(x_1370.z, x_1370.w);
        let x_1373 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec22;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1380.xy, x_1380.z);
        u_xlat40.x = x_1382;
        let x_1385 : f32 = u_xlat17.y;
        let x_1387 : f32 = u_xlat40.x;
        let x_1389 : f32 = u_xlat57;
        u_xlat57 = ((x_1385 * x_1387) + x_1389);
        let x_1392 : vec2<f32> = u_xlat24;
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec23;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat40.x = x_1403;
        let x_1406 : f32 = u_xlat17.z;
        let x_1408 : f32 = u_xlat40.x;
        let x_1410 : f32 = u_xlat57;
        u_xlat57 = ((x_1406 * x_1408) + x_1410);
        let x_1413 : vec2<f32> = u_xlat48;
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec24;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat40.x = x_1424;
        let x_1427 : f32 = u_xlat17.w;
        let x_1429 : f32 = u_xlat40.x;
        let x_1431 : f32 = u_xlat57;
        u_xlat57 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat9;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec25;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat40.x = x_1446;
        let x_1449 : f32 = u_xlat5.x;
        let x_1451 : f32 = u_xlat40.x;
        let x_1453 : f32 = u_xlat57;
        u_xlat57 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat9;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec26;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat40.x = x_1468;
        let x_1471 : f32 = u_xlat5.y;
        let x_1473 : f32 = u_xlat40.x;
        let x_1475 : f32 = u_xlat57;
        u_xlat57 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec2<f32> = u_xlat43;
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec27;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat40.x = x_1489;
        let x_1492 : f32 = u_xlat5.z;
        let x_1494 : f32 = u_xlat40.x;
        let x_1496 : f32 = u_xlat57;
        u_xlat57 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat4;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.x, x_1499.y);
        let x_1502 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec28;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat4.x = x_1511;
        let x_1514 : f32 = u_xlat5.w;
        let x_1516 : f32 = u_xlat4.x;
        let x_1518 : f32 = u_xlat57;
        u_xlat56 = ((x_1514 * x_1516) + x_1518);
      }
    }
  } else {
    let x_1522 : vec4<f32> = vs_TEXCOORD6;
    let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
    let x_1525 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
    let x_1532 : vec3<f32> = txVec29;
    let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
    u_xlat56 = x_1534;
  }
  let x_1536 : f32 = x_276.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1536) + 1.0f);
  let x_1539 : f32 = u_xlat56;
  let x_1541 : f32 = x_276.x_MainLightShadowParams.x;
  let x_1543 : f32 = u_xlat57;
  u_xlat56 = ((x_1539 * x_1541) + x_1543);
  let x_1546 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1546);
  let x_1550 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1550 >= 1.0f);
  let x_1552 : bool = u_xlatb57;
  let x_1553 : bool = u_xlatb4;
  u_xlatb57 = (x_1552 | x_1553);
  let x_1555 : bool = u_xlatb57;
  let x_1556 : f32 = u_xlat56;
  u_xlat56 = select(x_1556, 1.0f, x_1555);
  let x_1558 : vec3<f32> = vs_TEXCOORD1;
  let x_1561 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1563 : vec3<f32> = (x_1558 + -(x_1561));
  let x_1564 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
  let x_1566 : vec4<f32> = u_xlat4;
  let x_1568 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1566.x, x_1566.y, x_1566.z), vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : f32 = u_xlat57;
  let x_1573 : f32 = x_276.x_MainLightShadowParams.z;
  let x_1576 : f32 = x_276.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1571 * x_1573) + x_1576);
  let x_1578 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1578, 0.0f, 1.0f);
  let x_1580 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1580) + 1.0f);
  let x_1584 : f32 = u_xlat57;
  let x_1586 : f32 = u_xlat4.x;
  let x_1588 : f32 = u_xlat56;
  u_xlat56 = ((x_1584 * x_1586) + x_1588);
  let x_1590 : vec4<f32> = u_xlat1;
  let x_1593 : vec4<f32> = x_44.x_MainLightColor;
  let x_1595 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.x, x_1590.x) * vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
  let x_1596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1598 : f32 = u_xlat54;
  let x_1600 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1598, x_1598, x_1598) * x_1600);
  let x_1602 : f32 = u_xlat56;
  let x_1608 : f32 = x_1606.unity_LightData.z;
  u_xlat54 = (x_1602 * x_1608);
  let x_1610 : f32 = u_xlat54;
  let x_1612 : vec4<f32> = u_xlat4;
  let x_1614 : vec3<f32> = (vec3<f32>(x_1610, x_1610, x_1610) * vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  let x_1617 : vec3<f32> = u_xlat2;
  let x_1619 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat54 = dot(x_1617, vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
  let x_1622 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1622, 0.0f, 1.0f);
  let x_1624 : f32 = u_xlat54;
  let x_1626 : vec4<f32> = u_xlat4;
  let x_1628 : vec3<f32> = (vec3<f32>(x_1624, x_1624, x_1624) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
  let x_1631 : vec4<f32> = u_xlat1;
  let x_1633 : vec4<f32> = u_xlat4;
  let x_1635 : vec3<f32> = (vec3<f32>(x_1631.y, x_1631.z, x_1631.w) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1639 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1641 : f32 = x_1606.unity_LightData.y;
  u_xlat54 = min(x_1639, x_1641);
  let x_1645 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1645));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1657 : u32 = u_xlatu_loop_1;
    let x_1658 : u32 = u_xlatu54;
    if ((x_1657 < x_1658)) {
    } else {
      break;
    }
    let x_1661 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1661 >> 2u);
    let x_1665 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1665 & 3u));
    let x_1668 : u32 = u_xlatu57;
    let x_1671 : vec4<f32> = x_1606.unity_LightIndices[bitcast<i32>(x_1668)];
    let x_1681 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1686 : vec4<u32> = indexable[x_1681];
    u_xlat57 = dot(x_1671, bitcast<vec4<f32>>(x_1686));
    let x_1690 : f32 = u_xlat57;
    u_xlati57 = i32(x_1690);
    let x_1692 : vec3<f32> = vs_TEXCOORD1;
    let x_1704 : i32 = u_xlati57;
    let x_1706 : vec4<f32> = x_1703.x_AdditionalLightsPosition[x_1704];
    let x_1709 : i32 = u_xlati57;
    let x_1711 : vec4<f32> = x_1703.x_AdditionalLightsPosition[x_1709];
    let x_1713 : vec3<f32> = ((-(x_1692) * vec3<f32>(x_1706.w, x_1706.w, x_1706.w)) + vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1717 : vec4<f32> = u_xlat6;
    let x_1719 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1717.x, x_1717.y, x_1717.z), vec3<f32>(x_1719.x, x_1719.y, x_1719.z));
    let x_1722 : f32 = u_xlat58;
    u_xlat58 = max(x_1722, 6.10351562e-05f);
    let x_1726 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1726);
    let x_1728 : f32 = u_xlat59;
    let x_1730 : vec4<f32> = u_xlat6;
    let x_1732 : vec3<f32> = (vec3<f32>(x_1728, x_1728, x_1728) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
    let x_1733 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
    let x_1735 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1735);
    let x_1737 : f32 = u_xlat58;
    let x_1738 : i32 = u_xlati57;
    let x_1740 : f32 = x_1703.x_AdditionalLightsAttenuation[x_1738].x;
    u_xlat58 = (x_1737 * x_1740);
    let x_1742 : f32 = u_xlat58;
    let x_1744 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1742) * x_1744) + 1.0f);
    let x_1747 : f32 = u_xlat58;
    u_xlat58 = max(x_1747, 0.0f);
    let x_1749 : f32 = u_xlat58;
    let x_1750 : f32 = u_xlat58;
    u_xlat58 = (x_1749 * x_1750);
    let x_1752 : f32 = u_xlat58;
    let x_1753 : f32 = u_xlat59;
    u_xlat58 = (x_1752 * x_1753);
    let x_1755 : i32 = u_xlati57;
    let x_1757 : vec4<f32> = x_1703.x_AdditionalLightsSpotDir[x_1755];
    let x_1759 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
    let x_1762 : f32 = u_xlat59;
    let x_1763 : i32 = u_xlati57;
    let x_1765 : f32 = x_1703.x_AdditionalLightsAttenuation[x_1763].z;
    let x_1767 : i32 = u_xlati57;
    let x_1769 : f32 = x_1703.x_AdditionalLightsAttenuation[x_1767].w;
    u_xlat59 = ((x_1762 * x_1765) + x_1769);
    let x_1771 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1771, 0.0f, 1.0f);
    let x_1773 : f32 = u_xlat59;
    let x_1774 : f32 = u_xlat59;
    u_xlat59 = (x_1773 * x_1774);
    let x_1776 : f32 = u_xlat58;
    let x_1777 : f32 = u_xlat59;
    u_xlat58 = (x_1776 * x_1777);
    let x_1779 : vec4<f32> = u_xlat1;
    let x_1781 : i32 = u_xlati57;
    let x_1783 : vec4<f32> = x_1703.x_AdditionalLightsColor[x_1781];
    let x_1785 : vec3<f32> = (vec3<f32>(x_1779.x, x_1779.x, x_1779.x) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
    let x_1788 : f32 = u_xlat58;
    let x_1790 : vec4<f32> = u_xlat7;
    let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
    let x_1793 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
    let x_1795 : vec3<f32> = u_xlat2;
    let x_1796 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(x_1795, vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
    let x_1799 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1799, 0.0f, 1.0f);
    let x_1801 : f32 = u_xlat57;
    let x_1803 : vec4<f32> = u_xlat7;
    let x_1805 : vec3<f32> = (vec3<f32>(x_1801, x_1801, x_1801) * vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1808 : vec4<f32> = u_xlat6;
    let x_1810 : vec4<f32> = u_xlat1;
    let x_1813 : vec4<f32> = u_xlat5;
    let x_1815 : vec3<f32> = ((vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * vec3<f32>(x_1810.y, x_1810.z, x_1810.w)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
    let x_1816 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);

    continuing {
      let x_1818 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1818 + bitcast<u32>(1i));
    }
  }
  let x_1820 : vec3<f32> = u_xlat3;
  let x_1821 : vec4<f32> = u_xlat1;
  let x_1824 : vec4<f32> = u_xlat4;
  let x_1826 : vec3<f32> = ((x_1820 * vec3<f32>(x_1821.y, x_1821.z, x_1821.w)) + vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
  let x_1827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1829 : vec4<f32> = u_xlat5;
  let x_1831 : vec4<f32> = u_xlat1;
  let x_1833 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) + vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
  let x_1834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
  let x_1836 : f32 = u_xlat18;
  let x_1837 : f32 = u_xlat18;
  u_xlat18 = (x_1836 * -(x_1837));
  let x_1840 : f32 = u_xlat18;
  u_xlat18 = exp2(x_1840);
  let x_1842 : vec4<f32> = u_xlat1;
  let x_1846 : vec4<f32> = x_44.unity_FogColor;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1842.x, x_1842.y, x_1842.z) + -(vec3<f32>(x_1846.x, x_1846.y, x_1846.z)));
  let x_1850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1854 : f32 = u_xlat18;
  let x_1856 : vec4<f32> = u_xlat1;
  let x_1860 : vec4<f32> = x_44.unity_FogColor;
  let x_1862 : vec3<f32> = ((vec3<f32>(x_1854, x_1854, x_1854) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z)) + vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1866 : f32 = x_57.x_Surface;
  u_xlatb18 = (x_1866 == 1.0f);
  let x_1868 : bool = u_xlatb18;
  let x_1869 : bool = u_xlatb36;
  u_xlatb18 = (x_1868 | x_1869);
  let x_1871 : bool = u_xlatb18;
  if (x_1871) {
    let x_1876 : f32 = u_xlat0.x;
    x_1872 = x_1876;
  } else {
    x_1872 = 1.0f;
  }
  let x_1878 : f32 = x_1872;
  SV_Target0.w = x_1878;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

