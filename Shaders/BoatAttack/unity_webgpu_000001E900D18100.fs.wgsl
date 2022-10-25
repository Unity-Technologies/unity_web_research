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
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_241 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1542 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1647 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb55 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat55 : f32;
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
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
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
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat18 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat36 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat54 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat54;
  let x_99 : f32 = u_xlat36;
  u_xlat36 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat36;
  u_xlat36 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat18;
  let x_106 : f32 = u_xlat36;
  u_xlat18 = (x_105 / x_106);
  let x_108 : f32 = u_xlat18;
  u_xlat18 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat18;
  u_xlat18 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb36;
  if (x_118) {
    let x_122 : f32 = u_xlat18;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_168 : vec2<f32> = vs_TEXCOORD1;
  let x_170 : f32 = x_43.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_168, x_170);
  u_xlat3 = vec3<f32>(x_171.x, x_171.y, x_171.z);
  let x_176 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_177 : vec2<f32> = vec2<f32>(x_176.x, x_176.y);
  let x_181 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_177.x, x_177.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_182.y, x_182.z, x_181.y);
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = hlslcc_FragCoord;
  let x_189 : vec2<f32> = (vec2<f32>(x_185.x, x_185.w) * vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
  let x_194 : f32 = u_xlat4.y;
  let x_197 : f32 = x_43.x_ScaleBiasRt.x;
  let x_200 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_194 * x_197) + x_200);
  let x_204 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_204) + 1.0f);
  let x_214 : vec4<f32> = u_xlat4;
  let x_217 : f32 = x_43.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_214.x, x_214.z), x_217);
  u_xlat0.x = x_218.x;
  let x_222 : f32 = u_xlat0.x;
  u_xlat54 = (x_222 + -1.0f);
  let x_227 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_228 : f32 = u_xlat54;
  u_xlat54 = ((x_227 * x_228) + 1.0f);
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_232, 1.0f);
  let x_243 : f32 = x_241.x_MainLightShadowParams.y;
  u_xlatb55 = (0.0f < x_243);
  let x_245 : bool = u_xlatb55;
  if (x_245) {
    let x_249 : f32 = x_241.x_MainLightShadowParams.y;
    u_xlatb55 = (x_249 == 1.0f);
    let x_251 : bool = u_xlatb55;
    if (x_251) {
      let x_255 : vec4<f32> = vs_TEXCOORD6;
      let x_259 : vec4<f32> = x_241.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_255.x, x_255.y, x_255.x, x_255.y) + x_259);
      let x_262 : vec4<f32> = u_xlat4;
      let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_278 : vec3<f32> = txVec0;
      let x_280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_278.xy, x_278.z);
      u_xlat5.x = x_280;
      let x_283 : vec4<f32> = u_xlat4;
      let x_284 : vec2<f32> = vec2<f32>(x_283.z, x_283.w);
      let x_286 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_284.x, x_284.y, x_286);
      let x_293 : vec3<f32> = txVec1;
      let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_293.xy, x_293.z);
      u_xlat5.y = x_295;
      let x_297 : vec4<f32> = vs_TEXCOORD6;
      let x_301 : vec4<f32> = x_241.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_297.x, x_297.y, x_297.x, x_297.y) + x_301);
      let x_304 : vec4<f32> = u_xlat4;
      let x_305 : vec2<f32> = vec2<f32>(x_304.x, x_304.y);
      let x_307 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_305.x, x_305.y, x_307);
      let x_314 : vec3<f32> = txVec2;
      let x_316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_314.xy, x_314.z);
      u_xlat5.z = x_316;
      let x_319 : vec4<f32> = u_xlat4;
      let x_320 : vec2<f32> = vec2<f32>(x_319.z, x_319.w);
      let x_322 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_320.x, x_320.y, x_322);
      let x_329 : vec3<f32> = txVec3;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_329.xy, x_329.z);
      u_xlat5.w = x_331;
      let x_334 : vec4<f32> = u_xlat5;
      u_xlat55 = dot(x_334, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_341 : f32 = x_241.x_MainLightShadowParams.y;
      u_xlatb56 = (x_341 == 2.0f);
      let x_344 : bool = u_xlatb56;
      if (x_344) {
        let x_347 : vec4<f32> = vs_TEXCOORD6;
        let x_351 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_355 : vec2<f32> = ((vec2<f32>(x_347.x, x_347.y) * vec2<f32>(x_351.z, x_351.w)) + vec2<f32>(0.5f, 0.5f));
        let x_356 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec4<f32> = u_xlat4;
        let x_360 : vec2<f32> = floor(vec2<f32>(x_358.x, x_358.y));
        let x_361 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_361.z, x_361.w);
        let x_365 : vec4<f32> = vs_TEXCOORD6;
        let x_368 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_371 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_365.x, x_365.y) * vec2<f32>(x_368.z, x_368.w)) + -(vec2<f32>(x_371.x, x_371.y)));
        let x_375 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_375.x, x_375.x, x_375.y, x_375.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_380 : vec4<f32> = u_xlat5;
        let x_382 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_380.x, x_380.x, x_380.z, x_380.z) * vec4<f32>(x_382.x, x_382.x, x_382.z, x_382.z));
        let x_385 : vec4<f32> = u_xlat6;
        let x_389 : vec2<f32> = (vec2<f32>(x_385.y, x_385.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_390 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_389.x, x_390.y, x_389.y, x_390.w);
        let x_392 : vec4<f32> = u_xlat6;
        let x_395 : vec2<f32> = u_xlat40;
        let x_397 : vec2<f32> = ((vec2<f32>(x_392.x, x_392.z) * vec2<f32>(0.5f, 0.5f)) + -(x_395));
        let x_398 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
        let x_401 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_401) + vec2<f32>(1.0f, 1.0f));
        let x_405 : vec2<f32> = u_xlat40;
        let x_407 : vec2<f32> = min(x_405, vec2<f32>(0.0f, 0.0f));
        let x_408 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
        let x_410 : vec4<f32> = u_xlat7;
        let x_413 : vec4<f32> = u_xlat7;
        let x_416 : vec2<f32> = u_xlat42;
        let x_417 : vec2<f32> = ((-(vec2<f32>(x_410.x, x_410.y)) * vec2<f32>(x_413.x, x_413.y)) + x_416);
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_420 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_420, vec2<f32>(0.0f, 0.0f));
        let x_422 : vec2<f32> = u_xlat40;
        let x_424 : vec2<f32> = u_xlat40;
        let x_426 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_422) * x_424) + vec2<f32>(x_426.y, x_426.w));
        let x_429 : vec4<f32> = u_xlat7;
        let x_431 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) + vec2<f32>(1.0f, 1.0f));
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_434 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_434 + vec2<f32>(1.0f, 1.0f));
        let x_437 : vec4<f32> = u_xlat6;
        let x_441 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec2<f32> = u_xlat42;
        let x_445 : vec2<f32> = (x_444 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_446 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec4<f32> = u_xlat7;
        let x_450 : vec2<f32> = (vec2<f32>(x_448.x, x_448.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
        let x_454 : vec2<f32> = u_xlat40;
        let x_455 : vec2<f32> = (x_454 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_458.y, x_458.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_462 : f32 = u_xlat7.x;
        u_xlat8.z = x_462;
        let x_465 : f32 = u_xlat40.x;
        u_xlat8.w = x_465;
        let x_468 : f32 = u_xlat9.x;
        u_xlat6.z = x_468;
        let x_471 : f32 = u_xlat5.x;
        u_xlat6.w = x_471;
        let x_474 : vec4<f32> = u_xlat6;
        let x_476 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_474.z, x_474.w, x_474.x, x_474.z) + vec4<f32>(x_476.z, x_476.w, x_476.x, x_476.z));
        let x_480 : f32 = u_xlat8.y;
        u_xlat7.z = x_480;
        let x_483 : f32 = u_xlat40.y;
        u_xlat7.w = x_483;
        let x_486 : f32 = u_xlat6.y;
        u_xlat9.z = x_486;
        let x_489 : f32 = u_xlat5.z;
        u_xlat9.w = x_489;
        let x_491 : vec4<f32> = u_xlat7;
        let x_493 : vec4<f32> = u_xlat9;
        let x_495 : vec3<f32> = (vec3<f32>(x_491.z, x_491.y, x_491.w) + vec3<f32>(x_493.z, x_493.y, x_493.w));
        let x_496 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat6;
        let x_500 : vec4<f32> = u_xlat10;
        let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.z, x_498.w) / vec3<f32>(x_500.z, x_500.w, x_500.y));
        let x_503 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_511 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat9;
        let x_516 : vec4<f32> = u_xlat5;
        let x_518 : vec3<f32> = (vec3<f32>(x_514.z, x_514.y, x_514.w) / vec3<f32>(x_516.x, x_516.y, x_516.z));
        let x_519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
        let x_521 : vec4<f32> = u_xlat7;
        let x_523 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_524 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat6;
        let x_529 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_531 : vec3<f32> = (vec3<f32>(x_526.y, x_526.x, x_526.z) * vec3<f32>(x_529.x, x_529.x, x_529.x));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat7;
        let x_537 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_539 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(x_537.y, x_537.y, x_537.y));
        let x_540 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_543 : f32 = u_xlat7.x;
        u_xlat6.w = x_543;
        let x_545 : vec4<f32> = u_xlat4;
        let x_548 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_551 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y) * vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y)) + vec4<f32>(x_551.y, x_551.w, x_551.x, x_551.w));
        let x_554 : vec4<f32> = u_xlat4;
        let x_557 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_560 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(x_557.x, x_557.y)) + vec2<f32>(x_560.z, x_560.w));
        let x_564 : f32 = u_xlat6.y;
        u_xlat7.w = x_564;
        let x_566 : vec4<f32> = u_xlat7;
        let x_567 : vec2<f32> = vec2<f32>(x_566.y, x_566.z);
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_568.x, x_567.x, x_568.z, x_567.y);
        let x_570 : vec4<f32> = u_xlat4;
        let x_573 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_570.x, x_570.y, x_570.x, x_570.y) * vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y)) + vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.y));
        let x_579 : vec4<f32> = u_xlat4;
        let x_582 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y) * vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y)) + vec4<f32>(x_585.w, x_585.y, x_585.w, x_585.z));
        let x_588 : vec4<f32> = u_xlat4;
        let x_591 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y) * vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y)) + vec4<f32>(x_594.x, x_594.w, x_594.z, x_594.w));
        let x_598 : vec4<f32> = u_xlat5;
        let x_600 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_598.x, x_598.x, x_598.x, x_598.y) * vec4<f32>(x_600.z, x_600.w, x_600.y, x_600.z));
        let x_604 : vec4<f32> = u_xlat5;
        let x_606 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_604.y, x_604.y, x_604.z, x_604.z) * x_606);
        let x_610 : f32 = u_xlat5.z;
        let x_612 : f32 = u_xlat10.y;
        u_xlat56 = (x_610 * x_612);
        let x_615 : vec4<f32> = u_xlat8;
        let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
        let x_618 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_616.x, x_616.y, x_618);
        let x_626 : vec3<f32> = txVec4;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
        u_xlat57 = x_628;
        let x_630 : vec4<f32> = u_xlat8;
        let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
        let x_633 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_640 : vec3<f32> = txVec5;
        let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_640.xy, x_640.z);
        u_xlat4.x = x_642;
        let x_645 : f32 = u_xlat4.x;
        let x_647 : f32 = u_xlat11.y;
        u_xlat4.x = (x_645 * x_647);
        let x_651 : f32 = u_xlat11.x;
        let x_652 : f32 = u_xlat57;
        let x_655 : f32 = u_xlat4.x;
        u_xlat57 = ((x_651 * x_652) + x_655);
        let x_658 : vec2<f32> = u_xlat40;
        let x_660 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_658.x, x_658.y, x_660);
        let x_667 : vec3<f32> = txVec6;
        let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_667.xy, x_667.z);
        u_xlat4.x = x_669;
        let x_672 : f32 = u_xlat11.z;
        let x_674 : f32 = u_xlat4.x;
        let x_676 : f32 = u_xlat57;
        u_xlat57 = ((x_672 * x_674) + x_676);
        let x_679 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_689 : vec3<f32> = txVec7;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_689.xy, x_689.z);
        u_xlat4.x = x_691;
        let x_694 : f32 = u_xlat11.w;
        let x_696 : f32 = u_xlat4.x;
        let x_698 : f32 = u_xlat57;
        u_xlat57 = ((x_694 * x_696) + x_698);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec8;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_711.xy, x_711.z);
        u_xlat4.x = x_713;
        let x_716 : f32 = u_xlat12.x;
        let x_718 : f32 = u_xlat4.x;
        let x_720 : f32 = u_xlat57;
        u_xlat57 = ((x_716 * x_718) + x_720);
        let x_723 : vec4<f32> = u_xlat9;
        let x_724 : vec2<f32> = vec2<f32>(x_723.z, x_723.w);
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_733 : vec3<f32> = txVec9;
        let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_733.xy, x_733.z);
        u_xlat4.x = x_735;
        let x_738 : f32 = u_xlat12.y;
        let x_740 : f32 = u_xlat4.x;
        let x_742 : f32 = u_xlat57;
        u_xlat57 = ((x_738 * x_740) + x_742);
        let x_745 : vec4<f32> = u_xlat7;
        let x_746 : vec2<f32> = vec2<f32>(x_745.z, x_745.w);
        let x_748 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_746.x, x_746.y, x_748);
        let x_755 : vec3<f32> = txVec10;
        let x_757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_755.xy, x_755.z);
        u_xlat4.x = x_757;
        let x_760 : f32 = u_xlat12.z;
        let x_762 : f32 = u_xlat4.x;
        let x_764 : f32 = u_xlat57;
        u_xlat57 = ((x_760 * x_762) + x_764);
        let x_767 : vec4<f32> = u_xlat6;
        let x_768 : vec2<f32> = vec2<f32>(x_767.x, x_767.y);
        let x_770 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_768.x, x_768.y, x_770);
        let x_777 : vec3<f32> = txVec11;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_777.xy, x_777.z);
        u_xlat4.x = x_779;
        let x_782 : f32 = u_xlat12.w;
        let x_784 : f32 = u_xlat4.x;
        let x_786 : f32 = u_xlat57;
        u_xlat57 = ((x_782 * x_784) + x_786);
        let x_789 : vec4<f32> = u_xlat6;
        let x_790 : vec2<f32> = vec2<f32>(x_789.z, x_789.w);
        let x_792 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_790.x, x_790.y, x_792);
        let x_799 : vec3<f32> = txVec12;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_799.xy, x_799.z);
        u_xlat4.x = x_801;
        let x_803 : f32 = u_xlat56;
        let x_805 : f32 = u_xlat4.x;
        let x_807 : f32 = u_xlat57;
        u_xlat55 = ((x_803 * x_805) + x_807);
      } else {
        let x_810 : vec4<f32> = vs_TEXCOORD6;
        let x_813 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_816 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_813.z, x_813.w)) + vec2<f32>(0.5f, 0.5f));
        let x_817 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_819 : vec4<f32> = u_xlat4;
        let x_821 : vec2<f32> = floor(vec2<f32>(x_819.x, x_819.y));
        let x_822 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec4<f32> = vs_TEXCOORD6;
        let x_827 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_830 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(x_827.z, x_827.w)) + -(vec2<f32>(x_830.x, x_830.y)));
        let x_834 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_834.x, x_834.x, x_834.y, x_834.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_837 : vec4<f32> = u_xlat5;
        let x_839 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_837.x, x_837.x, x_837.z, x_837.z) * vec4<f32>(x_839.x, x_839.x, x_839.z, x_839.z));
        let x_842 : vec4<f32> = u_xlat6;
        let x_846 : vec2<f32> = (vec2<f32>(x_842.y, x_842.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_847 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_847.x, x_846.x, x_847.z, x_846.y);
        let x_849 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = u_xlat40;
        let x_854 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.z) * vec2<f32>(0.5f, 0.5f)) + -(x_852));
        let x_855 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_854.x, x_855.y, x_854.y, x_855.w);
        let x_857 : vec2<f32> = u_xlat40;
        let x_859 : vec2<f32> = (-(x_857) + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_862, vec2<f32>(0.0f, 0.0f));
        let x_864 : vec2<f32> = u_xlat42;
        let x_866 : vec2<f32> = u_xlat42;
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec2<f32> = ((-(x_864) * x_866) + vec2<f32>(x_868.x, x_868.y));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_873, vec2<f32>(0.0f, 0.0f));
        let x_876 : vec2<f32> = u_xlat42;
        let x_878 : vec2<f32> = u_xlat42;
        let x_880 : vec4<f32> = u_xlat5;
        let x_882 : vec2<f32> = ((-(x_876) * x_878) + vec2<f32>(x_880.y, x_880.w));
        let x_883 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_882.x, x_883.y, x_882.y);
        let x_885 : vec4<f32> = u_xlat6;
        let x_888 : vec2<f32> = (vec2<f32>(x_885.x, x_885.y) + vec2<f32>(2.0f, 2.0f));
        let x_889 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec3<f32> = u_xlat23;
        let x_893 : vec2<f32> = (vec2<f32>(x_891.x, x_891.z) + vec2<f32>(2.0f, 2.0f));
        let x_894 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_894.x, x_893.x, x_894.z, x_893.y);
        let x_897 : f32 = u_xlat5.y;
        u_xlat8.z = (x_897 * 0.081632003f);
        let x_901 : vec4<f32> = u_xlat5;
        let x_904 : vec3<f32> = (vec3<f32>(x_901.z, x_901.x, x_901.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat6;
        let x_910 : vec2<f32> = (vec2<f32>(x_907.x, x_907.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_911 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_914 : f32 = u_xlat9.y;
        u_xlat8.x = x_914;
        let x_916 : vec2<f32> = u_xlat40;
        let x_923 : vec2<f32> = ((vec2<f32>(x_916.x, x_916.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_924.x, x_923.x, x_924.z, x_923.y);
        let x_926 : vec2<f32> = u_xlat40;
        let x_930 : vec2<f32> = ((vec2<f32>(x_926.x, x_926.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_931.y, x_930.y, x_931.w);
        let x_934 : f32 = u_xlat5.x;
        u_xlat6.y = x_934;
        let x_937 : f32 = u_xlat7.y;
        u_xlat6.w = x_937;
        let x_939 : vec4<f32> = u_xlat6;
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_939 + x_940);
        let x_942 : vec2<f32> = u_xlat40;
        let x_945 : vec2<f32> = ((vec2<f32>(x_942.y, x_942.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_948 : vec2<f32> = u_xlat40;
        let x_951 : vec2<f32> = ((vec2<f32>(x_948.y, x_948.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_952 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_951.x, x_952.y, x_951.y, x_952.w);
        let x_955 : f32 = u_xlat5.y;
        u_xlat7.y = x_955;
        let x_957 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_957 + x_958);
        let x_960 : vec4<f32> = u_xlat6;
        let x_961 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_960 / x_961);
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_963 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_969 : vec4<f32> = u_xlat7;
        let x_970 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_969 / x_970);
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_972 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_974 : vec4<f32> = u_xlat6;
        let x_977 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_974.w, x_974.x, x_974.y, x_974.z) * vec4<f32>(x_977.x, x_977.x, x_977.x, x_977.x));
        let x_980 : vec4<f32> = u_xlat7;
        let x_983 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_980.x, x_980.w, x_980.y, x_980.z) * vec4<f32>(x_983.y, x_983.y, x_983.y, x_983.y));
        let x_986 : vec4<f32> = u_xlat6;
        let x_987 : vec3<f32> = vec3<f32>(x_986.y, x_986.z, x_986.w);
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_988.y, x_987.y, x_987.z);
        let x_991 : f32 = u_xlat7.x;
        u_xlat9.y = x_991;
        let x_993 : vec4<f32> = u_xlat4;
        let x_996 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y) * vec4<f32>(x_996.x, x_996.y, x_996.x, x_996.y)) + vec4<f32>(x_999.x, x_999.y, x_999.z, x_999.y));
        let x_1002 : vec4<f32> = u_xlat4;
        let x_1005 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.x, x_1005.y)) + vec2<f32>(x_1008.w, x_1008.y));
        let x_1012 : f32 = u_xlat9.y;
        u_xlat6.y = x_1012;
        let x_1015 : f32 = u_xlat7.z;
        u_xlat9.y = x_1015;
        let x_1017 : vec4<f32> = u_xlat4;
        let x_1020 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y) * vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y)) + vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1023.y));
        let x_1026 : vec4<f32> = u_xlat4;
        let x_1029 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.x, x_1029.y)) + vec2<f32>(x_1032.w, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat9.y;
        u_xlat6.z = x_1038;
        let x_1041 : vec4<f32> = u_xlat4;
        let x_1044 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.z));
        let x_1051 : f32 = u_xlat7.w;
        u_xlat9.y = x_1051;
        let x_1054 : vec4<f32> = u_xlat4;
        let x_1057 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.y));
        let x_1064 : vec4<f32> = u_xlat4;
        let x_1067 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.w, x_1070.y));
        let x_1074 : f32 = u_xlat9.y;
        u_xlat6.w = x_1074;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1080.x, x_1080.y)) + vec2<f32>(x_1083.x, x_1083.w));
        let x_1086 : vec4<f32> = u_xlat9;
        let x_1087 : vec3<f32> = vec3<f32>(x_1086.x, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1087.z);
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1093 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.y));
        let x_1100 : vec4<f32> = u_xlat4;
        let x_1103 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.w, x_1106.y));
        let x_1110 : f32 = u_xlat6.x;
        u_xlat7.x = x_1110;
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = x_241.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1120 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(x_1118.x, x_1118.y));
        let x_1121 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        let x_1124 : vec4<f32> = u_xlat5;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.x, x_1124.x) * x_1126);
        let x_1129 : vec4<f32> = u_xlat5;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1129.y, x_1129.y, x_1129.y, x_1129.y) * x_1131);
        let x_1134 : vec4<f32> = u_xlat5;
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1134.z, x_1134.z, x_1134.z, x_1134.z) * x_1136);
        let x_1138 : vec4<f32> = u_xlat5;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1138.w, x_1138.w, x_1138.w, x_1138.w) * x_1140);
        let x_1143 : vec4<f32> = u_xlat10;
        let x_1144 : vec2<f32> = vec2<f32>(x_1143.x, x_1143.y);
        let x_1146 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
        let x_1153 : vec3<f32> = txVec13;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1153.xy, x_1153.z);
        u_xlat56 = x_1155;
        let x_1157 : vec4<f32> = u_xlat10;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.z, x_1157.w);
        let x_1160 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec14;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat57 = x_1169;
        let x_1170 : f32 = u_xlat57;
        let x_1172 : f32 = u_xlat15.y;
        u_xlat57 = (x_1170 * x_1172);
        let x_1175 : f32 = u_xlat15.x;
        let x_1176 : f32 = u_xlat56;
        let x_1178 : f32 = u_xlat57;
        u_xlat56 = ((x_1175 * x_1176) + x_1178);
        let x_1181 : vec2<f32> = u_xlat40;
        let x_1183 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec15;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1190.xy, x_1190.z);
        u_xlat57 = x_1192;
        let x_1194 : f32 = u_xlat15.z;
        let x_1195 : f32 = u_xlat57;
        let x_1197 : f32 = u_xlat56;
        u_xlat56 = ((x_1194 * x_1195) + x_1197);
        let x_1200 : vec4<f32> = u_xlat13;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec16;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat57 = x_1212;
        let x_1214 : f32 = u_xlat15.w;
        let x_1215 : f32 = u_xlat57;
        let x_1217 : f32 = u_xlat56;
        u_xlat56 = ((x_1214 * x_1215) + x_1217);
        let x_1220 : vec4<f32> = u_xlat11;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.x, x_1220.y);
        let x_1223 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
        let x_1230 : vec3<f32> = txVec17;
        let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1230.xy, x_1230.z);
        u_xlat57 = x_1232;
        let x_1234 : f32 = u_xlat16.x;
        let x_1235 : f32 = u_xlat57;
        let x_1237 : f32 = u_xlat56;
        u_xlat56 = ((x_1234 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec18;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat57 = x_1252;
        let x_1254 : f32 = u_xlat16.y;
        let x_1255 : f32 = u_xlat57;
        let x_1257 : f32 = u_xlat56;
        u_xlat56 = ((x_1254 * x_1255) + x_1257);
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec19;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat57 = x_1272;
        let x_1274 : f32 = u_xlat16.z;
        let x_1275 : f32 = u_xlat57;
        let x_1277 : f32 = u_xlat56;
        u_xlat56 = ((x_1274 * x_1275) + x_1277);
        let x_1280 : vec4<f32> = u_xlat13;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec20;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat57 = x_1292;
        let x_1294 : f32 = u_xlat16.w;
        let x_1295 : f32 = u_xlat57;
        let x_1297 : f32 = u_xlat56;
        u_xlat56 = ((x_1294 * x_1295) + x_1297);
        let x_1300 : vec4<f32> = u_xlat14;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec21;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1310.xy, x_1310.z);
        u_xlat57 = x_1312;
        let x_1314 : f32 = u_xlat17.x;
        let x_1315 : f32 = u_xlat57;
        let x_1317 : f32 = u_xlat56;
        u_xlat56 = ((x_1314 * x_1315) + x_1317);
        let x_1320 : vec4<f32> = u_xlat14;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.z, x_1320.w);
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec22;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat57 = x_1332;
        let x_1334 : f32 = u_xlat17.y;
        let x_1335 : f32 = u_xlat57;
        let x_1337 : f32 = u_xlat56;
        u_xlat56 = ((x_1334 * x_1335) + x_1337);
        let x_1340 : vec2<f32> = u_xlat24;
        let x_1342 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec23;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat57 = x_1351;
        let x_1353 : f32 = u_xlat17.z;
        let x_1354 : f32 = u_xlat57;
        let x_1356 : f32 = u_xlat56;
        u_xlat56 = ((x_1353 * x_1354) + x_1356);
        let x_1359 : vec2<f32> = u_xlat48;
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec24;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat57 = x_1370;
        let x_1372 : f32 = u_xlat17.w;
        let x_1373 : f32 = u_xlat57;
        let x_1375 : f32 = u_xlat56;
        u_xlat56 = ((x_1372 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec25;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat57 = x_1390;
        let x_1392 : f32 = u_xlat5.x;
        let x_1393 : f32 = u_xlat57;
        let x_1395 : f32 = u_xlat56;
        u_xlat56 = ((x_1392 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec26;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat57 = x_1410;
        let x_1412 : f32 = u_xlat5.y;
        let x_1413 : f32 = u_xlat57;
        let x_1415 : f32 = u_xlat56;
        u_xlat56 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec2<f32> = u_xlat43;
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec27;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat57 = x_1429;
        let x_1431 : f32 = u_xlat5.z;
        let x_1432 : f32 = u_xlat57;
        let x_1434 : f32 = u_xlat56;
        u_xlat56 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat4;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec28;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat57 = x_1449;
        let x_1451 : f32 = u_xlat5.w;
        let x_1452 : f32 = u_xlat57;
        let x_1454 : f32 = u_xlat56;
        u_xlat55 = ((x_1451 * x_1452) + x_1454);
      }
    }
  } else {
    let x_1458 : vec4<f32> = vs_TEXCOORD6;
    let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
    let x_1461 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
    let x_1468 : vec3<f32> = txVec29;
    let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
    u_xlat55 = x_1470;
  }
  let x_1472 : f32 = x_241.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1472) + 1.0f);
  let x_1475 : f32 = u_xlat55;
  let x_1477 : f32 = x_241.x_MainLightShadowParams.x;
  let x_1479 : f32 = u_xlat56;
  u_xlat55 = ((x_1475 * x_1477) + x_1479);
  let x_1482 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1482);
  let x_1486 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1486 >= 1.0f);
  let x_1488 : bool = u_xlatb56;
  let x_1489 : bool = u_xlatb57;
  u_xlatb56 = (x_1488 | x_1489);
  let x_1491 : bool = u_xlatb56;
  let x_1492 : f32 = u_xlat55;
  u_xlat55 = select(x_1492, 1.0f, x_1491);
  let x_1495 : vec4<f32> = vs_TEXCOORD2;
  let x_1499 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1501 : vec3<f32> = (vec3<f32>(x_1495.x, x_1495.y, x_1495.z) + -(x_1499));
  let x_1502 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
  let x_1504 : vec4<f32> = u_xlat4;
  let x_1506 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1504.x, x_1504.y, x_1504.z), vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
  let x_1509 : f32 = u_xlat56;
  let x_1511 : f32 = x_241.x_MainLightShadowParams.z;
  let x_1514 : f32 = x_241.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1509 * x_1511) + x_1514);
  let x_1516 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1516, 0.0f, 1.0f);
  let x_1518 : f32 = u_xlat55;
  u_xlat57 = (-(x_1518) + 1.0f);
  let x_1521 : f32 = u_xlat56;
  let x_1522 : f32 = u_xlat57;
  let x_1524 : f32 = u_xlat55;
  u_xlat55 = ((x_1521 * x_1522) + x_1524);
  let x_1526 : f32 = u_xlat54;
  let x_1529 : vec4<f32> = x_43.x_MainLightColor;
  let x_1531 : vec3<f32> = (vec3<f32>(x_1526, x_1526, x_1526) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
  let x_1532 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : vec4<f32> = u_xlat0;
  let x_1536 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1534.x, x_1534.x, x_1534.x) * x_1536);
  let x_1538 : f32 = u_xlat55;
  let x_1544 : f32 = x_1542.unity_LightData.z;
  u_xlat0.x = (x_1538 * x_1544);
  let x_1547 : vec4<f32> = u_xlat0;
  let x_1549 : vec4<f32> = u_xlat4;
  let x_1551 : vec3<f32> = (vec3<f32>(x_1547.x, x_1547.x, x_1547.x) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1554 : vec3<f32> = u_xlat2;
  let x_1557 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_1554, vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1562 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1562, 0.0f, 1.0f);
  let x_1565 : vec4<f32> = u_xlat0;
  let x_1567 : vec4<f32> = u_xlat4;
  let x_1569 : vec3<f32> = (vec3<f32>(x_1565.x, x_1565.x, x_1565.x) * vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
  let x_1570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat1;
  let x_1574 : vec4<f32> = u_xlat4;
  let x_1576 : vec3<f32> = (vec3<f32>(x_1572.x, x_1572.y, x_1572.z) * vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  let x_1580 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1582 : f32 = x_1542.unity_LightData.y;
  u_xlat0.x = min(x_1580, x_1582);
  let x_1588 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1588));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1600 : u32 = u_xlatu_loop_1;
    let x_1601 : u32 = u_xlatu0;
    if ((x_1600 < x_1601)) {
    } else {
      break;
    }
    let x_1604 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1604 >> 2u);
    let x_1608 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1608 & 3u));
    let x_1611 : u32 = u_xlatu56;
    let x_1614 : vec4<f32> = x_1542.unity_LightIndices[bitcast<i32>(x_1611)];
    let x_1624 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1629 : vec4<u32> = indexable[x_1624];
    u_xlat56 = dot(x_1614, bitcast<vec4<f32>>(x_1629));
    let x_1633 : f32 = u_xlat56;
    u_xlati56 = i32(x_1633);
    let x_1635 : vec4<f32> = vs_TEXCOORD2;
    let x_1648 : i32 = u_xlati56;
    let x_1650 : vec4<f32> = x_1647.x_AdditionalLightsPosition[x_1648];
    let x_1653 : i32 = u_xlati56;
    let x_1655 : vec4<f32> = x_1647.x_AdditionalLightsPosition[x_1653];
    let x_1657 : vec3<f32> = ((-(vec3<f32>(x_1635.x, x_1635.y, x_1635.z)) * vec3<f32>(x_1650.w, x_1650.w, x_1650.w)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
    let x_1660 : vec4<f32> = u_xlat6;
    let x_1662 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : f32 = u_xlat57;
    u_xlat57 = max(x_1665, 6.10351562e-05f);
    let x_1669 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1669);
    let x_1671 : f32 = u_xlat58;
    let x_1673 : vec4<f32> = u_xlat6;
    let x_1675 : vec3<f32> = (vec3<f32>(x_1671, x_1671, x_1671) * vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
    let x_1676 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
    let x_1678 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1678);
    let x_1680 : f32 = u_xlat57;
    let x_1681 : i32 = u_xlati56;
    let x_1683 : f32 = x_1647.x_AdditionalLightsAttenuation[x_1681].x;
    u_xlat57 = (x_1680 * x_1683);
    let x_1685 : f32 = u_xlat57;
    let x_1687 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1685) * x_1687) + 1.0f);
    let x_1690 : f32 = u_xlat57;
    u_xlat57 = max(x_1690, 0.0f);
    let x_1692 : f32 = u_xlat57;
    let x_1693 : f32 = u_xlat57;
    u_xlat57 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat57;
    let x_1696 : f32 = u_xlat58;
    u_xlat57 = (x_1695 * x_1696);
    let x_1698 : i32 = u_xlati56;
    let x_1700 : vec4<f32> = x_1647.x_AdditionalLightsSpotDir[x_1698];
    let x_1702 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1700.x, x_1700.y, x_1700.z), vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
    let x_1705 : f32 = u_xlat58;
    let x_1706 : i32 = u_xlati56;
    let x_1708 : f32 = x_1647.x_AdditionalLightsAttenuation[x_1706].z;
    let x_1710 : i32 = u_xlati56;
    let x_1712 : f32 = x_1647.x_AdditionalLightsAttenuation[x_1710].w;
    u_xlat58 = ((x_1705 * x_1708) + x_1712);
    let x_1714 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1714, 0.0f, 1.0f);
    let x_1716 : f32 = u_xlat58;
    let x_1717 : f32 = u_xlat58;
    u_xlat58 = (x_1716 * x_1717);
    let x_1719 : f32 = u_xlat57;
    let x_1720 : f32 = u_xlat58;
    u_xlat57 = (x_1719 * x_1720);
    let x_1722 : f32 = u_xlat54;
    let x_1724 : i32 = u_xlati56;
    let x_1726 : vec4<f32> = x_1647.x_AdditionalLightsColor[x_1724];
    let x_1728 : vec3<f32> = (vec3<f32>(x_1722, x_1722, x_1722) * vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1729 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
    let x_1731 : f32 = u_xlat57;
    let x_1733 : vec4<f32> = u_xlat7;
    let x_1735 : vec3<f32> = (vec3<f32>(x_1731, x_1731, x_1731) * vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
    let x_1736 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
    let x_1738 : vec3<f32> = u_xlat2;
    let x_1739 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(x_1738, vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
    let x_1742 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1742, 0.0f, 1.0f);
    let x_1744 : f32 = u_xlat56;
    let x_1746 : vec4<f32> = u_xlat7;
    let x_1748 : vec3<f32> = (vec3<f32>(x_1744, x_1744, x_1744) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
    let x_1749 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
    let x_1751 : vec4<f32> = u_xlat6;
    let x_1753 : vec4<f32> = u_xlat1;
    let x_1756 : vec4<f32> = u_xlat5;
    let x_1758 : vec3<f32> = ((vec3<f32>(x_1751.x, x_1751.y, x_1751.z) * vec3<f32>(x_1753.x, x_1753.y, x_1753.z)) + vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
    let x_1759 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);

    continuing {
      let x_1761 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1761 + bitcast<u32>(1i));
    }
  }
  let x_1763 : vec3<f32> = u_xlat3;
  let x_1764 : vec4<f32> = u_xlat1;
  let x_1767 : vec4<f32> = u_xlat4;
  let x_1769 : vec3<f32> = ((x_1763 * vec3<f32>(x_1764.x, x_1764.y, x_1764.z)) + vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1774 : vec4<f32> = u_xlat5;
  let x_1776 : vec4<f32> = u_xlat1;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) + vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : bool = u_xlatb36;
  let x_1782 : f32 = u_xlat18;
  SV_Target0.w = select(1.0f, x_1782, x_1781);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

