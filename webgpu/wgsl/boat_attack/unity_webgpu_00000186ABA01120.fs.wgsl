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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_170 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_314 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_1602 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1853 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1962 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb55 : bool;
  var txVec0 : vec3<f32>;
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
  var u_xlatb5 : vec2<bool>;
  var x_1687 : f32;
  var x_1698 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlatu58 : u32;
  var u_xlati41 : i32;
  var u_xlati58 : i32;
  var u_xlati59 : i32;
  var u_xlatb58 : bool;
  var u_xlat44 : vec2<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var x_2256 : f32;
  var x_2269 : f32;
  var x_2321 : f32;
  var x_2332 : vec3<f32>;
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
  u_xlat2.w = 1.0f;
  let x_174 : vec4<f32> = x_170.unity_SHAr;
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_174, x_175);
  let x_180 : vec4<f32> = x_170.unity_SHAg;
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_180, x_181);
  let x_187 : vec4<f32> = x_170.unity_SHAb;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_187, x_188);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_192.y, x_192.z, x_192.z, x_192.x) * vec4<f32>(x_194.x, x_194.y, x_194.z, x_194.z));
  let x_200 : vec4<f32> = x_170.unity_SHBr;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_200, x_201);
  let x_206 : vec4<f32> = x_170.unity_SHBg;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_206, x_207);
  let x_212 : vec4<f32> = x_170.unity_SHBb;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_212, x_213);
  let x_217 : f32 = u_xlat2.y;
  let x_219 : f32 = u_xlat2.y;
  u_xlat0.x = (x_217 * x_219);
  let x_223 : f32 = u_xlat2.x;
  let x_225 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_223 * x_225) + -(x_228));
  let x_234 : vec4<f32> = x_170.unity_SHC;
  let x_236 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat5;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec3<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_244 + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_248, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_253 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_254 : vec2<f32> = vec2<f32>(x_253.x, x_253.y);
  let x_258 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_254.x, x_254.y));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_259.y, x_259.z, x_258.y);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = hlslcc_FragCoord;
  let x_265 : vec2<f32> = (vec2<f32>(x_261.x, x_261.w) * vec2<f32>(x_263.x, x_263.y));
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
  let x_269 : f32 = u_xlat4.y;
  let x_272 : f32 = x_43.x_ScaleBiasRt.x;
  let x_275 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_269 * x_272) + x_275);
  let x_279 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_279) + 1.0f);
  let x_288 : vec4<f32> = u_xlat4;
  let x_291 : f32 = x_43.x_GlobalMipBias.x;
  let x_292 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_288.x, x_288.z), x_291);
  u_xlat0.x = x_292.x;
  let x_296 : f32 = u_xlat0.x;
  u_xlat54 = (x_296 + -1.0f);
  let x_301 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_302 : f32 = u_xlat54;
  u_xlat54 = ((x_301 * x_302) + 1.0f);
  let x_306 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_306, 1.0f);
  let x_316 : f32 = x_314.x_MainLightShadowParams.y;
  u_xlatb55 = (0.0f < x_316);
  let x_318 : bool = u_xlatb55;
  if (x_318) {
    let x_322 : f32 = x_314.x_MainLightShadowParams.y;
    u_xlatb55 = (x_322 == 1.0f);
    let x_324 : bool = u_xlatb55;
    if (x_324) {
      let x_328 : vec4<f32> = vs_TEXCOORD6;
      let x_332 : vec4<f32> = x_314.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_328.x, x_328.y, x_328.x, x_328.y) + x_332);
      let x_335 : vec4<f32> = u_xlat4;
      let x_336 : vec2<f32> = vec2<f32>(x_335.x, x_335.y);
      let x_338 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_336.x, x_336.y, x_338);
      let x_350 : vec3<f32> = txVec0;
      let x_352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_350.xy, x_350.z);
      u_xlat5.x = x_352;
      let x_355 : vec4<f32> = u_xlat4;
      let x_356 : vec2<f32> = vec2<f32>(x_355.z, x_355.w);
      let x_358 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_356.x, x_356.y, x_358);
      let x_365 : vec3<f32> = txVec1;
      let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_365.xy, x_365.z);
      u_xlat5.y = x_367;
      let x_369 : vec4<f32> = vs_TEXCOORD6;
      let x_373 : vec4<f32> = x_314.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_369.x, x_369.y, x_369.x, x_369.y) + x_373);
      let x_376 : vec4<f32> = u_xlat4;
      let x_377 : vec2<f32> = vec2<f32>(x_376.x, x_376.y);
      let x_379 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_377.x, x_377.y, x_379);
      let x_386 : vec3<f32> = txVec2;
      let x_388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_386.xy, x_386.z);
      u_xlat5.z = x_388;
      let x_391 : vec4<f32> = u_xlat4;
      let x_392 : vec2<f32> = vec2<f32>(x_391.z, x_391.w);
      let x_394 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_392.x, x_392.y, x_394);
      let x_401 : vec3<f32> = txVec3;
      let x_403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_401.xy, x_401.z);
      u_xlat5.w = x_403;
      let x_406 : vec4<f32> = u_xlat5;
      u_xlat55 = dot(x_406, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_413 : f32 = x_314.x_MainLightShadowParams.y;
      u_xlatb56 = (x_413 == 2.0f);
      let x_416 : bool = u_xlatb56;
      if (x_416) {
        let x_419 : vec4<f32> = vs_TEXCOORD6;
        let x_423 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_427 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_423.z, x_423.w)) + vec2<f32>(0.5f, 0.5f));
        let x_428 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
        let x_430 : vec4<f32> = u_xlat4;
        let x_432 : vec2<f32> = floor(vec2<f32>(x_430.x, x_430.y));
        let x_433 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
        let x_437 : vec4<f32> = vs_TEXCOORD6;
        let x_440 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_443 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(x_440.z, x_440.w)) + -(vec2<f32>(x_443.x, x_443.y)));
        let x_447 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_447.x, x_447.x, x_447.y, x_447.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_452 : vec4<f32> = u_xlat5;
        let x_454 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_452.x, x_452.x, x_452.z, x_452.z) * vec4<f32>(x_454.x, x_454.x, x_454.z, x_454.z));
        let x_457 : vec4<f32> = u_xlat6;
        let x_461 : vec2<f32> = (vec2<f32>(x_457.y, x_457.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_462 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_462.w);
        let x_464 : vec4<f32> = u_xlat6;
        let x_467 : vec2<f32> = u_xlat40;
        let x_469 : vec2<f32> = ((vec2<f32>(x_464.x, x_464.z) * vec2<f32>(0.5f, 0.5f)) + -(x_467));
        let x_470 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_473 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_473) + vec2<f32>(1.0f, 1.0f));
        let x_477 : vec2<f32> = u_xlat40;
        let x_479 : vec2<f32> = min(x_477, vec2<f32>(0.0f, 0.0f));
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec4<f32> = u_xlat7;
        let x_485 : vec4<f32> = u_xlat7;
        let x_488 : vec2<f32> = u_xlat42;
        let x_489 : vec2<f32> = ((-(vec2<f32>(x_482.x, x_482.y)) * vec2<f32>(x_485.x, x_485.y)) + x_488);
        let x_490 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_492, vec2<f32>(0.0f, 0.0f));
        let x_494 : vec2<f32> = u_xlat40;
        let x_496 : vec2<f32> = u_xlat40;
        let x_498 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_494) * x_496) + vec2<f32>(x_498.y, x_498.w));
        let x_501 : vec4<f32> = u_xlat7;
        let x_503 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) + vec2<f32>(1.0f, 1.0f));
        let x_504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_506 + vec2<f32>(1.0f, 1.0f));
        let x_509 : vec4<f32> = u_xlat6;
        let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_514 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec2<f32> = u_xlat42;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat7;
        let x_522 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_523 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_526 : vec2<f32> = u_xlat40;
        let x_527 : vec2<f32> = (x_526 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_528 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_530.y, x_530.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_534 : f32 = u_xlat7.x;
        u_xlat8.z = x_534;
        let x_537 : f32 = u_xlat40.x;
        u_xlat8.w = x_537;
        let x_540 : f32 = u_xlat9.x;
        u_xlat6.z = x_540;
        let x_543 : f32 = u_xlat5.x;
        u_xlat6.w = x_543;
        let x_546 : vec4<f32> = u_xlat6;
        let x_548 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_546.z, x_546.w, x_546.x, x_546.z) + vec4<f32>(x_548.z, x_548.w, x_548.x, x_548.z));
        let x_552 : f32 = u_xlat8.y;
        u_xlat7.z = x_552;
        let x_555 : f32 = u_xlat40.y;
        u_xlat7.w = x_555;
        let x_558 : f32 = u_xlat6.y;
        u_xlat9.z = x_558;
        let x_561 : f32 = u_xlat5.z;
        u_xlat9.w = x_561;
        let x_563 : vec4<f32> = u_xlat7;
        let x_565 : vec4<f32> = u_xlat9;
        let x_567 : vec3<f32> = (vec3<f32>(x_563.z, x_563.y, x_563.w) + vec3<f32>(x_565.z, x_565.y, x_565.w));
        let x_568 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
        let x_570 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = u_xlat10;
        let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.z, x_570.w) / vec3<f32>(x_572.z, x_572.w, x_572.y));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat6;
        let x_583 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat9;
        let x_588 : vec4<f32> = u_xlat5;
        let x_590 : vec3<f32> = (vec3<f32>(x_586.z, x_586.y, x_586.w) / vec3<f32>(x_588.x, x_588.y, x_588.z));
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
        let x_593 : vec4<f32> = u_xlat7;
        let x_595 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat6;
        let x_601 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_603 : vec3<f32> = (vec3<f32>(x_598.y, x_598.x, x_598.z) * vec3<f32>(x_601.x, x_601.x, x_601.x));
        let x_604 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat7;
        let x_609 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_611 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(x_609.y, x_609.y, x_609.y));
        let x_612 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
        let x_615 : f32 = u_xlat7.x;
        u_xlat6.w = x_615;
        let x_617 : vec4<f32> = u_xlat4;
        let x_620 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.y, x_623.w, x_623.x, x_623.w));
        let x_626 : vec4<f32> = u_xlat4;
        let x_629 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_632 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_626.x, x_626.y) * vec2<f32>(x_629.x, x_629.y)) + vec2<f32>(x_632.z, x_632.w));
        let x_636 : f32 = u_xlat6.y;
        u_xlat7.w = x_636;
        let x_638 : vec4<f32> = u_xlat7;
        let x_639 : vec2<f32> = vec2<f32>(x_638.y, x_638.z);
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_640.x, x_639.x, x_640.z, x_639.y);
        let x_642 : vec4<f32> = u_xlat4;
        let x_645 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.y));
        let x_651 : vec4<f32> = u_xlat4;
        let x_654 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_657 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_651.x, x_651.y, x_651.x, x_651.y) * vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y)) + vec4<f32>(x_657.w, x_657.y, x_657.w, x_657.z));
        let x_660 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_660.x, x_660.y, x_660.x, x_660.y) * vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y)) + vec4<f32>(x_666.x, x_666.w, x_666.z, x_666.w));
        let x_670 : vec4<f32> = u_xlat5;
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_670.x, x_670.x, x_670.x, x_670.y) * vec4<f32>(x_672.z, x_672.w, x_672.y, x_672.z));
        let x_676 : vec4<f32> = u_xlat5;
        let x_678 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_676.y, x_676.y, x_676.z, x_676.z) * x_678);
        let x_682 : f32 = u_xlat5.z;
        let x_684 : f32 = u_xlat10.y;
        u_xlat56 = (x_682 * x_684);
        let x_687 : vec4<f32> = u_xlat8;
        let x_688 : vec2<f32> = vec2<f32>(x_687.x, x_687.y);
        let x_690 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_688.x, x_688.y, x_690);
        let x_698 : vec3<f32> = txVec4;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat57 = x_700;
        let x_702 : vec4<f32> = u_xlat8;
        let x_703 : vec2<f32> = vec2<f32>(x_702.z, x_702.w);
        let x_705 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_703.x, x_703.y, x_705);
        let x_712 : vec3<f32> = txVec5;
        let x_714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_712.xy, x_712.z);
        u_xlat4.x = x_714;
        let x_717 : f32 = u_xlat4.x;
        let x_719 : f32 = u_xlat11.y;
        u_xlat4.x = (x_717 * x_719);
        let x_723 : f32 = u_xlat11.x;
        let x_724 : f32 = u_xlat57;
        let x_727 : f32 = u_xlat4.x;
        u_xlat57 = ((x_723 * x_724) + x_727);
        let x_730 : vec2<f32> = u_xlat40;
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec6;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat4.x = x_741;
        let x_744 : f32 = u_xlat11.z;
        let x_746 : f32 = u_xlat4.x;
        let x_748 : f32 = u_xlat57;
        u_xlat57 = ((x_744 * x_746) + x_748);
        let x_751 : vec4<f32> = u_xlat7;
        let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec7;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_761.xy, x_761.z);
        u_xlat4.x = x_763;
        let x_766 : f32 = u_xlat11.w;
        let x_768 : f32 = u_xlat4.x;
        let x_770 : f32 = u_xlat57;
        u_xlat57 = ((x_766 * x_768) + x_770);
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec8;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat4.x = x_785;
        let x_788 : f32 = u_xlat12.x;
        let x_790 : f32 = u_xlat4.x;
        let x_792 : f32 = u_xlat57;
        u_xlat57 = ((x_788 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat4.x = x_807;
        let x_810 : f32 = u_xlat12.y;
        let x_812 : f32 = u_xlat4.x;
        let x_814 : f32 = u_xlat57;
        u_xlat57 = ((x_810 * x_812) + x_814);
        let x_817 : vec4<f32> = u_xlat7;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec10;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat4.x = x_829;
        let x_832 : f32 = u_xlat12.z;
        let x_834 : f32 = u_xlat4.x;
        let x_836 : f32 = u_xlat57;
        u_xlat57 = ((x_832 * x_834) + x_836);
        let x_839 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec11;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_849.xy, x_849.z);
        u_xlat4.x = x_851;
        let x_854 : f32 = u_xlat12.w;
        let x_856 : f32 = u_xlat4.x;
        let x_858 : f32 = u_xlat57;
        u_xlat57 = ((x_854 * x_856) + x_858);
        let x_861 : vec4<f32> = u_xlat6;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec12;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
        u_xlat4.x = x_873;
        let x_875 : f32 = u_xlat56;
        let x_877 : f32 = u_xlat4.x;
        let x_879 : f32 = u_xlat57;
        u_xlat55 = ((x_875 * x_877) + x_879);
      } else {
        let x_882 : vec4<f32> = vs_TEXCOORD6;
        let x_885 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_888 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(x_885.z, x_885.w)) + vec2<f32>(0.5f, 0.5f));
        let x_889 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec4<f32> = u_xlat4;
        let x_893 : vec2<f32> = floor(vec2<f32>(x_891.x, x_891.y));
        let x_894 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
        let x_896 : vec4<f32> = vs_TEXCOORD6;
        let x_899 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_902 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_896.x, x_896.y) * vec2<f32>(x_899.z, x_899.w)) + -(vec2<f32>(x_902.x, x_902.y)));
        let x_906 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_906.x, x_906.x, x_906.y, x_906.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_909 : vec4<f32> = u_xlat5;
        let x_911 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_909.x, x_909.x, x_909.z, x_909.z) * vec4<f32>(x_911.x, x_911.x, x_911.z, x_911.z));
        let x_914 : vec4<f32> = u_xlat6;
        let x_918 : vec2<f32> = (vec2<f32>(x_914.y, x_914.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_919.x, x_918.x, x_919.z, x_918.y);
        let x_921 : vec4<f32> = u_xlat6;
        let x_924 : vec2<f32> = u_xlat40;
        let x_926 : vec2<f32> = ((vec2<f32>(x_921.x, x_921.z) * vec2<f32>(0.5f, 0.5f)) + -(x_924));
        let x_927 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_926.x, x_927.y, x_926.y, x_927.w);
        let x_929 : vec2<f32> = u_xlat40;
        let x_931 : vec2<f32> = (-(x_929) + vec2<f32>(1.0f, 1.0f));
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_934, vec2<f32>(0.0f, 0.0f));
        let x_936 : vec2<f32> = u_xlat42;
        let x_938 : vec2<f32> = u_xlat42;
        let x_940 : vec4<f32> = u_xlat6;
        let x_942 : vec2<f32> = ((-(x_936) * x_938) + vec2<f32>(x_940.x, x_940.y));
        let x_943 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_945, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat42;
        let x_950 : vec2<f32> = u_xlat42;
        let x_952 : vec4<f32> = u_xlat5;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.y, x_952.w));
        let x_955 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_954.x, x_955.y, x_954.y);
        let x_957 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) + vec2<f32>(2.0f, 2.0f));
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec3<f32> = u_xlat23;
        let x_965 : vec2<f32> = (vec2<f32>(x_963.x, x_963.z) + vec2<f32>(2.0f, 2.0f));
        let x_966 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_969 : f32 = u_xlat5.y;
        u_xlat8.z = (x_969 * 0.081632003f);
        let x_973 : vec4<f32> = u_xlat5;
        let x_976 : vec3<f32> = (vec3<f32>(x_973.z, x_973.x, x_973.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_977 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = (vec2<f32>(x_979.x, x_979.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_983 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_986 : f32 = u_xlat9.y;
        u_xlat8.x = x_986;
        let x_988 : vec2<f32> = u_xlat40;
        let x_995 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_998 : vec2<f32> = u_xlat40;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1002.x, x_1003.y, x_1002.y, x_1003.w);
        let x_1006 : f32 = u_xlat5.x;
        u_xlat6.y = x_1006;
        let x_1009 : f32 = u_xlat7.y;
        u_xlat6.w = x_1009;
        let x_1011 : vec4<f32> = u_xlat6;
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1011 + x_1012);
        let x_1014 : vec2<f32> = u_xlat40;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1014.y, x_1014.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1017.x, x_1018.z, x_1017.y);
        let x_1020 : vec2<f32> = u_xlat40;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1020.y, x_1020.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1024 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1024.w);
        let x_1027 : f32 = u_xlat5.y;
        u_xlat7.y = x_1027;
        let x_1029 : vec4<f32> = u_xlat7;
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1029 + x_1030);
        let x_1032 : vec4<f32> = u_xlat6;
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1032 / x_1033);
        let x_1035 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1035 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1041 / x_1042);
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1044 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1046 : vec4<f32> = u_xlat6;
        let x_1049 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1046.w, x_1046.x, x_1046.y, x_1046.z) * vec4<f32>(x_1049.x, x_1049.x, x_1049.x, x_1049.x));
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1055 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1052.x, x_1052.w, x_1052.y, x_1052.z) * vec4<f32>(x_1055.y, x_1055.y, x_1055.y, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1059 : vec3<f32> = vec3<f32>(x_1058.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1059.z);
        let x_1063 : f32 = u_xlat7.x;
        u_xlat9.y = x_1063;
        let x_1065 : vec4<f32> = u_xlat4;
        let x_1068 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) * vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y)) + vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1071.y));
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.w, x_1080.y));
        let x_1084 : f32 = u_xlat9.y;
        u_xlat6.y = x_1084;
        let x_1087 : f32 = u_xlat7.z;
        u_xlat9.y = x_1087;
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat4;
        let x_1101 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1101.x, x_1101.y)) + vec2<f32>(x_1104.w, x_1104.y));
        let x_1107 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1110 : f32 = u_xlat9.y;
        u_xlat6.z = x_1110;
        let x_1113 : vec4<f32> = u_xlat4;
        let x_1116 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y) * vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) + vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.z));
        let x_1123 : f32 = u_xlat7.w;
        u_xlat9.y = x_1123;
        let x_1126 : vec4<f32> = u_xlat4;
        let x_1129 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1132.y));
        let x_1136 : vec4<f32> = u_xlat4;
        let x_1139 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.w, x_1142.y));
        let x_1146 : f32 = u_xlat9.y;
        u_xlat6.w = x_1146;
        let x_1149 : vec4<f32> = u_xlat4;
        let x_1152 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(x_1155.x, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1159 : vec3<f32> = vec3<f32>(x_1158.x, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1159.z);
        let x_1162 : vec4<f32> = u_xlat4;
        let x_1165 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y) * vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y)) + vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1168.y));
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1175 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1175.x, x_1175.y)) + vec2<f32>(x_1178.w, x_1178.y));
        let x_1182 : f32 = u_xlat6.x;
        u_xlat7.x = x_1182;
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_314.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.x, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
        let x_1196 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1196.x, x_1196.x, x_1196.x, x_1196.x) * x_1198);
        let x_1201 : vec4<f32> = u_xlat5;
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y) * x_1203);
        let x_1206 : vec4<f32> = u_xlat5;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1206.z, x_1206.z, x_1206.z, x_1206.z) * x_1208);
        let x_1210 : vec4<f32> = u_xlat5;
        let x_1212 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1210.w, x_1210.w, x_1210.w, x_1210.w) * x_1212);
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.x, x_1215.y);
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec13;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1225.xy, x_1225.z);
        u_xlat56 = x_1227;
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec14;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat57 = x_1241;
        let x_1242 : f32 = u_xlat57;
        let x_1244 : f32 = u_xlat15.y;
        u_xlat57 = (x_1242 * x_1244);
        let x_1247 : f32 = u_xlat15.x;
        let x_1248 : f32 = u_xlat56;
        let x_1250 : f32 = u_xlat57;
        u_xlat56 = ((x_1247 * x_1248) + x_1250);
        let x_1253 : vec2<f32> = u_xlat40;
        let x_1255 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec15;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat57 = x_1264;
        let x_1266 : f32 = u_xlat15.z;
        let x_1267 : f32 = u_xlat57;
        let x_1269 : f32 = u_xlat56;
        u_xlat56 = ((x_1266 * x_1267) + x_1269);
        let x_1272 : vec4<f32> = u_xlat13;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
        let x_1275 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec16;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
        u_xlat57 = x_1284;
        let x_1286 : f32 = u_xlat15.w;
        let x_1287 : f32 = u_xlat57;
        let x_1289 : f32 = u_xlat56;
        u_xlat56 = ((x_1286 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec17;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat57 = x_1304;
        let x_1306 : f32 = u_xlat16.x;
        let x_1307 : f32 = u_xlat57;
        let x_1309 : f32 = u_xlat56;
        u_xlat56 = ((x_1306 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.z, x_1312.w);
        let x_1315 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec18;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1322.xy, x_1322.z);
        u_xlat57 = x_1324;
        let x_1326 : f32 = u_xlat16.y;
        let x_1327 : f32 = u_xlat57;
        let x_1329 : f32 = u_xlat56;
        u_xlat56 = ((x_1326 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat12;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec19;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1342.xy, x_1342.z);
        u_xlat57 = x_1344;
        let x_1346 : f32 = u_xlat16.z;
        let x_1347 : f32 = u_xlat57;
        let x_1349 : f32 = u_xlat56;
        u_xlat56 = ((x_1346 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat13;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.z, x_1352.w);
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec20;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat57 = x_1364;
        let x_1366 : f32 = u_xlat16.w;
        let x_1367 : f32 = u_xlat57;
        let x_1369 : f32 = u_xlat56;
        u_xlat56 = ((x_1366 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat14;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec21;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1382.xy, x_1382.z);
        u_xlat57 = x_1384;
        let x_1386 : f32 = u_xlat17.x;
        let x_1387 : f32 = u_xlat57;
        let x_1389 : f32 = u_xlat56;
        u_xlat56 = ((x_1386 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat14;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.z, x_1392.w);
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec22;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat57 = x_1404;
        let x_1406 : f32 = u_xlat17.y;
        let x_1407 : f32 = u_xlat57;
        let x_1409 : f32 = u_xlat56;
        u_xlat56 = ((x_1406 * x_1407) + x_1409);
        let x_1412 : vec2<f32> = u_xlat24;
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec23;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat57 = x_1423;
        let x_1425 : f32 = u_xlat17.z;
        let x_1426 : f32 = u_xlat57;
        let x_1428 : f32 = u_xlat56;
        u_xlat56 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec2<f32> = u_xlat48;
        let x_1433 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec24;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1440.xy, x_1440.z);
        u_xlat57 = x_1442;
        let x_1444 : f32 = u_xlat17.w;
        let x_1445 : f32 = u_xlat57;
        let x_1447 : f32 = u_xlat56;
        u_xlat56 = ((x_1444 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec25;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat57 = x_1462;
        let x_1464 : f32 = u_xlat5.x;
        let x_1465 : f32 = u_xlat57;
        let x_1467 : f32 = u_xlat56;
        u_xlat56 = ((x_1464 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat9;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.z, x_1470.w);
        let x_1473 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec26;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1480.xy, x_1480.z);
        u_xlat57 = x_1482;
        let x_1484 : f32 = u_xlat5.y;
        let x_1485 : f32 = u_xlat57;
        let x_1487 : f32 = u_xlat56;
        u_xlat56 = ((x_1484 * x_1485) + x_1487);
        let x_1490 : vec2<f32> = u_xlat43;
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec27;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat57 = x_1501;
        let x_1503 : f32 = u_xlat5.z;
        let x_1504 : f32 = u_xlat57;
        let x_1506 : f32 = u_xlat56;
        u_xlat56 = ((x_1503 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat4;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec28;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat57 = x_1521;
        let x_1523 : f32 = u_xlat5.w;
        let x_1524 : f32 = u_xlat57;
        let x_1526 : f32 = u_xlat56;
        u_xlat55 = ((x_1523 * x_1524) + x_1526);
      }
    }
  } else {
    let x_1530 : vec4<f32> = vs_TEXCOORD6;
    let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
    let x_1533 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
    let x_1540 : vec3<f32> = txVec29;
    let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
    u_xlat55 = x_1542;
  }
  let x_1544 : f32 = x_314.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1544) + 1.0f);
  let x_1547 : f32 = u_xlat55;
  let x_1549 : f32 = x_314.x_MainLightShadowParams.x;
  let x_1551 : f32 = u_xlat56;
  u_xlat55 = ((x_1547 * x_1549) + x_1551);
  let x_1554 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1554);
  let x_1558 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1558 >= 1.0f);
  let x_1560 : bool = u_xlatb56;
  let x_1561 : bool = u_xlatb57;
  u_xlatb56 = (x_1560 | x_1561);
  let x_1563 : bool = u_xlatb56;
  let x_1564 : f32 = u_xlat55;
  u_xlat55 = select(x_1564, 1.0f, x_1563);
  let x_1567 : vec4<f32> = vs_TEXCOORD2;
  let x_1571 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1573 : vec3<f32> = (vec3<f32>(x_1567.x, x_1567.y, x_1567.z) + -(x_1571));
  let x_1574 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1576 : vec4<f32> = u_xlat4;
  let x_1578 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : f32 = u_xlat56;
  let x_1583 : f32 = x_314.x_MainLightShadowParams.z;
  let x_1586 : f32 = x_314.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1581 * x_1583) + x_1586);
  let x_1588 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1588, 0.0f, 1.0f);
  let x_1590 : f32 = u_xlat55;
  u_xlat57 = (-(x_1590) + 1.0f);
  let x_1593 : f32 = u_xlat56;
  let x_1594 : f32 = u_xlat57;
  let x_1596 : f32 = u_xlat55;
  u_xlat55 = ((x_1593 * x_1594) + x_1596);
  let x_1604 : f32 = x_1602.x_MainLightCookieTextureFormat;
  u_xlatb56 = !((x_1604 == -1.0f));
  let x_1606 : bool = u_xlatb56;
  if (x_1606) {
    let x_1609 : vec4<f32> = vs_TEXCOORD2;
    let x_1612 : vec4<f32> = x_1602.x_MainLightWorldToLight[1i];
    let x_1614 : vec2<f32> = (vec2<f32>(x_1609.y, x_1609.y) * vec2<f32>(x_1612.x, x_1612.y));
    let x_1615 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
    let x_1618 : vec4<f32> = x_1602.x_MainLightWorldToLight[0i];
    let x_1620 : vec4<f32> = vs_TEXCOORD2;
    let x_1623 : vec4<f32> = u_xlat4;
    let x_1625 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.x, x_1620.x)) + vec2<f32>(x_1623.x, x_1623.y));
    let x_1626 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1625.x, x_1625.y, x_1626.z, x_1626.w);
    let x_1629 : vec4<f32> = x_1602.x_MainLightWorldToLight[2i];
    let x_1631 : vec4<f32> = vs_TEXCOORD2;
    let x_1634 : vec4<f32> = u_xlat4;
    let x_1636 : vec2<f32> = ((vec2<f32>(x_1629.x, x_1629.y) * vec2<f32>(x_1631.z, x_1631.z)) + vec2<f32>(x_1634.x, x_1634.y));
    let x_1637 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
    let x_1639 : vec4<f32> = u_xlat4;
    let x_1643 : vec4<f32> = x_1602.x_MainLightWorldToLight[3i];
    let x_1645 : vec2<f32> = (vec2<f32>(x_1639.x, x_1639.y) + vec2<f32>(x_1643.x, x_1643.y));
    let x_1646 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
    let x_1648 : vec4<f32> = u_xlat4;
    let x_1651 : vec2<f32> = ((vec2<f32>(x_1648.x, x_1648.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1652 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
    let x_1659 : vec4<f32> = u_xlat4;
    let x_1662 : f32 = x_43.x_GlobalMipBias.x;
    let x_1663 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1659.x, x_1659.y), x_1662);
    u_xlat4 = x_1663;
    let x_1668 : f32 = x_1602.x_MainLightCookieTextureFormat;
    let x_1670 : f32 = x_1602.x_MainLightCookieTextureFormat;
    let x_1672 : f32 = x_1602.x_MainLightCookieTextureFormat;
    let x_1674 : f32 = x_1602.x_MainLightCookieTextureFormat;
    let x_1675 : vec4<f32> = vec4<f32>(x_1668, x_1670, x_1672, x_1674);
    let x_1683 : vec4<bool> = (vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1675.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1683.x, x_1683.y);
    let x_1686 : bool = u_xlatb5.y;
    if (x_1686) {
      let x_1691 : f32 = u_xlat4.w;
      x_1687 = x_1691;
    } else {
      let x_1694 : f32 = u_xlat4.x;
      x_1687 = x_1694;
    }
    let x_1695 : f32 = x_1687;
    u_xlat56 = x_1695;
    let x_1697 : bool = u_xlatb5.x;
    if (x_1697) {
      let x_1701 : vec4<f32> = u_xlat4;
      x_1698 = vec3<f32>(x_1701.x, x_1701.y, x_1701.z);
    } else {
      let x_1704 : f32 = u_xlat56;
      x_1698 = vec3<f32>(x_1704, x_1704, x_1704);
    }
    let x_1706 : vec3<f32> = x_1698;
    let x_1707 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1713 : vec4<f32> = u_xlat4;
  let x_1716 : vec4<f32> = x_43.x_MainLightColor;
  let x_1718 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.y, x_1713.z) * vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
  let x_1721 : f32 = u_xlat54;
  let x_1723 : vec4<f32> = u_xlat4;
  let x_1725 : vec3<f32> = (vec3<f32>(x_1721, x_1721, x_1721) * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
  let x_1728 : vec4<f32> = u_xlat0;
  let x_1730 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1728.x, x_1728.x, x_1728.x) * x_1730);
  let x_1732 : f32 = u_xlat55;
  let x_1734 : f32 = x_170.unity_LightData.z;
  u_xlat0.x = (x_1732 * x_1734);
  let x_1737 : vec4<f32> = u_xlat0;
  let x_1739 : vec4<f32> = u_xlat4;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737.x, x_1737.x, x_1737.x) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec4<f32> = u_xlat2;
  let x_1747 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1744.x, x_1744.y, x_1744.z), vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
  let x_1752 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1752, 0.0f, 1.0f);
  let x_1755 : vec4<f32> = u_xlat0;
  let x_1757 : vec4<f32> = u_xlat4;
  let x_1759 : vec3<f32> = (vec3<f32>(x_1755.x, x_1755.x, x_1755.x) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1762 : vec4<f32> = u_xlat1;
  let x_1764 : vec4<f32> = u_xlat4;
  let x_1766 : vec3<f32> = (vec3<f32>(x_1762.x, x_1762.y, x_1762.z) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1770 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1772 : f32 = x_170.unity_LightData.y;
  u_xlat0.x = min(x_1770, x_1772);
  let x_1778 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1778));
  let x_1782 : f32 = x_1602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1784 : f32 = x_1602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1786 : f32 = x_1602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1788 : f32 = x_1602.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1789 : vec4<f32> = vec4<f32>(x_1782, x_1784, x_1786, x_1788);
  let x_1795 : vec4<bool> = (vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1789.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1795.x, x_1795.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1806 : u32 = u_xlatu_loop_1;
    let x_1807 : u32 = u_xlatu0;
    if ((x_1806 < x_1807)) {
    } else {
      break;
    }
    let x_1810 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1810 >> 2u);
    let x_1814 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1814 & 3u));
    let x_1817 : u32 = u_xlatu56;
    let x_1820 : vec4<f32> = x_170.unity_LightIndices[bitcast<i32>(x_1817)];
    let x_1830 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1835 : vec4<u32> = indexable[x_1830];
    u_xlat56 = dot(x_1820, bitcast<vec4<f32>>(x_1835));
    let x_1838 : f32 = u_xlat56;
    u_xlatu56 = bitcast<u32>(i32(x_1838));
    let x_1841 : vec4<f32> = vs_TEXCOORD2;
    let x_1854 : u32 = u_xlatu56;
    let x_1857 : vec4<f32> = x_1853.x_AdditionalLightsPosition[bitcast<i32>(x_1854)];
    let x_1860 : u32 = u_xlatu56;
    let x_1863 : vec4<f32> = x_1853.x_AdditionalLightsPosition[bitcast<i32>(x_1860)];
    let x_1865 : vec3<f32> = ((-(vec3<f32>(x_1841.x, x_1841.y, x_1841.z)) * vec3<f32>(x_1857.w, x_1857.w, x_1857.w)) + vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
    let x_1866 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
    let x_1868 : vec4<f32> = u_xlat7;
    let x_1870 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(vec3<f32>(x_1868.x, x_1868.y, x_1868.z), vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
    let x_1873 : f32 = u_xlat57;
    u_xlat57 = max(x_1873, 6.10351562e-05f);
    let x_1877 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1877);
    let x_1879 : f32 = u_xlat58;
    let x_1881 : vec4<f32> = u_xlat7;
    let x_1883 : vec3<f32> = (vec3<f32>(x_1879, x_1879, x_1879) * vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
    let x_1886 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1886);
    let x_1888 : f32 = u_xlat57;
    let x_1889 : u32 = u_xlatu56;
    let x_1892 : f32 = x_1853.x_AdditionalLightsAttenuation[bitcast<i32>(x_1889)].x;
    u_xlat57 = (x_1888 * x_1892);
    let x_1894 : f32 = u_xlat57;
    let x_1896 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1894) * x_1896) + 1.0f);
    let x_1899 : f32 = u_xlat57;
    u_xlat57 = max(x_1899, 0.0f);
    let x_1901 : f32 = u_xlat57;
    let x_1902 : f32 = u_xlat57;
    u_xlat57 = (x_1901 * x_1902);
    let x_1904 : f32 = u_xlat57;
    let x_1905 : f32 = u_xlat58;
    u_xlat57 = (x_1904 * x_1905);
    let x_1907 : u32 = u_xlatu56;
    let x_1910 : vec4<f32> = x_1853.x_AdditionalLightsSpotDir[bitcast<i32>(x_1907)];
    let x_1912 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1910.x, x_1910.y, x_1910.z), vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : f32 = u_xlat58;
    let x_1916 : u32 = u_xlatu56;
    let x_1919 : f32 = x_1853.x_AdditionalLightsAttenuation[bitcast<i32>(x_1916)].z;
    let x_1921 : u32 = u_xlatu56;
    let x_1924 : f32 = x_1853.x_AdditionalLightsAttenuation[bitcast<i32>(x_1921)].w;
    u_xlat58 = ((x_1915 * x_1919) + x_1924);
    let x_1926 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1926, 0.0f, 1.0f);
    let x_1928 : f32 = u_xlat58;
    let x_1929 : f32 = u_xlat58;
    u_xlat58 = (x_1928 * x_1929);
    let x_1931 : f32 = u_xlat57;
    let x_1932 : f32 = u_xlat58;
    u_xlat57 = (x_1931 * x_1932);
    let x_1935 : u32 = u_xlatu56;
    u_xlatu58 = (x_1935 >> 5u);
    let x_1938 : u32 = u_xlatu56;
    u_xlati41 = (1i << bitcast<u32>((bitcast<i32>(x_1938) & 31i)));
    let x_1944 : i32 = u_xlati41;
    let x_1946 : u32 = u_xlatu58;
    let x_1949 : f32 = x_1602.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1946)].el;
    u_xlati58 = bitcast<i32>((bitcast<u32>(x_1944) & bitcast<u32>(x_1949)));
    let x_1953 : i32 = u_xlati58;
    if ((x_1953 != 0i)) {
      let x_1963 : u32 = u_xlatu56;
      let x_1966 : f32 = x_1962.x_AdditionalLightsLightTypes[bitcast<i32>(x_1963)].el;
      u_xlati58 = i32(x_1966);
      let x_1968 : i32 = u_xlati58;
      u_xlati41 = select(1i, 0i, (x_1968 != 0i));
      let x_1972 : u32 = u_xlatu56;
      u_xlati59 = (bitcast<i32>(x_1972) << bitcast<u32>(2i));
      let x_1975 : i32 = u_xlati41;
      if ((x_1975 != 0i)) {
        let x_1979 : vec4<f32> = vs_TEXCOORD2;
        let x_1981 : i32 = u_xlati59;
        let x_1984 : i32 = u_xlati59;
        let x_1988 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_1981 + 1i) / 4i)][((x_1984 + 1i) % 4i)];
        let x_1990 : vec3<f32> = (vec3<f32>(x_1979.y, x_1979.y, x_1979.y) * vec3<f32>(x_1988.x, x_1988.y, x_1988.w));
        let x_1991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
        let x_1993 : i32 = u_xlati59;
        let x_1995 : i32 = u_xlati59;
        let x_1998 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_1993 / 4i)][(x_1995 % 4i)];
        let x_2000 : vec4<f32> = vs_TEXCOORD2;
        let x_2003 : vec4<f32> = u_xlat8;
        let x_2005 : vec3<f32> = ((vec3<f32>(x_1998.x, x_1998.y, x_1998.w) * vec3<f32>(x_2000.x, x_2000.x, x_2000.x)) + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
        let x_2006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
        let x_2008 : i32 = u_xlati59;
        let x_2011 : i32 = u_xlati59;
        let x_2015 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2008 + 2i) / 4i)][((x_2011 + 2i) % 4i)];
        let x_2017 : vec4<f32> = vs_TEXCOORD2;
        let x_2020 : vec4<f32> = u_xlat8;
        let x_2022 : vec3<f32> = ((vec3<f32>(x_2015.x, x_2015.y, x_2015.w) * vec3<f32>(x_2017.z, x_2017.z, x_2017.z)) + vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
        let x_2023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
        let x_2025 : vec4<f32> = u_xlat8;
        let x_2027 : i32 = u_xlati59;
        let x_2030 : i32 = u_xlati59;
        let x_2034 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2027 + 3i) / 4i)][((x_2030 + 3i) % 4i)];
        let x_2036 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) + vec3<f32>(x_2034.x, x_2034.y, x_2034.w));
        let x_2037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2036.x, x_2036.y, x_2036.z, x_2037.w);
        let x_2039 : vec4<f32> = u_xlat8;
        let x_2041 : vec4<f32> = u_xlat8;
        let x_2043 : vec2<f32> = (vec2<f32>(x_2039.x, x_2039.y) / vec2<f32>(x_2041.z, x_2041.z));
        let x_2044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2043.x, x_2043.y, x_2044.z, x_2044.w);
        let x_2046 : vec4<f32> = u_xlat8;
        let x_2049 : vec2<f32> = ((vec2<f32>(x_2046.x, x_2046.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2049.x, x_2049.y, x_2050.z, x_2050.w);
        let x_2052 : vec4<f32> = u_xlat8;
        let x_2056 : vec2<f32> = clamp(vec2<f32>(x_2052.x, x_2052.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2056.x, x_2056.y, x_2057.z, x_2057.w);
        let x_2059 : u32 = u_xlatu56;
        let x_2062 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2059)];
        let x_2064 : vec4<f32> = u_xlat8;
        let x_2067 : u32 = u_xlatu56;
        let x_2070 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2067)];
        let x_2072 : vec2<f32> = ((vec2<f32>(x_2062.x, x_2062.y) * vec2<f32>(x_2064.x, x_2064.y)) + vec2<f32>(x_2070.z, x_2070.w));
        let x_2073 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2072.x, x_2072.y, x_2073.z, x_2073.w);
      } else {
        let x_2077 : i32 = u_xlati58;
        u_xlatb58 = (x_2077 == 1i);
        let x_2079 : bool = u_xlatb58;
        u_xlati58 = select(0i, 1i, x_2079);
        let x_2081 : i32 = u_xlati58;
        if ((x_2081 != 0i)) {
          let x_2086 : vec4<f32> = vs_TEXCOORD2;
          let x_2088 : i32 = u_xlati59;
          let x_2091 : i32 = u_xlati59;
          let x_2095 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2088 + 1i) / 4i)][((x_2091 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2086.y, x_2086.y) * vec2<f32>(x_2095.x, x_2095.y));
          let x_2098 : i32 = u_xlati59;
          let x_2100 : i32 = u_xlati59;
          let x_2103 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_2098 / 4i)][(x_2100 % 4i)];
          let x_2105 : vec4<f32> = vs_TEXCOORD2;
          let x_2108 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2103.x, x_2103.y) * vec2<f32>(x_2105.x, x_2105.x)) + x_2108);
          let x_2110 : i32 = u_xlati59;
          let x_2113 : i32 = u_xlati59;
          let x_2117 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2110 + 2i) / 4i)][((x_2113 + 2i) % 4i)];
          let x_2119 : vec4<f32> = vs_TEXCOORD2;
          let x_2122 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2117.x, x_2117.y) * vec2<f32>(x_2119.z, x_2119.z)) + x_2122);
          let x_2124 : vec2<f32> = u_xlat44;
          let x_2125 : i32 = u_xlati59;
          let x_2128 : i32 = u_xlati59;
          let x_2132 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2125 + 3i) / 4i)][((x_2128 + 3i) % 4i)];
          u_xlat44 = (x_2124 + vec2<f32>(x_2132.x, x_2132.y));
          let x_2135 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2135 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2138 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2138);
          let x_2140 : u32 = u_xlatu56;
          let x_2143 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2140)];
          let x_2145 : vec2<f32> = u_xlat44;
          let x_2147 : u32 = u_xlatu56;
          let x_2150 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2147)];
          let x_2152 : vec2<f32> = ((vec2<f32>(x_2143.x, x_2143.y) * x_2145) + vec2<f32>(x_2150.z, x_2150.w));
          let x_2153 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2153.z, x_2153.w);
        } else {
          let x_2156 : vec4<f32> = vs_TEXCOORD2;
          let x_2158 : i32 = u_xlati59;
          let x_2161 : i32 = u_xlati59;
          let x_2165 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2158 + 1i) / 4i)][((x_2161 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2156.y, x_2156.y, x_2156.y, x_2156.y) * x_2165);
          let x_2167 : i32 = u_xlati59;
          let x_2169 : i32 = u_xlati59;
          let x_2172 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_2167 / 4i)][(x_2169 % 4i)];
          let x_2173 : vec4<f32> = vs_TEXCOORD2;
          let x_2176 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2172 * vec4<f32>(x_2173.x, x_2173.x, x_2173.x, x_2173.x)) + x_2176);
          let x_2178 : i32 = u_xlati59;
          let x_2181 : i32 = u_xlati59;
          let x_2185 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2178 + 2i) / 4i)][((x_2181 + 2i) % 4i)];
          let x_2186 : vec4<f32> = vs_TEXCOORD2;
          let x_2189 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2185 * vec4<f32>(x_2186.z, x_2186.z, x_2186.z, x_2186.z)) + x_2189);
          let x_2191 : vec4<f32> = u_xlat9;
          let x_2192 : i32 = u_xlati59;
          let x_2195 : i32 = u_xlati59;
          let x_2199 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_2192 + 3i) / 4i)][((x_2195 + 3i) % 4i)];
          u_xlat9 = (x_2191 + x_2199);
          let x_2201 : vec4<f32> = u_xlat9;
          let x_2203 : vec4<f32> = u_xlat9;
          let x_2205 : vec3<f32> = (vec3<f32>(x_2201.x, x_2201.y, x_2201.z) / vec3<f32>(x_2203.w, x_2203.w, x_2203.w));
          let x_2206 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
          let x_2208 : vec4<f32> = u_xlat9;
          let x_2210 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(vec3<f32>(x_2208.x, x_2208.y, x_2208.z), vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
          let x_2213 : f32 = u_xlat58;
          u_xlat58 = inverseSqrt(x_2213);
          let x_2215 : f32 = u_xlat58;
          let x_2217 : vec4<f32> = u_xlat9;
          let x_2219 : vec3<f32> = (vec3<f32>(x_2215, x_2215, x_2215) * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
          let x_2220 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
          let x_2222 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(abs(vec3<f32>(x_2222.x, x_2222.y, x_2222.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2227 : f32 = u_xlat58;
          u_xlat58 = max(x_2227, 0.000001f);
          let x_2230 : f32 = u_xlat58;
          u_xlat58 = (1.0f / x_2230);
          let x_2232 : f32 = u_xlat58;
          let x_2234 : vec4<f32> = u_xlat9;
          let x_2236 : vec3<f32> = (vec3<f32>(x_2232, x_2232, x_2232) * vec3<f32>(x_2234.z, x_2234.x, x_2234.y));
          let x_2237 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
          let x_2240 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2240);
          let x_2244 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2244, 0.0f, 1.0f);
          let x_2248 : vec4<f32> = u_xlat10;
          let x_2251 : vec4<bool> = (vec4<f32>(x_2248.y, x_2248.z, x_2248.y, x_2248.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb41 = vec2<bool>(x_2251.x, x_2251.y);
          let x_2255 : bool = u_xlatb41.x;
          if (x_2255) {
            let x_2260 : f32 = u_xlat10.x;
            x_2256 = x_2260;
          } else {
            let x_2263 : f32 = u_xlat10.x;
            x_2256 = -(x_2263);
          }
          let x_2265 : f32 = x_2256;
          u_xlat41.x = x_2265;
          let x_2268 : bool = u_xlatb41.y;
          if (x_2268) {
            let x_2273 : f32 = u_xlat10.x;
            x_2269 = x_2273;
          } else {
            let x_2276 : f32 = u_xlat10.x;
            x_2269 = -(x_2276);
          }
          let x_2278 : f32 = x_2269;
          u_xlat41.y = x_2278;
          let x_2280 : vec4<f32> = u_xlat9;
          let x_2282 : f32 = u_xlat58;
          let x_2285 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2280.x, x_2280.y) * vec2<f32>(x_2282, x_2282)) + x_2285);
          let x_2287 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2287 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2290 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2290, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2294 : u32 = u_xlatu56;
          let x_2297 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2294)];
          let x_2299 : vec2<f32> = u_xlat41;
          let x_2301 : u32 = u_xlatu56;
          let x_2304 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2301)];
          let x_2306 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.y) * x_2299) + vec2<f32>(x_2304.z, x_2304.w));
          let x_2307 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
        }
      }
      let x_2314 : vec4<f32> = u_xlat8;
      let x_2317 : f32 = x_43.x_GlobalMipBias.x;
      let x_2318 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2314.x, x_2314.y), x_2317);
      u_xlat8 = x_2318;
      let x_2320 : bool = u_xlatb5.y;
      if (x_2320) {
        let x_2325 : f32 = u_xlat8.w;
        x_2321 = x_2325;
      } else {
        let x_2328 : f32 = u_xlat8.x;
        x_2321 = x_2328;
      }
      let x_2329 : f32 = x_2321;
      u_xlat58 = x_2329;
      let x_2331 : bool = u_xlatb5.x;
      if (x_2331) {
        let x_2335 : vec4<f32> = u_xlat8;
        x_2332 = vec3<f32>(x_2335.x, x_2335.y, x_2335.z);
      } else {
        let x_2338 : f32 = u_xlat58;
        x_2332 = vec3<f32>(x_2338, x_2338, x_2338);
      }
      let x_2340 : vec3<f32> = x_2332;
      let x_2341 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2347 : vec4<f32> = u_xlat8;
    let x_2349 : u32 = u_xlatu56;
    let x_2352 : vec4<f32> = x_1853.x_AdditionalLightsColor[bitcast<i32>(x_2349)];
    let x_2354 : vec3<f32> = (vec3<f32>(x_2347.x, x_2347.y, x_2347.z) * vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
    let x_2355 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
    let x_2357 : f32 = u_xlat54;
    let x_2359 : vec4<f32> = u_xlat8;
    let x_2361 : vec3<f32> = (vec3<f32>(x_2357, x_2357, x_2357) * vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
    let x_2362 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
    let x_2364 : f32 = u_xlat57;
    let x_2366 : vec4<f32> = u_xlat8;
    let x_2368 : vec3<f32> = (vec3<f32>(x_2364, x_2364, x_2364) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
    let x_2371 : vec4<f32> = u_xlat2;
    let x_2373 : vec4<f32> = u_xlat7;
    u_xlat56 = dot(vec3<f32>(x_2371.x, x_2371.y, x_2371.z), vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
    let x_2376 : f32 = u_xlat56;
    u_xlat56 = clamp(x_2376, 0.0f, 1.0f);
    let x_2378 : f32 = u_xlat56;
    let x_2380 : vec4<f32> = u_xlat8;
    let x_2382 : vec3<f32> = (vec3<f32>(x_2378, x_2378, x_2378) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
    let x_2383 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
    let x_2385 : vec4<f32> = u_xlat7;
    let x_2387 : vec4<f32> = u_xlat1;
    let x_2390 : vec4<f32> = u_xlat6;
    let x_2392 : vec3<f32> = ((vec3<f32>(x_2385.x, x_2385.y, x_2385.z) * vec3<f32>(x_2387.x, x_2387.y, x_2387.z)) + vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
    let x_2393 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);

    continuing {
      let x_2395 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2395 + bitcast<u32>(1i));
    }
  }
  let x_2397 : vec3<f32> = u_xlat3;
  let x_2398 : vec4<f32> = u_xlat1;
  let x_2401 : vec4<f32> = u_xlat4;
  let x_2403 : vec3<f32> = ((x_2397 * vec3<f32>(x_2398.x, x_2398.y, x_2398.z)) + vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
  let x_2404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2408 : vec4<f32> = u_xlat6;
  let x_2410 : vec4<f32> = u_xlat1;
  let x_2412 : vec3<f32> = (vec3<f32>(x_2408.x, x_2408.y, x_2408.z) + vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2415 : bool = u_xlatb36;
  let x_2416 : f32 = u_xlat18;
  SV_Target0.w = select(1.0f, x_2416, x_2415);
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

