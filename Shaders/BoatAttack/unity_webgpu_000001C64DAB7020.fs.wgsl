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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_238 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_481 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1938 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_130 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb21 : bool;
  var x_243 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb59 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat60 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
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
  var u_xlatb61 : bool;
  var u_xlatu59 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu61 : u32;
  var u_xlati62 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati61 : i32;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var x_2142 : f32;
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
  u_xlat19.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat57;
  let x_104 : f32 = u_xlat38;
  u_xlat38 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat38;
  u_xlat38 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat19.x;
  let x_112 : f32 = u_xlat38;
  u_xlat19.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat19.x;
  u_xlat19.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb38;
  if (x_129) {
    let x_134 : f32 = u_xlat19.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat19.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat19.x;
  u_xlatb19 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb19;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  let x_168 : vec3<f32> = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat2.x;
  let x_175 : f32 = u_xlat2.z;
  u_xlat2.x = (x_172 * x_175);
  let x_178 : vec4<f32> = u_xlat2;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_185.x, x_186.y, x_185.y);
  let x_188 : vec3<f32> = u_xlat19;
  let x_190 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec2<f32>(x_188.x, x_188.z), vec2<f32>(x_190.x, x_190.z));
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_195, 1.0f);
  let x_199 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_199) + 1.0f);
  let x_204 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_204);
  let x_208 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_208, 1.00000002e-16f);
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : f32 = x_43.x_DitheringTextureInvSize;
  let x_218 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_226 : vec4<f32> = u_xlat2;
  let x_229 : f32 = x_43.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat2.x = x_230.w;
  let x_240 : f32 = x_238.unity_LODFade.x;
  u_xlatb21 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb21;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_238.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat19;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  let x_279 : vec3<f32> = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec3<f32> = u_xlat19;
  let x_285 : vec4<f32> = vs_TEXCOORD3;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.x, x_282.x) * vec3<f32>(x_285.x, x_285.y, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_296.x, x_296.y, x_296.z)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat19.x = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_311 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_311);
  let x_314 : vec3<f32> = u_xlat19;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.x, x_314.x) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_323;
  let x_326 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_326;
  let x_330 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_330;
  let x_332 : vec3<f32> = u_xlat3;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat19.x = dot(x_332, x_333);
  let x_337 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_337, 1.17549435e-37f);
  let x_342 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_342);
  u_xlat2.w = 1.0f;
  let x_349 : vec4<f32> = x_238.unity_SHAr;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_238.unity_SHAg;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_238.unity_SHAb;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_361, x_362);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_366.y, x_366.z, x_366.z, x_366.x) * vec4<f32>(x_368.x, x_368.y, x_368.z, x_368.z));
  let x_374 : vec4<f32> = x_238.unity_SHBr;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_238.unity_SHBg;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_380, x_381);
  let x_386 : vec4<f32> = x_238.unity_SHBb;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_386, x_387);
  let x_391 : f32 = u_xlat2.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat57 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.x;
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat57;
  u_xlat57 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_238.unity_SHC;
  let x_407 : f32 = u_xlat57;
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec3<f32> = u_xlat4;
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_415 + vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_419, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_424 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_425 : vec2<f32> = vec2<f32>(x_424.x, x_424.y);
  let x_429 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_425.x, x_425.y));
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat5;
  let x_434 : vec4<f32> = hlslcc_FragCoord;
  let x_436 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_434.x, x_434.y));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_440 : f32 = u_xlat5.y;
  let x_443 : f32 = x_43.x_ScaleBiasRt.x;
  let x_446 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_440 * x_443) + x_446);
  let x_448 : f32 = u_xlat57;
  u_xlat5.z = (-(x_448) + 1.0f);
  let x_457 : vec4<f32> = u_xlat5;
  let x_460 : f32 = x_43.x_GlobalMipBias.x;
  let x_461 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_457.x, x_457.z), x_460);
  u_xlat57 = x_461.x;
  let x_463 : f32 = u_xlat57;
  u_xlat1.x = (x_463 + -1.0f);
  let x_468 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_470 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_468 * x_470) + 1.0f);
  let x_474 : f32 = u_xlat57;
  u_xlat57 = min(x_474, 1.0f);
  let x_483 : f32 = x_481.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_483);
  let x_485 : bool = u_xlatb59;
  if (x_485) {
    let x_489 : f32 = x_481.x_MainLightShadowParams.y;
    u_xlatb59 = (x_489 == 1.0f);
    let x_491 : bool = u_xlatb59;
    if (x_491) {
      let x_495 : vec4<f32> = vs_TEXCOORD6;
      let x_499 : vec4<f32> = x_481.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_495.x, x_495.y, x_495.x, x_495.y) + x_499);
      let x_502 : vec4<f32> = u_xlat5;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_517 : vec3<f32> = txVec0;
      let x_519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_517.xy, x_517.z);
      u_xlat6.x = x_519;
      let x_522 : vec4<f32> = u_xlat5;
      let x_523 : vec2<f32> = vec2<f32>(x_522.z, x_522.w);
      let x_525 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_523.x, x_523.y, x_525);
      let x_532 : vec3<f32> = txVec1;
      let x_534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_532.xy, x_532.z);
      u_xlat6.y = x_534;
      let x_536 : vec4<f32> = vs_TEXCOORD6;
      let x_540 : vec4<f32> = x_481.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_536.x, x_536.y, x_536.x, x_536.y) + x_540);
      let x_543 : vec4<f32> = u_xlat5;
      let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
      let x_546 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_544.x, x_544.y, x_546);
      let x_553 : vec3<f32> = txVec2;
      let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
      u_xlat6.z = x_555;
      let x_558 : vec4<f32> = u_xlat5;
      let x_559 : vec2<f32> = vec2<f32>(x_558.z, x_558.w);
      let x_561 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_559.x, x_559.y, x_561);
      let x_568 : vec3<f32> = txVec3;
      let x_570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_568.xy, x_568.z);
      u_xlat6.w = x_570;
      let x_573 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_573, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_580 : f32 = x_481.x_MainLightShadowParams.y;
      u_xlatb60 = (x_580 == 2.0f);
      let x_582 : bool = u_xlatb60;
      if (x_582) {
        let x_585 : vec4<f32> = vs_TEXCOORD6;
        let x_588 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_592 : vec2<f32> = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_588.z, x_588.w)) + vec2<f32>(0.5f, 0.5f));
        let x_593 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat5;
        let x_597 : vec2<f32> = floor(vec2<f32>(x_595.x, x_595.y));
        let x_598 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_602 : vec4<f32> = vs_TEXCOORD6;
        let x_605 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_605.z, x_605.w)) + -(vec2<f32>(x_608.x, x_608.y)));
        let x_612 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_612.x, x_612.x, x_612.y, x_612.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_617 : vec4<f32> = u_xlat6;
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_617.x, x_617.x, x_617.z, x_617.z) * vec4<f32>(x_619.x, x_619.x, x_619.z, x_619.z));
        let x_622 : vec4<f32> = u_xlat7;
        let x_626 : vec2<f32> = (vec2<f32>(x_622.y, x_622.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_627 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_626.x, x_627.y, x_626.y, x_627.w);
        let x_629 : vec4<f32> = u_xlat7;
        let x_632 : vec2<f32> = u_xlat43;
        let x_634 : vec2<f32> = ((vec2<f32>(x_629.x, x_629.z) * vec2<f32>(0.5f, 0.5f)) + -(x_632));
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
        let x_638 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_638) + vec2<f32>(1.0f, 1.0f));
        let x_642 : vec2<f32> = u_xlat43;
        let x_644 : vec2<f32> = min(x_642, vec2<f32>(0.0f, 0.0f));
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat8;
        let x_650 : vec4<f32> = u_xlat8;
        let x_653 : vec2<f32> = u_xlat45;
        let x_654 : vec2<f32> = ((-(vec2<f32>(x_647.x, x_647.y)) * vec2<f32>(x_650.x, x_650.y)) + x_653);
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_657, vec2<f32>(0.0f, 0.0f));
        let x_659 : vec2<f32> = u_xlat43;
        let x_661 : vec2<f32> = u_xlat43;
        let x_663 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_659) * x_661) + vec2<f32>(x_663.y, x_663.w));
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) + vec2<f32>(1.0f, 1.0f));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_671 + vec2<f32>(1.0f, 1.0f));
        let x_674 : vec4<f32> = u_xlat7;
        let x_678 : vec2<f32> = (vec2<f32>(x_674.x, x_674.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_679 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec2<f32> = u_xlat45;
        let x_682 : vec2<f32> = (x_681 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_691 : vec2<f32> = u_xlat43;
        let x_692 : vec2<f32> = (x_691 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_693 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_695.y, x_695.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_699 : f32 = u_xlat8.x;
        u_xlat9.z = x_699;
        let x_702 : f32 = u_xlat43.x;
        u_xlat9.w = x_702;
        let x_705 : f32 = u_xlat10.x;
        u_xlat7.z = x_705;
        let x_708 : f32 = u_xlat6.x;
        u_xlat7.w = x_708;
        let x_711 : vec4<f32> = u_xlat7;
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_711.z, x_711.w, x_711.x, x_711.z) + vec4<f32>(x_713.z, x_713.w, x_713.x, x_713.z));
        let x_717 : f32 = u_xlat9.y;
        u_xlat8.z = x_717;
        let x_720 : f32 = u_xlat43.y;
        u_xlat8.w = x_720;
        let x_723 : f32 = u_xlat7.y;
        u_xlat10.z = x_723;
        let x_726 : f32 = u_xlat6.z;
        u_xlat10.w = x_726;
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec4<f32> = u_xlat10;
        let x_732 : vec3<f32> = (vec3<f32>(x_728.z, x_728.y, x_728.w) + vec3<f32>(x_730.z, x_730.y, x_730.w));
        let x_733 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat7;
        let x_737 : vec4<f32> = u_xlat11;
        let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.z, x_735.w) / vec3<f32>(x_737.z, x_737.w, x_737.y));
        let x_740 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat7;
        let x_748 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
        let x_751 : vec4<f32> = u_xlat10;
        let x_753 : vec4<f32> = u_xlat6;
        let x_755 : vec3<f32> = (vec3<f32>(x_751.z, x_751.y, x_751.w) / vec3<f32>(x_753.x, x_753.y, x_753.z));
        let x_756 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_758 : vec4<f32> = u_xlat8;
        let x_760 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat7;
        let x_766 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_768 : vec3<f32> = (vec3<f32>(x_763.y, x_763.x, x_763.z) * vec3<f32>(x_766.x, x_766.x, x_766.x));
        let x_769 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat8;
        let x_774 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_776 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_774.y, x_774.y, x_774.y));
        let x_777 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_780 : f32 = u_xlat8.x;
        u_xlat7.w = x_780;
        let x_782 : vec4<f32> = u_xlat5;
        let x_785 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) * vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y)) + vec4<f32>(x_788.y, x_788.w, x_788.x, x_788.w));
        let x_791 : vec4<f32> = u_xlat5;
        let x_794 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_797 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_794.x, x_794.y)) + vec2<f32>(x_797.z, x_797.w));
        let x_801 : f32 = u_xlat7.y;
        u_xlat8.w = x_801;
        let x_803 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = vec2<f32>(x_803.y, x_803.z);
        let x_805 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_805.x, x_804.x, x_805.z, x_804.y);
        let x_807 : vec4<f32> = u_xlat5;
        let x_810 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_813 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y) * vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y)) + vec4<f32>(x_813.x, x_813.y, x_813.z, x_813.y));
        let x_816 : vec4<f32> = u_xlat5;
        let x_819 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_822 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) * vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y)) + vec4<f32>(x_822.w, x_822.y, x_822.w, x_822.z));
        let x_825 : vec4<f32> = u_xlat5;
        let x_828 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.x, x_831.w, x_831.z, x_831.w));
        let x_835 : vec4<f32> = u_xlat6;
        let x_837 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_835.x, x_835.x, x_835.x, x_835.y) * vec4<f32>(x_837.z, x_837.w, x_837.y, x_837.z));
        let x_841 : vec4<f32> = u_xlat6;
        let x_843 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_841.y, x_841.y, x_841.z, x_841.z) * x_843);
        let x_847 : f32 = u_xlat6.z;
        let x_849 : f32 = u_xlat11.y;
        u_xlat60 = (x_847 * x_849);
        let x_852 : vec4<f32> = u_xlat9;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_863 : vec3<f32> = txVec4;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_863.xy, x_863.z);
        u_xlat61 = x_865;
        let x_867 : vec4<f32> = u_xlat9;
        let x_868 : vec2<f32> = vec2<f32>(x_867.z, x_867.w);
        let x_870 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec5;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_877.xy, x_877.z);
        u_xlat5.x = x_879;
        let x_882 : f32 = u_xlat5.x;
        let x_884 : f32 = u_xlat12.y;
        u_xlat5.x = (x_882 * x_884);
        let x_888 : f32 = u_xlat12.x;
        let x_889 : f32 = u_xlat61;
        let x_892 : f32 = u_xlat5.x;
        u_xlat61 = ((x_888 * x_889) + x_892);
        let x_895 : vec2<f32> = u_xlat43;
        let x_897 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_895.x, x_895.y, x_897);
        let x_904 : vec3<f32> = txVec6;
        let x_906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_904.xy, x_904.z);
        u_xlat5.x = x_906;
        let x_909 : f32 = u_xlat12.z;
        let x_911 : f32 = u_xlat5.x;
        let x_913 : f32 = u_xlat61;
        u_xlat61 = ((x_909 * x_911) + x_913);
        let x_916 : vec4<f32> = u_xlat8;
        let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.y);
        let x_919 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec7;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_926.xy, x_926.z);
        u_xlat5.x = x_928;
        let x_931 : f32 = u_xlat12.w;
        let x_933 : f32 = u_xlat5.x;
        let x_935 : f32 = u_xlat61;
        u_xlat61 = ((x_931 * x_933) + x_935);
        let x_938 : vec4<f32> = u_xlat10;
        let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
        let x_941 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec8;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat5.x = x_950;
        let x_953 : f32 = u_xlat13.x;
        let x_955 : f32 = u_xlat5.x;
        let x_957 : f32 = u_xlat61;
        u_xlat61 = ((x_953 * x_955) + x_957);
        let x_960 : vec4<f32> = u_xlat10;
        let x_961 : vec2<f32> = vec2<f32>(x_960.z, x_960.w);
        let x_963 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec9;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_970.xy, x_970.z);
        u_xlat5.x = x_972;
        let x_975 : f32 = u_xlat13.y;
        let x_977 : f32 = u_xlat5.x;
        let x_979 : f32 = u_xlat61;
        u_xlat61 = ((x_975 * x_977) + x_979);
        let x_982 : vec4<f32> = u_xlat8;
        let x_983 : vec2<f32> = vec2<f32>(x_982.z, x_982.w);
        let x_985 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec10;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_992.xy, x_992.z);
        u_xlat5.x = x_994;
        let x_997 : f32 = u_xlat13.z;
        let x_999 : f32 = u_xlat5.x;
        let x_1001 : f32 = u_xlat61;
        u_xlat61 = ((x_997 * x_999) + x_1001);
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.x, x_1004.y);
        let x_1007 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec11;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1014.xy, x_1014.z);
        u_xlat5.x = x_1016;
        let x_1019 : f32 = u_xlat13.w;
        let x_1021 : f32 = u_xlat5.x;
        let x_1023 : f32 = u_xlat61;
        u_xlat61 = ((x_1019 * x_1021) + x_1023);
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.z, x_1026.w);
        let x_1029 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec12;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1036.xy, x_1036.z);
        u_xlat5.x = x_1038;
        let x_1040 : f32 = u_xlat60;
        let x_1042 : f32 = u_xlat5.x;
        let x_1044 : f32 = u_xlat61;
        u_xlat59 = ((x_1040 * x_1042) + x_1044);
      } else {
        let x_1047 : vec4<f32> = vs_TEXCOORD6;
        let x_1050 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1053 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.z, x_1050.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat5;
        let x_1058 : vec2<f32> = floor(vec2<f32>(x_1056.x, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec4<f32> = vs_TEXCOORD6;
        let x_1064 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + -(vec2<f32>(x_1067.x, x_1067.y)));
        let x_1071 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1071.x, x_1071.x, x_1071.y, x_1071.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1074.x, x_1074.x, x_1074.z, x_1074.z) * vec4<f32>(x_1076.x, x_1076.x, x_1076.z, x_1076.z));
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1083 : vec2<f32> = (vec2<f32>(x_1079.y, x_1079.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1083.x, x_1084.z, x_1083.y);
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1089 : vec2<f32> = u_xlat43;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1086.x, x_1086.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1089));
        let x_1092 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1092.w);
        let x_1094 : vec2<f32> = u_xlat43;
        let x_1096 : vec2<f32> = (-(x_1094) + vec2<f32>(1.0f, 1.0f));
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1099, vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec2<f32> = u_xlat45;
        let x_1103 : vec2<f32> = u_xlat45;
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1107 : vec2<f32> = ((-(x_1101) * x_1103) + vec2<f32>(x_1105.x, x_1105.y));
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1110, vec2<f32>(0.0f, 0.0f));
        let x_1113 : vec2<f32> = u_xlat45;
        let x_1115 : vec2<f32> = u_xlat45;
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1119 : vec2<f32> = ((-(x_1113) * x_1115) + vec2<f32>(x_1117.y, x_1117.w));
        let x_1120 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1119.x, x_1120.y, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) + vec2<f32>(2.0f, 2.0f));
        let x_1125 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec3<f32> = u_xlat25;
        let x_1129 : vec2<f32> = (vec2<f32>(x_1127.x, x_1127.z) + vec2<f32>(2.0f, 2.0f));
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1133 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1133 * 0.081632003f);
        let x_1137 : vec4<f32> = u_xlat6;
        let x_1140 : vec3<f32> = (vec3<f32>(x_1137.z, x_1137.x, x_1137.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1150 : f32 = u_xlat10.y;
        u_xlat9.x = x_1150;
        let x_1152 : vec2<f32> = u_xlat43;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1152.x, x_1152.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1159.x, x_1160.z, x_1159.y);
        let x_1162 : vec2<f32> = u_xlat43;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1170 : f32 = u_xlat6.x;
        u_xlat7.y = x_1170;
        let x_1173 : f32 = u_xlat8.y;
        u_xlat7.w = x_1173;
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1175 + x_1176);
        let x_1178 : vec2<f32> = u_xlat43;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1182.x, x_1181.x, x_1182.z, x_1181.y);
        let x_1184 : vec2<f32> = u_xlat43;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1184.y, x_1184.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1188.w);
        let x_1191 : f32 = u_xlat6.y;
        u_xlat8.y = x_1191;
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1194 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1193 + x_1194);
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1196 / x_1197);
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1199 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1206 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1205 / x_1206);
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1208 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1213 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1210.w, x_1210.x, x_1210.y, x_1210.z) * vec4<f32>(x_1213.x, x_1213.x, x_1213.x, x_1213.x));
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1219 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1216.x, x_1216.w, x_1216.y, x_1216.z) * vec4<f32>(x_1219.y, x_1219.y, x_1219.y, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1223 : vec3<f32> = vec3<f32>(x_1222.y, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1223.z);
        let x_1227 : f32 = u_xlat8.x;
        u_xlat10.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1248 : f32 = u_xlat10.y;
        u_xlat7.y = x_1248;
        let x_1251 : f32 = u_xlat8.z;
        u_xlat10.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat5;
        let x_1265 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat10;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1271 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1274 : f32 = u_xlat10.y;
        u_xlat7.z = x_1274;
        let x_1277 : vec4<f32> = u_xlat5;
        let x_1280 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.z));
        let x_1287 : f32 = u_xlat8.w;
        u_xlat10.y = x_1287;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1303 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.w, x_1306.y));
        let x_1310 : f32 = u_xlat10.y;
        u_xlat7.w = x_1310;
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.w));
        let x_1322 : vec4<f32> = u_xlat10;
        let x_1323 : vec3<f32> = vec3<f32>(x_1322.x, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1323.z);
        let x_1326 : vec4<f32> = u_xlat5;
        let x_1329 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1332.y));
        let x_1336 : vec4<f32> = u_xlat5;
        let x_1339 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.w, x_1342.y));
        let x_1346 : f32 = u_xlat7.x;
        u_xlat8.x = x_1346;
        let x_1348 : vec4<f32> = u_xlat5;
        let x_1351 : vec4<f32> = x_481.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat8;
        let x_1356 : vec2<f32> = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.x, x_1354.y));
        let x_1357 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1360.x, x_1360.x, x_1360.x, x_1360.x) * x_1362);
        let x_1365 : vec4<f32> = u_xlat6;
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1365.y, x_1365.y, x_1365.y, x_1365.y) * x_1367);
        let x_1370 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1370.z, x_1370.z, x_1370.z, x_1370.z) * x_1372);
        let x_1374 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1374.w, x_1374.w, x_1374.w, x_1374.w) * x_1376);
        let x_1379 : vec4<f32> = u_xlat11;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec13;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat60 = x_1391;
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec14;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat61 = x_1405;
        let x_1406 : f32 = u_xlat61;
        let x_1408 : f32 = u_xlat16.y;
        u_xlat61 = (x_1406 * x_1408);
        let x_1411 : f32 = u_xlat16.x;
        let x_1412 : f32 = u_xlat60;
        let x_1414 : f32 = u_xlat61;
        u_xlat60 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec2<f32> = u_xlat43;
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec15;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1426.xy, x_1426.z);
        u_xlat61 = x_1428;
        let x_1430 : f32 = u_xlat16.z;
        let x_1431 : f32 = u_xlat61;
        let x_1433 : f32 = u_xlat60;
        u_xlat60 = ((x_1430 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat14;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec16;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat61 = x_1448;
        let x_1450 : f32 = u_xlat16.w;
        let x_1451 : f32 = u_xlat61;
        let x_1453 : f32 = u_xlat60;
        u_xlat60 = ((x_1450 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec17;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat61 = x_1468;
        let x_1470 : f32 = u_xlat17.x;
        let x_1471 : f32 = u_xlat61;
        let x_1473 : f32 = u_xlat60;
        u_xlat60 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat12;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec18;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat61 = x_1488;
        let x_1490 : f32 = u_xlat17.y;
        let x_1491 : f32 = u_xlat61;
        let x_1493 : f32 = u_xlat60;
        u_xlat60 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat13;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.x, x_1496.y);
        let x_1499 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec19;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat61 = x_1508;
        let x_1510 : f32 = u_xlat17.z;
        let x_1511 : f32 = u_xlat61;
        let x_1513 : f32 = u_xlat60;
        u_xlat60 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat14;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec20;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat61 = x_1528;
        let x_1530 : f32 = u_xlat17.w;
        let x_1531 : f32 = u_xlat61;
        let x_1533 : f32 = u_xlat60;
        u_xlat60 = ((x_1530 * x_1531) + x_1533);
        let x_1536 : vec4<f32> = u_xlat15;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec21;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat61 = x_1548;
        let x_1550 : f32 = u_xlat18.x;
        let x_1551 : f32 = u_xlat61;
        let x_1553 : f32 = u_xlat60;
        u_xlat60 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat15;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.z, x_1556.w);
        let x_1559 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec22;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1566.xy, x_1566.z);
        u_xlat61 = x_1568;
        let x_1570 : f32 = u_xlat18.y;
        let x_1571 : f32 = u_xlat61;
        let x_1573 : f32 = u_xlat60;
        u_xlat60 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec2<f32> = u_xlat26;
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec23;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat61 = x_1587;
        let x_1589 : f32 = u_xlat18.z;
        let x_1590 : f32 = u_xlat61;
        let x_1592 : f32 = u_xlat60;
        u_xlat60 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec2<f32> = u_xlat51;
        let x_1597 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec24;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1604.xy, x_1604.z);
        u_xlat61 = x_1606;
        let x_1608 : f32 = u_xlat18.w;
        let x_1609 : f32 = u_xlat61;
        let x_1611 : f32 = u_xlat60;
        u_xlat60 = ((x_1608 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec25;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat61 = x_1626;
        let x_1628 : f32 = u_xlat6.x;
        let x_1629 : f32 = u_xlat61;
        let x_1631 : f32 = u_xlat60;
        u_xlat60 = ((x_1628 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat10;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.z, x_1634.w);
        let x_1637 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec26;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat61 = x_1646;
        let x_1648 : f32 = u_xlat6.y;
        let x_1649 : f32 = u_xlat61;
        let x_1651 : f32 = u_xlat60;
        u_xlat60 = ((x_1648 * x_1649) + x_1651);
        let x_1654 : vec2<f32> = u_xlat46;
        let x_1656 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec27;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat61 = x_1665;
        let x_1667 : f32 = u_xlat6.z;
        let x_1668 : f32 = u_xlat61;
        let x_1670 : f32 = u_xlat60;
        u_xlat60 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat5;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec28;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat61 = x_1685;
        let x_1687 : f32 = u_xlat6.w;
        let x_1688 : f32 = u_xlat61;
        let x_1690 : f32 = u_xlat60;
        u_xlat59 = ((x_1687 * x_1688) + x_1690);
      }
    }
  } else {
    let x_1694 : vec4<f32> = vs_TEXCOORD6;
    let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
    let x_1697 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
    let x_1704 : vec3<f32> = txVec29;
    let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1704.xy, x_1704.z);
    u_xlat59 = x_1706;
  }
  let x_1708 : f32 = x_481.x_MainLightShadowParams.x;
  u_xlat60 = (-(x_1708) + 1.0f);
  let x_1711 : f32 = u_xlat59;
  let x_1713 : f32 = x_481.x_MainLightShadowParams.x;
  let x_1715 : f32 = u_xlat60;
  u_xlat59 = ((x_1711 * x_1713) + x_1715);
  let x_1718 : f32 = vs_TEXCOORD6.z;
  u_xlatb60 = (0.0f >= x_1718);
  let x_1722 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1722 >= 1.0f);
  let x_1724 : bool = u_xlatb60;
  let x_1725 : bool = u_xlatb61;
  u_xlatb60 = (x_1724 | x_1725);
  let x_1727 : bool = u_xlatb60;
  let x_1728 : f32 = u_xlat59;
  u_xlat59 = select(x_1728, 1.0f, x_1727);
  let x_1732 : vec3<f32> = vs_TEXCOORD1;
  let x_1735 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1737 : vec3<f32> = (x_1732 + -(x_1735));
  let x_1738 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
  let x_1740 : vec4<f32> = u_xlat5;
  let x_1742 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(vec3<f32>(x_1740.x, x_1740.y, x_1740.z), vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
  let x_1745 : f32 = u_xlat60;
  let x_1747 : f32 = x_481.x_MainLightShadowParams.z;
  let x_1750 : f32 = x_481.x_MainLightShadowParams.w;
  u_xlat60 = ((x_1745 * x_1747) + x_1750);
  let x_1752 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1752, 0.0f, 1.0f);
  let x_1754 : f32 = u_xlat59;
  u_xlat61 = (-(x_1754) + 1.0f);
  let x_1757 : f32 = u_xlat60;
  let x_1758 : f32 = u_xlat61;
  let x_1760 : f32 = u_xlat59;
  u_xlat59 = ((x_1757 * x_1758) + x_1760);
  let x_1762 : vec4<f32> = u_xlat1;
  let x_1765 : vec4<f32> = x_43.x_MainLightColor;
  let x_1767 : vec3<f32> = (vec3<f32>(x_1762.x, x_1762.x, x_1762.x) * vec3<f32>(x_1765.x, x_1765.y, x_1765.z));
  let x_1768 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
  let x_1770 : f32 = u_xlat57;
  let x_1772 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_1770, x_1770, x_1770) * x_1772);
  let x_1774 : f32 = u_xlat59;
  let x_1776 : f32 = x_238.unity_LightData.z;
  u_xlat57 = (x_1774 * x_1776);
  let x_1778 : f32 = u_xlat57;
  let x_1780 : vec4<f32> = u_xlat5;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1778, x_1778, x_1778) * vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1785 : vec4<f32> = u_xlat2;
  let x_1789 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(vec3<f32>(x_1785.x, x_1785.y, x_1785.z), vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1792 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1792, 0.0f, 1.0f);
  let x_1794 : f32 = u_xlat57;
  let x_1796 : vec4<f32> = u_xlat5;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1794, x_1794, x_1794) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1802 : f32 = x_56.x_SpecColor.w;
  u_xlat57 = ((x_1802 * 10.0f) + 1.0f);
  let x_1806 : f32 = u_xlat57;
  u_xlat57 = exp2(x_1806);
  let x_1808 : vec3<f32> = u_xlat3;
  let x_1809 : vec3<f32> = u_xlat19;
  let x_1813 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1815 : vec3<f32> = ((x_1808 * vec3<f32>(x_1809.x, x_1809.x, x_1809.x)) + vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec4<f32> = u_xlat7;
  let x_1820 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1818.x, x_1818.y, x_1818.z), vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1823 : f32 = u_xlat59;
  u_xlat59 = max(x_1823, 1.17549435e-37f);
  let x_1825 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_1825);
  let x_1827 : f32 = u_xlat59;
  let x_1829 : vec4<f32> = u_xlat7;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : vec4<f32> = u_xlat2;
  let x_1836 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1834.x, x_1834.y, x_1834.z), vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1839, 0.0f, 1.0f);
  let x_1841 : f32 = u_xlat59;
  u_xlat59 = log2(x_1841);
  let x_1843 : f32 = u_xlat57;
  let x_1844 : f32 = u_xlat59;
  u_xlat59 = (x_1843 * x_1844);
  let x_1846 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1846);
  let x_1848 : f32 = u_xlat59;
  let x_1851 : vec4<f32> = x_56.x_SpecColor;
  let x_1853 : vec3<f32> = (vec3<f32>(x_1848, x_1848, x_1848) * vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
  let x_1854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
  let x_1856 : vec4<f32> = u_xlat5;
  let x_1858 : vec4<f32> = u_xlat7;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.y, x_1856.z) * vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : vec4<f32> = u_xlat6;
  let x_1865 : vec4<f32> = u_xlat1;
  let x_1868 : vec4<f32> = u_xlat5;
  let x_1870 : vec3<f32> = ((vec3<f32>(x_1863.x, x_1863.y, x_1863.z) * vec3<f32>(x_1865.y, x_1865.z, x_1865.w)) + vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1874 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1876 : f32 = x_238.unity_LightData.y;
  u_xlat59 = min(x_1874, x_1876);
  let x_1880 : f32 = u_xlat59;
  u_xlatu59 = bitcast<u32>(i32(x_1880));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1892 : u32 = u_xlatu_loop_1;
    let x_1893 : u32 = u_xlatu59;
    if ((x_1892 < x_1893)) {
    } else {
      break;
    }
    let x_1896 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1896 >> 2u);
    let x_1900 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1900 & 3u));
    let x_1903 : u32 = u_xlatu61;
    let x_1906 : vec4<f32> = x_238.unity_LightIndices[bitcast<i32>(x_1903)];
    let x_1916 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1921 : vec4<u32> = indexable[x_1916];
    u_xlat61 = dot(x_1906, bitcast<vec4<f32>>(x_1921));
    let x_1925 : f32 = u_xlat61;
    u_xlati61 = i32(x_1925);
    let x_1927 : vec3<f32> = vs_TEXCOORD1;
    let x_1939 : i32 = u_xlati61;
    let x_1941 : vec4<f32> = x_1938.x_AdditionalLightsPosition[x_1939];
    let x_1944 : i32 = u_xlati61;
    let x_1946 : vec4<f32> = x_1938.x_AdditionalLightsPosition[x_1944];
    let x_1948 : vec3<f32> = ((-(x_1927) * vec3<f32>(x_1941.w, x_1941.w, x_1941.w)) + vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1952 : vec4<f32> = u_xlat7;
    let x_1954 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_1952.x, x_1952.y, x_1952.z), vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
    let x_1957 : f32 = u_xlat62;
    u_xlat62 = max(x_1957, 6.10351562e-05f);
    let x_1961 : f32 = u_xlat62;
    u_xlat63 = inverseSqrt(x_1961);
    let x_1963 : f32 = u_xlat63;
    let x_1965 : vec4<f32> = u_xlat7;
    let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : f32 = u_xlat62;
    u_xlat63 = (1.0f / x_1970);
    let x_1972 : f32 = u_xlat62;
    let x_1973 : i32 = u_xlati61;
    let x_1975 : f32 = x_1938.x_AdditionalLightsAttenuation[x_1973].x;
    u_xlat62 = (x_1972 * x_1975);
    let x_1977 : f32 = u_xlat62;
    let x_1979 : f32 = u_xlat62;
    u_xlat62 = ((-(x_1977) * x_1979) + 1.0f);
    let x_1982 : f32 = u_xlat62;
    u_xlat62 = max(x_1982, 0.0f);
    let x_1984 : f32 = u_xlat62;
    let x_1985 : f32 = u_xlat62;
    u_xlat62 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat62;
    let x_1988 : f32 = u_xlat63;
    u_xlat62 = (x_1987 * x_1988);
    let x_1990 : i32 = u_xlati61;
    let x_1992 : vec4<f32> = x_1938.x_AdditionalLightsSpotDir[x_1990];
    let x_1994 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
    let x_1997 : f32 = u_xlat63;
    let x_1998 : i32 = u_xlati61;
    let x_2000 : f32 = x_1938.x_AdditionalLightsAttenuation[x_1998].z;
    let x_2002 : i32 = u_xlati61;
    let x_2004 : f32 = x_1938.x_AdditionalLightsAttenuation[x_2002].w;
    u_xlat63 = ((x_1997 * x_2000) + x_2004);
    let x_2006 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2006, 0.0f, 1.0f);
    let x_2008 : f32 = u_xlat63;
    let x_2009 : f32 = u_xlat63;
    u_xlat63 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat62;
    let x_2012 : f32 = u_xlat63;
    u_xlat62 = (x_2011 * x_2012);
    let x_2014 : vec4<f32> = u_xlat1;
    let x_2016 : i32 = u_xlati61;
    let x_2018 : vec4<f32> = x_1938.x_AdditionalLightsColor[x_2016];
    let x_2020 : vec3<f32> = (vec3<f32>(x_2014.x, x_2014.x, x_2014.x) * vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
    let x_2021 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
    let x_2023 : f32 = u_xlat62;
    let x_2025 : vec4<f32> = u_xlat8;
    let x_2027 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
    let x_2030 : vec4<f32> = u_xlat2;
    let x_2032 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
    let x_2035 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2035, 0.0f, 1.0f);
    let x_2037 : f32 = u_xlat61;
    let x_2039 : vec4<f32> = u_xlat8;
    let x_2041 : vec3<f32> = (vec3<f32>(x_2037, x_2037, x_2037) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
    let x_2044 : vec3<f32> = u_xlat3;
    let x_2045 : vec3<f32> = u_xlat19;
    let x_2048 : vec4<f32> = u_xlat7;
    let x_2050 : vec3<f32> = ((x_2044 * vec3<f32>(x_2045.x, x_2045.x, x_2045.x)) + vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
    let x_2053 : vec4<f32> = u_xlat7;
    let x_2055 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2053.x, x_2053.y, x_2053.z), vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
    let x_2058 : f32 = u_xlat61;
    u_xlat61 = max(x_2058, 1.17549435e-37f);
    let x_2060 : f32 = u_xlat61;
    u_xlat61 = inverseSqrt(x_2060);
    let x_2062 : f32 = u_xlat61;
    let x_2064 : vec4<f32> = u_xlat7;
    let x_2066 : vec3<f32> = (vec3<f32>(x_2062, x_2062, x_2062) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat2;
    let x_2071 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2069.x, x_2069.y, x_2069.z), vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
    let x_2074 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2074, 0.0f, 1.0f);
    let x_2076 : f32 = u_xlat61;
    u_xlat61 = log2(x_2076);
    let x_2078 : f32 = u_xlat57;
    let x_2079 : f32 = u_xlat61;
    u_xlat61 = (x_2078 * x_2079);
    let x_2081 : f32 = u_xlat61;
    u_xlat61 = exp2(x_2081);
    let x_2083 : f32 = u_xlat61;
    let x_2086 : vec4<f32> = x_56.x_SpecColor;
    let x_2088 : vec3<f32> = (vec3<f32>(x_2083, x_2083, x_2083) * vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
    let x_2091 : vec4<f32> = u_xlat7;
    let x_2093 : vec4<f32> = u_xlat8;
    let x_2095 : vec3<f32> = (vec3<f32>(x_2091.x, x_2091.y, x_2091.z) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
    let x_2098 : vec4<f32> = u_xlat9;
    let x_2100 : vec4<f32> = u_xlat1;
    let x_2103 : vec4<f32> = u_xlat7;
    let x_2105 : vec3<f32> = ((vec3<f32>(x_2098.x, x_2098.y, x_2098.z) * vec3<f32>(x_2100.y, x_2100.z, x_2100.w)) + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
    let x_2106 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
    let x_2108 : vec4<f32> = u_xlat6;
    let x_2110 : vec4<f32> = u_xlat7;
    let x_2112 : vec3<f32> = (vec3<f32>(x_2108.x, x_2108.y, x_2108.z) + vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
    let x_2113 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);

    continuing {
      let x_2115 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2115 + bitcast<u32>(1i));
    }
  }
  let x_2117 : vec3<f32> = u_xlat4;
  let x_2118 : vec4<f32> = u_xlat1;
  let x_2121 : vec4<f32> = u_xlat5;
  let x_2123 : vec3<f32> = ((x_2117 * vec3<f32>(x_2118.y, x_2118.z, x_2118.w)) + vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
  let x_2128 : vec4<f32> = u_xlat6;
  let x_2130 : vec4<f32> = u_xlat1;
  let x_2132 : vec3<f32> = (vec3<f32>(x_2128.x, x_2128.y, x_2128.z) + vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
  let x_2136 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2136 == 1.0f);
  let x_2138 : bool = u_xlatb19;
  let x_2139 : bool = u_xlatb38;
  u_xlatb19 = (x_2138 | x_2139);
  let x_2141 : bool = u_xlatb19;
  if (x_2141) {
    let x_2146 : f32 = u_xlat0.x;
    x_2142 = x_2146;
  } else {
    x_2142 = 1.0f;
  }
  let x_2148 : f32 = x_2142;
  SV_Target0.w = x_2148;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

