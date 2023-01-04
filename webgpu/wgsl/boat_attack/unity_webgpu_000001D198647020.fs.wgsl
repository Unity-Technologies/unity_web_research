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
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_206 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_341 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_1768 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
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
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  u_xlat2.w = 1.0f;
  let x_210 : vec4<f32> = x_206.unity_SHAr;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_206.unity_SHAg;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_206.unity_SHAb;
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_222, x_223);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_227.y, x_227.z, x_227.z, x_227.x) * vec4<f32>(x_229.x, x_229.y, x_229.z, x_229.z));
  let x_235 : vec4<f32> = x_206.unity_SHBr;
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_235, x_236);
  let x_241 : vec4<f32> = x_206.unity_SHBg;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_241, x_242);
  let x_247 : vec4<f32> = x_206.unity_SHBb;
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_247, x_248);
  let x_252 : f32 = u_xlat2.y;
  let x_254 : f32 = u_xlat2.y;
  u_xlat54 = (x_252 * x_254);
  let x_257 : f32 = u_xlat2.x;
  let x_259 : f32 = u_xlat2.x;
  let x_261 : f32 = u_xlat54;
  u_xlat54 = ((x_257 * x_259) + -(x_261));
  let x_266 : vec4<f32> = x_206.unity_SHC;
  let x_268 : f32 = u_xlat54;
  let x_271 : vec4<f32> = u_xlat5;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268, x_268, x_268)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec3<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_276 + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_280, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_285 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_286 : vec2<f32> = vec2<f32>(x_285.x, x_285.y);
  let x_290 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_286.x, x_286.y));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = hlslcc_FragCoord;
  let x_297 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) * vec2<f32>(x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
  let x_301 : f32 = u_xlat4.y;
  let x_304 : f32 = x_43.x_ScaleBiasRt.x;
  let x_307 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat54 = ((x_301 * x_304) + x_307);
  let x_309 : f32 = u_xlat54;
  u_xlat4.z = (-(x_309) + 1.0f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : f32 = x_43.x_GlobalMipBias.x;
  let x_322 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_318.x, x_318.z), x_321);
  u_xlat54 = x_322.x;
  let x_325 : f32 = u_xlat54;
  u_xlat55 = (x_325 + -1.0f);
  let x_330 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_331 : f32 = u_xlat55;
  u_xlat55 = ((x_330 * x_331) + 1.0f);
  let x_334 : f32 = u_xlat54;
  u_xlat54 = min(x_334, 1.0f);
  let x_343 : f32 = x_341.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_343);
  let x_345 : bool = u_xlatb56;
  if (x_345) {
    let x_349 : f32 = x_341.x_MainLightShadowParams.y;
    u_xlatb56 = (x_349 == 1.0f);
    let x_351 : bool = u_xlatb56;
    if (x_351) {
      let x_355 : vec4<f32> = vs_TEXCOORD6;
      let x_359 : vec4<f32> = x_341.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_355.x, x_355.y, x_355.x, x_355.y) + x_359);
      let x_362 : vec4<f32> = u_xlat4;
      let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
      let x_365 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_377 : vec3<f32> = txVec0;
      let x_379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_377.xy, x_377.z);
      u_xlat5.x = x_379;
      let x_382 : vec4<f32> = u_xlat4;
      let x_383 : vec2<f32> = vec2<f32>(x_382.z, x_382.w);
      let x_385 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_383.x, x_383.y, x_385);
      let x_392 : vec3<f32> = txVec1;
      let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_392.xy, x_392.z);
      u_xlat5.y = x_394;
      let x_396 : vec4<f32> = vs_TEXCOORD6;
      let x_400 : vec4<f32> = x_341.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_396.x, x_396.y, x_396.x, x_396.y) + x_400);
      let x_403 : vec4<f32> = u_xlat4;
      let x_404 : vec2<f32> = vec2<f32>(x_403.x, x_403.y);
      let x_406 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_404.x, x_404.y, x_406);
      let x_413 : vec3<f32> = txVec2;
      let x_415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_413.xy, x_413.z);
      u_xlat5.z = x_415;
      let x_418 : vec4<f32> = u_xlat4;
      let x_419 : vec2<f32> = vec2<f32>(x_418.z, x_418.w);
      let x_421 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_419.x, x_419.y, x_421);
      let x_428 : vec3<f32> = txVec3;
      let x_430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_428.xy, x_428.z);
      u_xlat5.w = x_430;
      let x_433 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_433, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_440 : f32 = x_341.x_MainLightShadowParams.y;
      u_xlatb57 = (x_440 == 2.0f);
      let x_443 : bool = u_xlatb57;
      if (x_443) {
        let x_446 : vec4<f32> = vs_TEXCOORD6;
        let x_449 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_453 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_449.z, x_449.w)) + vec2<f32>(0.5f, 0.5f));
        let x_454 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat4;
        let x_458 : vec2<f32> = floor(vec2<f32>(x_456.x, x_456.y));
        let x_459 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_463 : vec4<f32> = vs_TEXCOORD6;
        let x_466 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_469 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(x_466.z, x_466.w)) + -(vec2<f32>(x_469.x, x_469.y)));
        let x_473 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_473.x, x_473.x, x_473.y, x_473.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_478 : vec4<f32> = u_xlat5;
        let x_480 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_478.x, x_478.x, x_478.z, x_478.z) * vec4<f32>(x_480.x, x_480.x, x_480.z, x_480.z));
        let x_483 : vec4<f32> = u_xlat6;
        let x_487 : vec2<f32> = (vec2<f32>(x_483.y, x_483.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_488 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_487.x, x_488.y, x_487.y, x_488.w);
        let x_490 : vec4<f32> = u_xlat6;
        let x_493 : vec2<f32> = u_xlat40;
        let x_495 : vec2<f32> = ((vec2<f32>(x_490.x, x_490.z) * vec2<f32>(0.5f, 0.5f)) + -(x_493));
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_499 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_499) + vec2<f32>(1.0f, 1.0f));
        let x_503 : vec2<f32> = u_xlat40;
        let x_505 : vec2<f32> = min(x_503, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec4<f32> = u_xlat7;
        let x_511 : vec4<f32> = u_xlat7;
        let x_514 : vec2<f32> = u_xlat42;
        let x_515 : vec2<f32> = ((-(vec2<f32>(x_508.x, x_508.y)) * vec2<f32>(x_511.x, x_511.y)) + x_514);
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_518, vec2<f32>(0.0f, 0.0f));
        let x_520 : vec2<f32> = u_xlat40;
        let x_522 : vec2<f32> = u_xlat40;
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_520) * x_522) + vec2<f32>(x_524.y, x_524.w));
        let x_527 : vec4<f32> = u_xlat7;
        let x_529 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) + vec2<f32>(1.0f, 1.0f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_532 + vec2<f32>(1.0f, 1.0f));
        let x_535 : vec4<f32> = u_xlat6;
        let x_539 : vec2<f32> = (vec2<f32>(x_535.x, x_535.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_540 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec2<f32> = u_xlat42;
        let x_543 : vec2<f32> = (x_542 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_544 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat7;
        let x_548 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_552 : vec2<f32> = u_xlat40;
        let x_553 : vec2<f32> = (x_552 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_556.y, x_556.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_560 : f32 = u_xlat7.x;
        u_xlat8.z = x_560;
        let x_563 : f32 = u_xlat40.x;
        u_xlat8.w = x_563;
        let x_566 : f32 = u_xlat9.x;
        u_xlat6.z = x_566;
        let x_569 : f32 = u_xlat5.x;
        u_xlat6.w = x_569;
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_572.z, x_572.w, x_572.x, x_572.z) + vec4<f32>(x_574.z, x_574.w, x_574.x, x_574.z));
        let x_578 : f32 = u_xlat8.y;
        u_xlat7.z = x_578;
        let x_581 : f32 = u_xlat40.y;
        u_xlat7.w = x_581;
        let x_584 : f32 = u_xlat6.y;
        u_xlat9.z = x_584;
        let x_587 : f32 = u_xlat5.z;
        u_xlat9.w = x_587;
        let x_589 : vec4<f32> = u_xlat7;
        let x_591 : vec4<f32> = u_xlat9;
        let x_593 : vec3<f32> = (vec3<f32>(x_589.z, x_589.y, x_589.w) + vec3<f32>(x_591.z, x_591.y, x_591.w));
        let x_594 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec4<f32> = u_xlat10;
        let x_600 : vec3<f32> = (vec3<f32>(x_596.x, x_596.z, x_596.w) / vec3<f32>(x_598.z, x_598.w, x_598.y));
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat6;
        let x_609 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat9;
        let x_614 : vec4<f32> = u_xlat5;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.z, x_612.y, x_612.w) / vec3<f32>(x_614.x, x_614.y, x_614.z));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_621 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat6;
        let x_627 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_629 : vec3<f32> = (vec3<f32>(x_624.y, x_624.x, x_624.z) * vec3<f32>(x_627.x, x_627.x, x_627.x));
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat7;
        let x_635 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_637 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_635.y, x_635.y, x_635.y));
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
        let x_641 : f32 = u_xlat7.x;
        u_xlat6.w = x_641;
        let x_643 : vec4<f32> = u_xlat4;
        let x_646 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.y, x_649.w, x_649.x, x_649.w));
        let x_652 : vec4<f32> = u_xlat4;
        let x_655 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_652.x, x_652.y) * vec2<f32>(x_655.x, x_655.y)) + vec2<f32>(x_658.z, x_658.w));
        let x_662 : f32 = u_xlat6.y;
        u_xlat7.w = x_662;
        let x_664 : vec4<f32> = u_xlat7;
        let x_665 : vec2<f32> = vec2<f32>(x_664.y, x_664.z);
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_666.x, x_665.x, x_666.z, x_665.y);
        let x_668 : vec4<f32> = u_xlat4;
        let x_671 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) * vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y)) + vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.y));
        let x_677 : vec4<f32> = u_xlat4;
        let x_680 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y) * vec4<f32>(x_680.x, x_680.y, x_680.x, x_680.y)) + vec4<f32>(x_683.w, x_683.y, x_683.w, x_683.z));
        let x_686 : vec4<f32> = u_xlat4;
        let x_689 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_692 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y) * vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y)) + vec4<f32>(x_692.x, x_692.w, x_692.z, x_692.w));
        let x_696 : vec4<f32> = u_xlat5;
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_696.x, x_696.x, x_696.x, x_696.y) * vec4<f32>(x_698.z, x_698.w, x_698.y, x_698.z));
        let x_702 : vec4<f32> = u_xlat5;
        let x_704 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_702.y, x_702.y, x_702.z, x_702.z) * x_704);
        let x_708 : f32 = u_xlat5.z;
        let x_710 : f32 = u_xlat10.y;
        u_xlat57 = (x_708 * x_710);
        let x_713 : vec4<f32> = u_xlat8;
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_716 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec4;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
        u_xlat4.x = x_725;
        let x_728 : vec4<f32> = u_xlat8;
        let x_729 : vec2<f32> = vec2<f32>(x_728.z, x_728.w);
        let x_731 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_739 : vec3<f32> = txVec5;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat22 = x_741;
        let x_742 : f32 = u_xlat22;
        let x_744 : f32 = u_xlat11.y;
        u_xlat22 = (x_742 * x_744);
        let x_747 : f32 = u_xlat11.x;
        let x_749 : f32 = u_xlat4.x;
        let x_751 : f32 = u_xlat22;
        u_xlat4.x = ((x_747 * x_749) + x_751);
        let x_755 : vec2<f32> = u_xlat40;
        let x_757 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec6;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
        u_xlat22 = x_766;
        let x_768 : f32 = u_xlat11.z;
        let x_769 : f32 = u_xlat22;
        let x_772 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_768 * x_769) + x_772);
        let x_776 : vec4<f32> = u_xlat7;
        let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
        let x_779 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec7;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_786.xy, x_786.z);
        u_xlat22 = x_788;
        let x_790 : f32 = u_xlat11.w;
        let x_791 : f32 = u_xlat22;
        let x_794 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_790 * x_791) + x_794);
        let x_798 : vec4<f32> = u_xlat9;
        let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec8;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat22 = x_810;
        let x_812 : f32 = u_xlat12.x;
        let x_813 : f32 = u_xlat22;
        let x_816 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_812 * x_813) + x_816);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec9;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_830.xy, x_830.z);
        u_xlat22 = x_832;
        let x_834 : f32 = u_xlat12.y;
        let x_835 : f32 = u_xlat22;
        let x_838 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_834 * x_835) + x_838);
        let x_842 : vec4<f32> = u_xlat7;
        let x_843 : vec2<f32> = vec2<f32>(x_842.z, x_842.w);
        let x_845 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec10;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_852.xy, x_852.z);
        u_xlat22 = x_854;
        let x_856 : f32 = u_xlat12.z;
        let x_857 : f32 = u_xlat22;
        let x_860 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_856 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat6;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat22 = x_876;
        let x_878 : f32 = u_xlat12.w;
        let x_879 : f32 = u_xlat22;
        let x_882 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_878 * x_879) + x_882);
        let x_886 : vec4<f32> = u_xlat6;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec12;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_896.xy, x_896.z);
        u_xlat22 = x_898;
        let x_899 : f32 = u_xlat57;
        let x_900 : f32 = u_xlat22;
        let x_903 : f32 = u_xlat4.x;
        u_xlat56 = ((x_899 * x_900) + x_903);
      } else {
        let x_906 : vec4<f32> = vs_TEXCOORD6;
        let x_909 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_912 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.y) * vec2<f32>(x_909.z, x_909.w)) + vec2<f32>(0.5f, 0.5f));
        let x_913 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat4;
        let x_917 : vec2<f32> = floor(vec2<f32>(x_915.x, x_915.y));
        let x_918 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec4<f32> = vs_TEXCOORD6;
        let x_923 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_926 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_920.x, x_920.y) * vec2<f32>(x_923.z, x_923.w)) + -(vec2<f32>(x_926.x, x_926.y)));
        let x_930 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_930.x, x_930.x, x_930.y, x_930.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_933 : vec4<f32> = u_xlat5;
        let x_935 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_933.x, x_933.x, x_933.z, x_933.z) * vec4<f32>(x_935.x, x_935.x, x_935.z, x_935.z));
        let x_938 : vec4<f32> = u_xlat6;
        let x_942 : vec2<f32> = (vec2<f32>(x_938.y, x_938.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_942.x, x_943.z, x_942.y);
        let x_945 : vec4<f32> = u_xlat6;
        let x_948 : vec2<f32> = u_xlat40;
        let x_950 : vec2<f32> = ((vec2<f32>(x_945.x, x_945.z) * vec2<f32>(0.5f, 0.5f)) + -(x_948));
        let x_951 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_950.x, x_951.y, x_950.y, x_951.w);
        let x_953 : vec2<f32> = u_xlat40;
        let x_955 : vec2<f32> = (-(x_953) + vec2<f32>(1.0f, 1.0f));
        let x_956 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_958, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat42;
        let x_962 : vec2<f32> = u_xlat42;
        let x_964 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.x, x_964.y));
        let x_967 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_969, vec2<f32>(0.0f, 0.0f));
        let x_972 : vec2<f32> = u_xlat42;
        let x_974 : vec2<f32> = u_xlat42;
        let x_976 : vec4<f32> = u_xlat5;
        let x_978 : vec2<f32> = ((-(x_972) * x_974) + vec2<f32>(x_976.y, x_976.w));
        let x_979 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_978.x, x_979.y, x_978.y);
        let x_981 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = (vec2<f32>(x_981.x, x_981.y) + vec2<f32>(2.0f, 2.0f));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec3<f32> = u_xlat23;
        let x_989 : vec2<f32> = (vec2<f32>(x_987.x, x_987.z) + vec2<f32>(2.0f, 2.0f));
        let x_990 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_990.x, x_989.x, x_990.z, x_989.y);
        let x_993 : f32 = u_xlat5.y;
        u_xlat8.z = (x_993 * 0.081632003f);
        let x_997 : vec4<f32> = u_xlat5;
        let x_1000 : vec3<f32> = (vec3<f32>(x_997.z, x_997.x, x_997.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1007 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat9.y;
        u_xlat8.x = x_1010;
        let x_1012 : vec2<f32> = u_xlat40;
        let x_1019 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1020.x, x_1019.x, x_1020.z, x_1019.y);
        let x_1022 : vec2<f32> = u_xlat40;
        let x_1026 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1026.x, x_1027.y, x_1026.y, x_1027.w);
        let x_1030 : f32 = u_xlat5.x;
        u_xlat6.y = x_1030;
        let x_1033 : f32 = u_xlat7.y;
        u_xlat6.w = x_1033;
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1035 + x_1036);
        let x_1038 : vec2<f32> = u_xlat40;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1038.y, x_1038.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1041.x, x_1042.z, x_1041.y);
        let x_1044 : vec2<f32> = u_xlat40;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1044.y, x_1044.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1047.x, x_1048.y, x_1047.y, x_1048.w);
        let x_1051 : f32 = u_xlat5.y;
        u_xlat7.y = x_1051;
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1053 + x_1054);
        let x_1056 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1056 / x_1057);
        let x_1059 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1059 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1065 : vec4<f32> = u_xlat7;
        let x_1066 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1065 / x_1066);
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1068 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1073 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1070.w, x_1070.x, x_1070.y, x_1070.z) * vec4<f32>(x_1073.x, x_1073.x, x_1073.x, x_1073.x));
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1079 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1076.x, x_1076.w, x_1076.y, x_1076.z) * vec4<f32>(x_1079.y, x_1079.y, x_1079.y, x_1079.y));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1083 : vec3<f32> = vec3<f32>(x_1082.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1083.x, x_1084.y, x_1083.y, x_1083.z);
        let x_1087 : f32 = u_xlat7.x;
        u_xlat9.y = x_1087;
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat4;
        let x_1101 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1108 : f32 = u_xlat9.y;
        u_xlat6.y = x_1108;
        let x_1111 : f32 = u_xlat7.z;
        u_xlat9.y = x_1111;
        let x_1113 : vec4<f32> = u_xlat4;
        let x_1116 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y) * vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) + vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat4;
        let x_1125 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat9;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.x, x_1125.y)) + vec2<f32>(x_1128.w, x_1128.y));
        let x_1131 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1134 : f32 = u_xlat9.y;
        u_xlat6.z = x_1134;
        let x_1137 : vec4<f32> = u_xlat4;
        let x_1140 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1143 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y) * vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y)) + vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.z));
        let x_1147 : f32 = u_xlat7.w;
        u_xlat9.y = x_1147;
        let x_1150 : vec4<f32> = u_xlat4;
        let x_1153 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y) * vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y)) + vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1156.y));
        let x_1160 : vec4<f32> = u_xlat4;
        let x_1163 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.w, x_1166.y));
        let x_1170 : f32 = u_xlat9.y;
        u_xlat6.w = x_1170;
        let x_1173 : vec4<f32> = u_xlat4;
        let x_1176 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.x, x_1179.w));
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1183 : vec3<f32> = vec3<f32>(x_1182.x, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1184.y, x_1183.y, x_1183.z);
        let x_1186 : vec4<f32> = u_xlat4;
        let x_1189 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y) * vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y)) + vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1192.y));
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.w, x_1202.y));
        let x_1206 : f32 = u_xlat6.x;
        u_xlat7.x = x_1206;
        let x_1208 : vec4<f32> = u_xlat4;
        let x_1211 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1216 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1211.x, x_1211.y)) + vec2<f32>(x_1214.x, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1220 : vec4<f32> = u_xlat5;
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1220.x, x_1220.x, x_1220.x, x_1220.x) * x_1222);
        let x_1225 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1225.y, x_1225.y, x_1225.y, x_1225.y) * x_1227);
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1230.z, x_1230.z, x_1230.z, x_1230.z) * x_1232);
        let x_1234 : vec4<f32> = u_xlat5;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1234.w, x_1234.w, x_1234.w, x_1234.w) * x_1236);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.x, x_1239.y);
        let x_1242 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec13;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1249.xy, x_1249.z);
        u_xlat57 = x_1251;
        let x_1253 : vec4<f32> = u_xlat10;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.z, x_1253.w);
        let x_1256 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec14;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
        u_xlat6.x = x_1265;
        let x_1268 : f32 = u_xlat6.x;
        let x_1270 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1268 * x_1270);
        let x_1274 : f32 = u_xlat15.x;
        let x_1275 : f32 = u_xlat57;
        let x_1278 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1274 * x_1275) + x_1278);
        let x_1281 : vec2<f32> = u_xlat40;
        let x_1283 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec15;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat40.x = x_1292;
        let x_1295 : f32 = u_xlat15.z;
        let x_1297 : f32 = u_xlat40.x;
        let x_1299 : f32 = u_xlat57;
        u_xlat57 = ((x_1295 * x_1297) + x_1299);
        let x_1302 : vec4<f32> = u_xlat13;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec16;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat40.x = x_1314;
        let x_1317 : f32 = u_xlat15.w;
        let x_1319 : f32 = u_xlat40.x;
        let x_1321 : f32 = u_xlat57;
        u_xlat57 = ((x_1317 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.x, x_1324.y);
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec17;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat40.x = x_1336;
        let x_1339 : f32 = u_xlat16.x;
        let x_1341 : f32 = u_xlat40.x;
        let x_1343 : f32 = u_xlat57;
        u_xlat57 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat11;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec18;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat40.x = x_1358;
        let x_1361 : f32 = u_xlat16.y;
        let x_1363 : f32 = u_xlat40.x;
        let x_1365 : f32 = u_xlat57;
        u_xlat57 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat12;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec19;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat40.x = x_1380;
        let x_1383 : f32 = u_xlat16.z;
        let x_1385 : f32 = u_xlat40.x;
        let x_1387 : f32 = u_xlat57;
        u_xlat57 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat13;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec20;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat40.x = x_1402;
        let x_1405 : f32 = u_xlat16.w;
        let x_1407 : f32 = u_xlat40.x;
        let x_1409 : f32 = u_xlat57;
        u_xlat57 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat14;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec21;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat40.x = x_1424;
        let x_1427 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat40.x;
        let x_1431 : f32 = u_xlat57;
        u_xlat57 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec22;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat40.x = x_1446;
        let x_1449 : f32 = u_xlat17.y;
        let x_1451 : f32 = u_xlat40.x;
        let x_1453 : f32 = u_xlat57;
        u_xlat57 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec2<f32> = u_xlat24;
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec23;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat40.x = x_1467;
        let x_1470 : f32 = u_xlat17.z;
        let x_1472 : f32 = u_xlat40.x;
        let x_1474 : f32 = u_xlat57;
        u_xlat57 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec2<f32> = u_xlat48;
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec24;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat40.x = x_1488;
        let x_1491 : f32 = u_xlat17.w;
        let x_1493 : f32 = u_xlat40.x;
        let x_1495 : f32 = u_xlat57;
        u_xlat57 = ((x_1491 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat9;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.x, x_1498.y);
        let x_1501 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec25;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat40.x = x_1510;
        let x_1513 : f32 = u_xlat5.x;
        let x_1515 : f32 = u_xlat40.x;
        let x_1517 : f32 = u_xlat57;
        u_xlat57 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.z, x_1520.w);
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec26;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat40.x = x_1532;
        let x_1535 : f32 = u_xlat5.y;
        let x_1537 : f32 = u_xlat40.x;
        let x_1539 : f32 = u_xlat57;
        u_xlat57 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec2<f32> = u_xlat43;
        let x_1544 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec27;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat40.x = x_1553;
        let x_1556 : f32 = u_xlat5.z;
        let x_1558 : f32 = u_xlat40.x;
        let x_1560 : f32 = u_xlat57;
        u_xlat57 = ((x_1556 * x_1558) + x_1560);
        let x_1563 : vec4<f32> = u_xlat4;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec28;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat4.x = x_1575;
        let x_1578 : f32 = u_xlat5.w;
        let x_1580 : f32 = u_xlat4.x;
        let x_1582 : f32 = u_xlat57;
        u_xlat56 = ((x_1578 * x_1580) + x_1582);
      }
    }
  } else {
    let x_1586 : vec4<f32> = vs_TEXCOORD6;
    let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
    let x_1589 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
    let x_1596 : vec3<f32> = txVec29;
    let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
    u_xlat56 = x_1598;
  }
  let x_1600 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1600) + 1.0f);
  let x_1603 : f32 = u_xlat56;
  let x_1605 : f32 = x_341.x_MainLightShadowParams.x;
  let x_1607 : f32 = u_xlat57;
  u_xlat56 = ((x_1603 * x_1605) + x_1607);
  let x_1610 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1610);
  let x_1614 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1614 >= 1.0f);
  let x_1616 : bool = u_xlatb57;
  let x_1617 : bool = u_xlatb4;
  u_xlatb57 = (x_1616 | x_1617);
  let x_1619 : bool = u_xlatb57;
  let x_1620 : f32 = u_xlat56;
  u_xlat56 = select(x_1620, 1.0f, x_1619);
  let x_1623 : vec4<f32> = vs_TEXCOORD2;
  let x_1627 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1629 : vec3<f32> = (vec3<f32>(x_1623.x, x_1623.y, x_1623.z) + -(x_1627));
  let x_1630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1630.w);
  let x_1632 : vec4<f32> = u_xlat4;
  let x_1634 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1632.x, x_1632.y, x_1632.z), vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
  let x_1637 : f32 = u_xlat57;
  let x_1639 : f32 = x_341.x_MainLightShadowParams.z;
  let x_1642 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1637 * x_1639) + x_1642);
  let x_1644 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1644, 0.0f, 1.0f);
  let x_1646 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1646) + 1.0f);
  let x_1650 : f32 = u_xlat57;
  let x_1652 : f32 = u_xlat4.x;
  let x_1654 : f32 = u_xlat56;
  u_xlat56 = ((x_1650 * x_1652) + x_1654);
  let x_1656 : f32 = u_xlat55;
  let x_1659 : vec4<f32> = x_43.x_MainLightColor;
  let x_1661 : vec3<f32> = (vec3<f32>(x_1656, x_1656, x_1656) * vec3<f32>(x_1659.x, x_1659.y, x_1659.z));
  let x_1662 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : f32 = u_xlat54;
  let x_1666 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1664, x_1664, x_1664) * x_1666);
  let x_1668 : f32 = u_xlat56;
  let x_1670 : f32 = x_206.unity_LightData.z;
  u_xlat54 = (x_1668 * x_1670);
  let x_1672 : f32 = u_xlat54;
  let x_1674 : vec4<f32> = u_xlat4;
  let x_1676 : vec3<f32> = (vec3<f32>(x_1672, x_1672, x_1672) * vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : vec4<f32> = u_xlat2;
  let x_1683 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat54 = dot(vec3<f32>(x_1679.x, x_1679.y, x_1679.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1686, 0.0f, 1.0f);
  let x_1688 : f32 = u_xlat54;
  let x_1690 : vec4<f32> = u_xlat4;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec4<f32> = u_xlat1;
  let x_1697 : vec4<f32> = u_xlat4;
  let x_1699 : vec3<f32> = (vec3<f32>(x_1695.x, x_1695.y, x_1695.z) * vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1700 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
  let x_1703 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1705 : f32 = x_206.unity_LightData.y;
  u_xlat54 = min(x_1703, x_1705);
  let x_1709 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1709));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1721 : u32 = u_xlatu_loop_1;
    let x_1722 : u32 = u_xlatu54;
    if ((x_1721 < x_1722)) {
    } else {
      break;
    }
    let x_1725 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1725 >> 2u);
    let x_1729 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1729 & 3u));
    let x_1732 : u32 = u_xlatu57;
    let x_1735 : vec4<f32> = x_206.unity_LightIndices[bitcast<i32>(x_1732)];
    let x_1745 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1750 : vec4<u32> = indexable[x_1745];
    u_xlat57 = dot(x_1735, bitcast<vec4<f32>>(x_1750));
    let x_1754 : f32 = u_xlat57;
    u_xlati57 = i32(x_1754);
    let x_1756 : vec4<f32> = vs_TEXCOORD2;
    let x_1769 : i32 = u_xlati57;
    let x_1771 : vec4<f32> = x_1768.x_AdditionalLightsPosition[x_1769];
    let x_1774 : i32 = u_xlati57;
    let x_1776 : vec4<f32> = x_1768.x_AdditionalLightsPosition[x_1774];
    let x_1778 : vec3<f32> = ((-(vec3<f32>(x_1756.x, x_1756.y, x_1756.z)) * vec3<f32>(x_1771.w, x_1771.w, x_1771.w)) + vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
    let x_1779 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
    let x_1782 : vec4<f32> = u_xlat6;
    let x_1784 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1782.x, x_1782.y, x_1782.z), vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
    let x_1787 : f32 = u_xlat58;
    u_xlat58 = max(x_1787, 6.10351562e-05f);
    let x_1791 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1791);
    let x_1793 : f32 = u_xlat59;
    let x_1795 : vec4<f32> = u_xlat6;
    let x_1797 : vec3<f32> = (vec3<f32>(x_1793, x_1793, x_1793) * vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);
    let x_1800 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1800);
    let x_1802 : f32 = u_xlat58;
    let x_1803 : i32 = u_xlati57;
    let x_1805 : f32 = x_1768.x_AdditionalLightsAttenuation[x_1803].x;
    u_xlat58 = (x_1802 * x_1805);
    let x_1807 : f32 = u_xlat58;
    let x_1809 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1807) * x_1809) + 1.0f);
    let x_1812 : f32 = u_xlat58;
    u_xlat58 = max(x_1812, 0.0f);
    let x_1814 : f32 = u_xlat58;
    let x_1815 : f32 = u_xlat58;
    u_xlat58 = (x_1814 * x_1815);
    let x_1817 : f32 = u_xlat58;
    let x_1818 : f32 = u_xlat59;
    u_xlat58 = (x_1817 * x_1818);
    let x_1820 : i32 = u_xlati57;
    let x_1822 : vec4<f32> = x_1768.x_AdditionalLightsSpotDir[x_1820];
    let x_1824 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1822.x, x_1822.y, x_1822.z), vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
    let x_1827 : f32 = u_xlat59;
    let x_1828 : i32 = u_xlati57;
    let x_1830 : f32 = x_1768.x_AdditionalLightsAttenuation[x_1828].z;
    let x_1832 : i32 = u_xlati57;
    let x_1834 : f32 = x_1768.x_AdditionalLightsAttenuation[x_1832].w;
    u_xlat59 = ((x_1827 * x_1830) + x_1834);
    let x_1836 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1836, 0.0f, 1.0f);
    let x_1838 : f32 = u_xlat59;
    let x_1839 : f32 = u_xlat59;
    u_xlat59 = (x_1838 * x_1839);
    let x_1841 : f32 = u_xlat58;
    let x_1842 : f32 = u_xlat59;
    u_xlat58 = (x_1841 * x_1842);
    let x_1844 : f32 = u_xlat55;
    let x_1846 : i32 = u_xlati57;
    let x_1848 : vec4<f32> = x_1768.x_AdditionalLightsColor[x_1846];
    let x_1850 : vec3<f32> = (vec3<f32>(x_1844, x_1844, x_1844) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
    let x_1851 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    let x_1853 : f32 = u_xlat58;
    let x_1855 : vec4<f32> = u_xlat7;
    let x_1857 : vec3<f32> = (vec3<f32>(x_1853, x_1853, x_1853) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
    let x_1860 : vec4<f32> = u_xlat2;
    let x_1862 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1860.x, x_1860.y, x_1860.z), vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
    let x_1865 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1865, 0.0f, 1.0f);
    let x_1867 : f32 = u_xlat57;
    let x_1869 : vec4<f32> = u_xlat7;
    let x_1871 : vec3<f32> = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
    let x_1872 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
    let x_1874 : vec4<f32> = u_xlat6;
    let x_1876 : vec4<f32> = u_xlat1;
    let x_1879 : vec4<f32> = u_xlat5;
    let x_1881 : vec3<f32> = ((vec3<f32>(x_1874.x, x_1874.y, x_1874.z) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z)) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
    let x_1882 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);

    continuing {
      let x_1884 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1884 + bitcast<u32>(1i));
    }
  }
  let x_1886 : vec3<f32> = u_xlat3;
  let x_1887 : vec4<f32> = u_xlat1;
  let x_1890 : vec4<f32> = u_xlat4;
  let x_1892 : vec3<f32> = ((x_1886 * vec3<f32>(x_1887.x, x_1887.y, x_1887.z)) + vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1893 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : vec4<f32> = u_xlat5;
  let x_1897 : vec4<f32> = u_xlat1;
  let x_1899 : vec3<f32> = (vec3<f32>(x_1895.x, x_1895.y, x_1895.z) + vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
  let x_1903 : f32 = u_xlat0.x;
  let x_1905 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1903 * -(x_1905));
  let x_1910 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1910);
  let x_1913 : vec4<f32> = u_xlat1;
  let x_1917 : vec4<f32> = x_43.unity_FogColor;
  let x_1920 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + -(vec3<f32>(x_1917.x, x_1917.y, x_1917.z)));
  let x_1921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1925 : vec4<f32> = u_xlat0;
  let x_1927 : vec4<f32> = u_xlat1;
  let x_1931 : vec4<f32> = x_43.unity_FogColor;
  let x_1933 : vec3<f32> = ((vec3<f32>(x_1925.x, x_1925.x, x_1925.x) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1936 : bool = u_xlatb36;
  let x_1937 : f32 = u_xlat18;
  SV_Target0.w = select(1.0f, x_1937, x_1936);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

