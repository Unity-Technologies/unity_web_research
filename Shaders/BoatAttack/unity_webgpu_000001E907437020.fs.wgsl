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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_341 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1628 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1762 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1939 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2061 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb59 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
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
  var u_xlatb6 : vec2<bool>;
  var x_1713 : f32;
  var x_1724 : vec3<f32>;
  var u_xlatu59 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu61 : u32;
  var u_xlati62 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat62 : f32;
  var u_xlat44 : vec2<f32>;
  var u_xlatu44 : u32;
  var u_xlati63 : i32;
  var u_xlati44 : i32;
  var u_xlati64 : i32;
  var u_xlatb44 : bool;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2362 : f32;
  var x_2375 : f32;
  var x_2427 : f32;
  var x_2439 : vec3<f32>;
  var x_2588 : f32;
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
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat19;
  let x_188 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec3<f32> = u_xlat19;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_210.z, x_210.z, x_210.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec3<f32> = u_xlat19;
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_219.x, x_219.y, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat19.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat19;
  let x_242 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_246 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_246;
  let x_249 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_249;
  let x_253 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_253;
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat19.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_260, 1.17549435e-37f);
  let x_265 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_265);
  let x_275 : vec2<f32> = vs_TEXCOORD7;
  let x_277 : f32 = x_43.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_275, x_277);
  u_xlat4 = vec3<f32>(x_278.x, x_278.y, x_278.z);
  let x_283 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
  let x_288 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_284.x, x_284.y));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = hlslcc_FragCoord;
  let x_295 : vec2<f32> = (vec2<f32>(x_291.x, x_291.y) * vec2<f32>(x_293.x, x_293.y));
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_299 : f32 = u_xlat5.y;
  let x_302 : f32 = x_43.x_ScaleBiasRt.x;
  let x_305 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_299 * x_302) + x_305);
  let x_307 : f32 = u_xlat57;
  u_xlat5.z = (-(x_307) + 1.0f);
  let x_316 : vec4<f32> = u_xlat5;
  let x_319 : f32 = x_43.x_GlobalMipBias.x;
  let x_320 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_316.x, x_316.z), x_319);
  u_xlat57 = x_320.x;
  let x_322 : f32 = u_xlat57;
  u_xlat1.x = (x_322 + -1.0f);
  let x_327 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_329 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_327 * x_329) + 1.0f);
  let x_333 : f32 = u_xlat57;
  u_xlat57 = min(x_333, 1.0f);
  let x_343 : f32 = x_341.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_343);
  let x_345 : bool = u_xlatb59;
  if (x_345) {
    let x_349 : f32 = x_341.x_MainLightShadowParams.y;
    u_xlatb59 = (x_349 == 1.0f);
    let x_351 : bool = u_xlatb59;
    if (x_351) {
      let x_355 : vec4<f32> = vs_TEXCOORD6;
      let x_359 : vec4<f32> = x_341.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_355.x, x_355.y, x_355.x, x_355.y) + x_359);
      let x_362 : vec4<f32> = u_xlat5;
      let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
      let x_365 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_363.x, x_363.y, x_365);
      let x_378 : vec3<f32> = txVec0;
      let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_378.xy, x_378.z);
      u_xlat6.x = x_380;
      let x_383 : vec4<f32> = u_xlat5;
      let x_384 : vec2<f32> = vec2<f32>(x_383.z, x_383.w);
      let x_386 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_384.x, x_384.y, x_386);
      let x_393 : vec3<f32> = txVec1;
      let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
      u_xlat6.y = x_395;
      let x_397 : vec4<f32> = vs_TEXCOORD6;
      let x_401 : vec4<f32> = x_341.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_397.x, x_397.y, x_397.x, x_397.y) + x_401);
      let x_404 : vec4<f32> = u_xlat5;
      let x_405 : vec2<f32> = vec2<f32>(x_404.x, x_404.y);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_414 : vec3<f32> = txVec2;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_414.xy, x_414.z);
      u_xlat6.z = x_416;
      let x_419 : vec4<f32> = u_xlat5;
      let x_420 : vec2<f32> = vec2<f32>(x_419.z, x_419.w);
      let x_422 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_420.x, x_420.y, x_422);
      let x_429 : vec3<f32> = txVec3;
      let x_431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_429.xy, x_429.z);
      u_xlat6.w = x_431;
      let x_434 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_434, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_441 : f32 = x_341.x_MainLightShadowParams.y;
      u_xlatb60 = (x_441 == 2.0f);
      let x_443 : bool = u_xlatb60;
      if (x_443) {
        let x_446 : vec4<f32> = vs_TEXCOORD6;
        let x_450 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_454 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_450.z, x_450.w)) + vec2<f32>(0.5f, 0.5f));
        let x_455 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec4<f32> = u_xlat5;
        let x_459 : vec2<f32> = floor(vec2<f32>(x_457.x, x_457.y));
        let x_460 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_464 : vec4<f32> = vs_TEXCOORD6;
        let x_467 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_470 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(x_467.z, x_467.w)) + -(vec2<f32>(x_470.x, x_470.y)));
        let x_474 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_474.x, x_474.x, x_474.y, x_474.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_479 : vec4<f32> = u_xlat6;
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_479.x, x_479.x, x_479.z, x_479.z) * vec4<f32>(x_481.x, x_481.x, x_481.z, x_481.z));
        let x_484 : vec4<f32> = u_xlat7;
        let x_488 : vec2<f32> = (vec2<f32>(x_484.y, x_484.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_489 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_488.x, x_489.y, x_488.y, x_489.w);
        let x_491 : vec4<f32> = u_xlat7;
        let x_494 : vec2<f32> = u_xlat43;
        let x_496 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.z) * vec2<f32>(0.5f, 0.5f)) + -(x_494));
        let x_497 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_500 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_500) + vec2<f32>(1.0f, 1.0f));
        let x_504 : vec2<f32> = u_xlat43;
        let x_506 : vec2<f32> = min(x_504, vec2<f32>(0.0f, 0.0f));
        let x_507 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_509 : vec4<f32> = u_xlat8;
        let x_512 : vec4<f32> = u_xlat8;
        let x_515 : vec2<f32> = u_xlat45;
        let x_516 : vec2<f32> = ((-(vec2<f32>(x_509.x, x_509.y)) * vec2<f32>(x_512.x, x_512.y)) + x_515);
        let x_517 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_519 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_519, vec2<f32>(0.0f, 0.0f));
        let x_521 : vec2<f32> = u_xlat43;
        let x_523 : vec2<f32> = u_xlat43;
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_521) * x_523) + vec2<f32>(x_525.y, x_525.w));
        let x_528 : vec4<f32> = u_xlat8;
        let x_530 : vec2<f32> = (vec2<f32>(x_528.x, x_528.y) + vec2<f32>(1.0f, 1.0f));
        let x_531 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_533 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_533 + vec2<f32>(1.0f, 1.0f));
        let x_536 : vec4<f32> = u_xlat7;
        let x_540 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec2<f32> = u_xlat45;
        let x_544 : vec2<f32> = (x_543 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
        let x_547 : vec4<f32> = u_xlat8;
        let x_549 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_553 : vec2<f32> = u_xlat43;
        let x_554 : vec2<f32> = (x_553 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_555 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_557.y, x_557.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_561 : f32 = u_xlat8.x;
        u_xlat9.z = x_561;
        let x_564 : f32 = u_xlat43.x;
        u_xlat9.w = x_564;
        let x_567 : f32 = u_xlat10.x;
        u_xlat7.z = x_567;
        let x_570 : f32 = u_xlat6.x;
        u_xlat7.w = x_570;
        let x_573 : vec4<f32> = u_xlat7;
        let x_575 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_573.z, x_573.w, x_573.x, x_573.z) + vec4<f32>(x_575.z, x_575.w, x_575.x, x_575.z));
        let x_579 : f32 = u_xlat9.y;
        u_xlat8.z = x_579;
        let x_582 : f32 = u_xlat43.y;
        u_xlat8.w = x_582;
        let x_585 : f32 = u_xlat7.y;
        u_xlat10.z = x_585;
        let x_588 : f32 = u_xlat6.z;
        u_xlat10.w = x_588;
        let x_590 : vec4<f32> = u_xlat8;
        let x_592 : vec4<f32> = u_xlat10;
        let x_594 : vec3<f32> = (vec3<f32>(x_590.z, x_590.y, x_590.w) + vec3<f32>(x_592.z, x_592.y, x_592.w));
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat7;
        let x_599 : vec4<f32> = u_xlat11;
        let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.z, x_597.w) / vec3<f32>(x_599.z, x_599.w, x_599.y));
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat7;
        let x_610 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
        let x_613 : vec4<f32> = u_xlat10;
        let x_615 : vec4<f32> = u_xlat6;
        let x_617 : vec3<f32> = (vec3<f32>(x_613.z, x_613.y, x_613.w) / vec3<f32>(x_615.x, x_615.y, x_615.z));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_630 : vec3<f32> = (vec3<f32>(x_625.y, x_625.x, x_625.z) * vec3<f32>(x_628.x, x_628.x, x_628.x));
        let x_631 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat8;
        let x_636 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_638 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_636.y, x_636.y, x_636.y));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
        let x_642 : f32 = u_xlat8.x;
        u_xlat7.w = x_642;
        let x_644 : vec4<f32> = u_xlat5;
        let x_647 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_650 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y) * vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y)) + vec4<f32>(x_650.y, x_650.w, x_650.x, x_650.w));
        let x_653 : vec4<f32> = u_xlat5;
        let x_656 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_659 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_653.x, x_653.y) * vec2<f32>(x_656.x, x_656.y)) + vec2<f32>(x_659.z, x_659.w));
        let x_663 : f32 = u_xlat7.y;
        u_xlat8.w = x_663;
        let x_665 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = vec2<f32>(x_665.y, x_665.z);
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_667.x, x_666.x, x_667.z, x_666.y);
        let x_669 : vec4<f32> = u_xlat5;
        let x_672 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_675 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y) * vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y)) + vec4<f32>(x_675.x, x_675.y, x_675.z, x_675.y));
        let x_678 : vec4<f32> = u_xlat5;
        let x_681 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y) * vec4<f32>(x_681.x, x_681.y, x_681.x, x_681.y)) + vec4<f32>(x_684.w, x_684.y, x_684.w, x_684.z));
        let x_687 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_693 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y) * vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y)) + vec4<f32>(x_693.x, x_693.w, x_693.z, x_693.w));
        let x_697 : vec4<f32> = u_xlat6;
        let x_699 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_697.x, x_697.x, x_697.x, x_697.y) * vec4<f32>(x_699.z, x_699.w, x_699.y, x_699.z));
        let x_703 : vec4<f32> = u_xlat6;
        let x_705 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_703.y, x_703.y, x_703.z, x_703.z) * x_705);
        let x_709 : f32 = u_xlat6.z;
        let x_711 : f32 = u_xlat11.y;
        u_xlat60 = (x_709 * x_711);
        let x_714 : vec4<f32> = u_xlat9;
        let x_715 : vec2<f32> = vec2<f32>(x_714.x, x_714.y);
        let x_717 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_725 : vec3<f32> = txVec4;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_725.xy, x_725.z);
        u_xlat61 = x_727;
        let x_729 : vec4<f32> = u_xlat9;
        let x_730 : vec2<f32> = vec2<f32>(x_729.z, x_729.w);
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec5;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat5.x = x_741;
        let x_744 : f32 = u_xlat5.x;
        let x_746 : f32 = u_xlat12.y;
        u_xlat5.x = (x_744 * x_746);
        let x_750 : f32 = u_xlat12.x;
        let x_751 : f32 = u_xlat61;
        let x_754 : f32 = u_xlat5.x;
        u_xlat61 = ((x_750 * x_751) + x_754);
        let x_757 : vec2<f32> = u_xlat43;
        let x_759 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec6;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_766.xy, x_766.z);
        u_xlat5.x = x_768;
        let x_771 : f32 = u_xlat12.z;
        let x_773 : f32 = u_xlat5.x;
        let x_775 : f32 = u_xlat61;
        u_xlat61 = ((x_771 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat8;
        let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec7;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
        u_xlat5.x = x_790;
        let x_793 : f32 = u_xlat12.w;
        let x_795 : f32 = u_xlat5.x;
        let x_797 : f32 = u_xlat61;
        u_xlat61 = ((x_793 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat10;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec8;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
        u_xlat5.x = x_812;
        let x_815 : f32 = u_xlat13.x;
        let x_817 : f32 = u_xlat5.x;
        let x_819 : f32 = u_xlat61;
        u_xlat61 = ((x_815 * x_817) + x_819);
        let x_822 : vec4<f32> = u_xlat10;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec9;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_832.xy, x_832.z);
        u_xlat5.x = x_834;
        let x_837 : f32 = u_xlat13.y;
        let x_839 : f32 = u_xlat5.x;
        let x_841 : f32 = u_xlat61;
        u_xlat61 = ((x_837 * x_839) + x_841);
        let x_844 : vec4<f32> = u_xlat8;
        let x_845 : vec2<f32> = vec2<f32>(x_844.z, x_844.w);
        let x_847 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec10;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
        u_xlat5.x = x_856;
        let x_859 : f32 = u_xlat13.z;
        let x_861 : f32 = u_xlat5.x;
        let x_863 : f32 = u_xlat61;
        u_xlat61 = ((x_859 * x_861) + x_863);
        let x_866 : vec4<f32> = u_xlat7;
        let x_867 : vec2<f32> = vec2<f32>(x_866.x, x_866.y);
        let x_869 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_876 : vec3<f32> = txVec11;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
        u_xlat5.x = x_878;
        let x_881 : f32 = u_xlat13.w;
        let x_883 : f32 = u_xlat5.x;
        let x_885 : f32 = u_xlat61;
        u_xlat61 = ((x_881 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat7;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
        u_xlat5.x = x_900;
        let x_902 : f32 = u_xlat60;
        let x_904 : f32 = u_xlat5.x;
        let x_906 : f32 = u_xlat61;
        u_xlat59 = ((x_902 * x_904) + x_906);
      } else {
        let x_909 : vec4<f32> = vs_TEXCOORD6;
        let x_912 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_915 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + vec2<f32>(0.5f, 0.5f));
        let x_916 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat5;
        let x_920 : vec2<f32> = floor(vec2<f32>(x_918.x, x_918.y));
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec4<f32> = vs_TEXCOORD6;
        let x_926 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_929 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926.z, x_926.w)) + -(vec2<f32>(x_929.x, x_929.y)));
        let x_933 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_933.x, x_933.x, x_933.y, x_933.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_936 : vec4<f32> = u_xlat6;
        let x_938 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_936.x, x_936.x, x_936.z, x_936.z) * vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z));
        let x_941 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = (vec2<f32>(x_941.y, x_941.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_948 : vec4<f32> = u_xlat7;
        let x_951 : vec2<f32> = u_xlat43;
        let x_953 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.z) * vec2<f32>(0.5f, 0.5f)) + -(x_951));
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_953.x, x_954.y, x_953.y, x_954.w);
        let x_956 : vec2<f32> = u_xlat43;
        let x_958 : vec2<f32> = (-(x_956) + vec2<f32>(1.0f, 1.0f));
        let x_959 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_961, vec2<f32>(0.0f, 0.0f));
        let x_963 : vec2<f32> = u_xlat45;
        let x_965 : vec2<f32> = u_xlat45;
        let x_967 : vec4<f32> = u_xlat7;
        let x_969 : vec2<f32> = ((-(x_963) * x_965) + vec2<f32>(x_967.x, x_967.y));
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_972, vec2<f32>(0.0f, 0.0f));
        let x_975 : vec2<f32> = u_xlat45;
        let x_977 : vec2<f32> = u_xlat45;
        let x_979 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = ((-(x_975) * x_977) + vec2<f32>(x_979.y, x_979.w));
        let x_982 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_981.x, x_982.y, x_981.y);
        let x_984 : vec4<f32> = u_xlat7;
        let x_986 : vec2<f32> = (vec2<f32>(x_984.x, x_984.y) + vec2<f32>(2.0f, 2.0f));
        let x_987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
        let x_989 : vec3<f32> = u_xlat25;
        let x_991 : vec2<f32> = (vec2<f32>(x_989.x, x_989.z) + vec2<f32>(2.0f, 2.0f));
        let x_992 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_992.x, x_991.x, x_992.z, x_991.y);
        let x_995 : f32 = u_xlat6.y;
        u_xlat9.z = (x_995 * 0.081632003f);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec3<f32> = (vec3<f32>(x_999.z, x_999.x, x_999.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1003 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat7;
        let x_1008 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1012 : f32 = u_xlat10.y;
        u_xlat9.x = x_1012;
        let x_1014 : vec2<f32> = u_xlat43;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1014.x, x_1014.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1022.x, x_1021.x, x_1022.z, x_1021.y);
        let x_1024 : vec2<f32> = u_xlat43;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1024.x, x_1024.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1032 : f32 = u_xlat6.x;
        u_xlat7.y = x_1032;
        let x_1035 : f32 = u_xlat8.y;
        u_xlat7.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1037 + x_1038);
        let x_1040 : vec2<f32> = u_xlat43;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1040.y, x_1040.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1044 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1043.x, x_1044.z, x_1043.y);
        let x_1046 : vec2<f32> = u_xlat43;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1046.y, x_1046.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1050.w);
        let x_1053 : f32 = u_xlat6.y;
        u_xlat8.y = x_1053;
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1055 + x_1056);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1058 / x_1059);
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1061 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1068 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1067 / x_1068);
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1070 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1075 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1072.w, x_1072.x, x_1072.y, x_1072.z) * vec4<f32>(x_1075.x, x_1075.x, x_1075.x, x_1075.x));
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1081 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1078.x, x_1078.w, x_1078.y, x_1078.z) * vec4<f32>(x_1081.y, x_1081.y, x_1081.y, x_1081.y));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1085 : vec3<f32> = vec3<f32>(x_1084.y, x_1084.z, x_1084.w);
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1085.z);
        let x_1089 : f32 = u_xlat8.x;
        u_xlat10.y = x_1089;
        let x_1091 : vec4<f32> = u_xlat5;
        let x_1094 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) * vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y)) + vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat5;
        let x_1103 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.w, x_1106.y));
        let x_1110 : f32 = u_xlat10.y;
        u_xlat7.y = x_1110;
        let x_1113 : f32 = u_xlat8.z;
        u_xlat10.y = x_1113;
        let x_1115 : vec4<f32> = u_xlat5;
        let x_1118 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat5;
        let x_1127 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1127.x, x_1127.y)) + vec2<f32>(x_1130.w, x_1130.y));
        let x_1133 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1136 : f32 = u_xlat10.y;
        u_xlat7.z = x_1136;
        let x_1139 : vec4<f32> = u_xlat5;
        let x_1142 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y) * vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y)) + vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.z));
        let x_1149 : f32 = u_xlat8.w;
        u_xlat10.y = x_1149;
        let x_1152 : vec4<f32> = u_xlat5;
        let x_1155 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) * vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y)) + vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1158.y));
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.w, x_1168.y));
        let x_1172 : f32 = u_xlat10.y;
        u_xlat7.w = x_1172;
        let x_1175 : vec4<f32> = u_xlat5;
        let x_1178 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.x, x_1181.w));
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.x, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1191 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y) * vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y)) + vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1194.y));
        let x_1198 : vec4<f32> = u_xlat5;
        let x_1201 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.w, x_1204.y));
        let x_1208 : f32 = u_xlat7.x;
        u_xlat8.x = x_1208;
        let x_1210 : vec4<f32> = u_xlat5;
        let x_1213 : vec4<f32> = x_341.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1213.x, x_1213.y)) + vec2<f32>(x_1216.x, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1222 : vec4<f32> = u_xlat6;
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1222.x, x_1222.x, x_1222.x, x_1222.x) * x_1224);
        let x_1227 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1227.y, x_1227.y, x_1227.y, x_1227.y) * x_1229);
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1232.z, x_1232.z, x_1232.z, x_1232.z) * x_1234);
        let x_1236 : vec4<f32> = u_xlat6;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1236.w, x_1236.w, x_1236.w, x_1236.w) * x_1238);
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec13;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat60 = x_1253;
        let x_1255 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.z, x_1255.w);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec14;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat61 = x_1267;
        let x_1268 : f32 = u_xlat61;
        let x_1270 : f32 = u_xlat16.y;
        u_xlat61 = (x_1268 * x_1270);
        let x_1273 : f32 = u_xlat16.x;
        let x_1274 : f32 = u_xlat60;
        let x_1276 : f32 = u_xlat61;
        u_xlat60 = ((x_1273 * x_1274) + x_1276);
        let x_1279 : vec2<f32> = u_xlat43;
        let x_1281 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec15;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1288.xy, x_1288.z);
        u_xlat61 = x_1290;
        let x_1292 : f32 = u_xlat16.z;
        let x_1293 : f32 = u_xlat61;
        let x_1295 : f32 = u_xlat60;
        u_xlat60 = ((x_1292 * x_1293) + x_1295);
        let x_1298 : vec4<f32> = u_xlat14;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec16;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1308.xy, x_1308.z);
        u_xlat61 = x_1310;
        let x_1312 : f32 = u_xlat16.w;
        let x_1313 : f32 = u_xlat61;
        let x_1315 : f32 = u_xlat60;
        u_xlat60 = ((x_1312 * x_1313) + x_1315);
        let x_1318 : vec4<f32> = u_xlat12;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.x, x_1318.y);
        let x_1321 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec17;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat61 = x_1330;
        let x_1332 : f32 = u_xlat17.x;
        let x_1333 : f32 = u_xlat61;
        let x_1335 : f32 = u_xlat60;
        u_xlat60 = ((x_1332 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat12;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.z, x_1338.w);
        let x_1341 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec18;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1348.xy, x_1348.z);
        u_xlat61 = x_1350;
        let x_1352 : f32 = u_xlat17.y;
        let x_1353 : f32 = u_xlat61;
        let x_1355 : f32 = u_xlat60;
        u_xlat60 = ((x_1352 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat13;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec19;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat61 = x_1370;
        let x_1372 : f32 = u_xlat17.z;
        let x_1373 : f32 = u_xlat61;
        let x_1375 : f32 = u_xlat60;
        u_xlat60 = ((x_1372 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat14;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.z, x_1378.w);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec20;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat61 = x_1390;
        let x_1392 : f32 = u_xlat17.w;
        let x_1393 : f32 = u_xlat61;
        let x_1395 : f32 = u_xlat60;
        u_xlat60 = ((x_1392 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat15;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec21;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat61 = x_1410;
        let x_1412 : f32 = u_xlat18.x;
        let x_1413 : f32 = u_xlat61;
        let x_1415 : f32 = u_xlat60;
        u_xlat60 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat15;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec22;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat61 = x_1430;
        let x_1432 : f32 = u_xlat18.y;
        let x_1433 : f32 = u_xlat61;
        let x_1435 : f32 = u_xlat60;
        u_xlat60 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec2<f32> = u_xlat26;
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec23;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat61 = x_1449;
        let x_1451 : f32 = u_xlat18.z;
        let x_1452 : f32 = u_xlat61;
        let x_1454 : f32 = u_xlat60;
        u_xlat60 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec2<f32> = u_xlat51;
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec24;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat61 = x_1468;
        let x_1470 : f32 = u_xlat18.w;
        let x_1471 : f32 = u_xlat61;
        let x_1473 : f32 = u_xlat60;
        u_xlat60 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat10;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec25;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat61 = x_1488;
        let x_1490 : f32 = u_xlat6.x;
        let x_1491 : f32 = u_xlat61;
        let x_1493 : f32 = u_xlat60;
        u_xlat60 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat10;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.z, x_1496.w);
        let x_1499 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec26;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat61 = x_1508;
        let x_1510 : f32 = u_xlat6.y;
        let x_1511 : f32 = u_xlat61;
        let x_1513 : f32 = u_xlat60;
        u_xlat60 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat46;
        let x_1518 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec27;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat61 = x_1527;
        let x_1529 : f32 = u_xlat6.z;
        let x_1530 : f32 = u_xlat61;
        let x_1532 : f32 = u_xlat60;
        u_xlat60 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat5;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec28;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat61 = x_1547;
        let x_1549 : f32 = u_xlat6.w;
        let x_1550 : f32 = u_xlat61;
        let x_1552 : f32 = u_xlat60;
        u_xlat59 = ((x_1549 * x_1550) + x_1552);
      }
    }
  } else {
    let x_1556 : vec4<f32> = vs_TEXCOORD6;
    let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
    let x_1559 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
    let x_1566 : vec3<f32> = txVec29;
    let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1566.xy, x_1566.z);
    u_xlat59 = x_1568;
  }
  let x_1570 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat60 = (-(x_1570) + 1.0f);
  let x_1573 : f32 = u_xlat59;
  let x_1575 : f32 = x_341.x_MainLightShadowParams.x;
  let x_1577 : f32 = u_xlat60;
  u_xlat59 = ((x_1573 * x_1575) + x_1577);
  let x_1580 : f32 = vs_TEXCOORD6.z;
  u_xlatb60 = (0.0f >= x_1580);
  let x_1584 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1584 >= 1.0f);
  let x_1586 : bool = u_xlatb60;
  let x_1587 : bool = u_xlatb61;
  u_xlatb60 = (x_1586 | x_1587);
  let x_1589 : bool = u_xlatb60;
  let x_1590 : f32 = u_xlat59;
  u_xlat59 = select(x_1590, 1.0f, x_1589);
  let x_1594 : vec3<f32> = vs_TEXCOORD1;
  let x_1597 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1599 : vec3<f32> = (x_1594 + -(x_1597));
  let x_1600 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1602 : vec4<f32> = u_xlat5;
  let x_1604 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(vec3<f32>(x_1602.x, x_1602.y, x_1602.z), vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
  let x_1607 : f32 = u_xlat60;
  let x_1609 : f32 = x_341.x_MainLightShadowParams.z;
  let x_1612 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat60 = ((x_1607 * x_1609) + x_1612);
  let x_1614 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1614, 0.0f, 1.0f);
  let x_1616 : f32 = u_xlat59;
  u_xlat61 = (-(x_1616) + 1.0f);
  let x_1619 : f32 = u_xlat60;
  let x_1620 : f32 = u_xlat61;
  let x_1622 : f32 = u_xlat59;
  u_xlat59 = ((x_1619 * x_1620) + x_1622);
  let x_1630 : f32 = x_1628.x_MainLightCookieTextureFormat;
  u_xlatb60 = !((x_1630 == -1.0f));
  let x_1632 : bool = u_xlatb60;
  if (x_1632) {
    let x_1635 : vec3<f32> = vs_TEXCOORD1;
    let x_1638 : vec4<f32> = x_1628.x_MainLightWorldToLight[1i];
    let x_1640 : vec2<f32> = (vec2<f32>(x_1635.y, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y));
    let x_1641 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
    let x_1644 : vec4<f32> = x_1628.x_MainLightWorldToLight[0i];
    let x_1646 : vec3<f32> = vs_TEXCOORD1;
    let x_1649 : vec4<f32> = u_xlat5;
    let x_1651 : vec2<f32> = ((vec2<f32>(x_1644.x, x_1644.y) * vec2<f32>(x_1646.x, x_1646.x)) + vec2<f32>(x_1649.x, x_1649.y));
    let x_1652 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
    let x_1655 : vec4<f32> = x_1628.x_MainLightWorldToLight[2i];
    let x_1657 : vec3<f32> = vs_TEXCOORD1;
    let x_1660 : vec4<f32> = u_xlat5;
    let x_1662 : vec2<f32> = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1657.z, x_1657.z)) + vec2<f32>(x_1660.x, x_1660.y));
    let x_1663 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
    let x_1665 : vec4<f32> = u_xlat5;
    let x_1669 : vec4<f32> = x_1628.x_MainLightWorldToLight[3i];
    let x_1671 : vec2<f32> = (vec2<f32>(x_1665.x, x_1665.y) + vec2<f32>(x_1669.x, x_1669.y));
    let x_1672 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
    let x_1674 : vec4<f32> = u_xlat5;
    let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1678 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
    let x_1685 : vec4<f32> = u_xlat5;
    let x_1688 : f32 = x_43.x_GlobalMipBias.x;
    let x_1689 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1685.x, x_1685.y), x_1688);
    u_xlat5 = x_1689;
    let x_1694 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1696 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1698 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1700 : f32 = x_1628.x_MainLightCookieTextureFormat;
    let x_1701 : vec4<f32> = vec4<f32>(x_1694, x_1696, x_1698, x_1700);
    let x_1709 : vec4<bool> = (vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1701.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1709.x, x_1709.y);
    let x_1712 : bool = u_xlatb6.y;
    if (x_1712) {
      let x_1717 : f32 = u_xlat5.w;
      x_1713 = x_1717;
    } else {
      let x_1720 : f32 = u_xlat5.x;
      x_1713 = x_1720;
    }
    let x_1721 : f32 = x_1713;
    u_xlat60 = x_1721;
    let x_1723 : bool = u_xlatb6.x;
    if (x_1723) {
      let x_1727 : vec4<f32> = u_xlat5;
      x_1724 = vec3<f32>(x_1727.x, x_1727.y, x_1727.z);
    } else {
      let x_1730 : f32 = u_xlat60;
      x_1724 = vec3<f32>(x_1730, x_1730, x_1730);
    }
    let x_1732 : vec3<f32> = x_1724;
    let x_1733 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1739 : vec4<f32> = u_xlat5;
  let x_1742 : vec4<f32> = x_43.x_MainLightColor;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) * vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
  let x_1745 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : vec4<f32> = u_xlat1;
  let x_1749 : vec4<f32> = u_xlat5;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1747.x, x_1747.x, x_1747.x) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : f32 = u_xlat57;
  let x_1756 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_1754, x_1754, x_1754) * x_1756);
  let x_1758 : f32 = u_xlat59;
  let x_1764 : f32 = x_1762.unity_LightData.z;
  u_xlat57 = (x_1758 * x_1764);
  let x_1766 : f32 = u_xlat57;
  let x_1768 : vec4<f32> = u_xlat5;
  let x_1770 : vec3<f32> = (vec3<f32>(x_1766, x_1766, x_1766) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
  let x_1771 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  let x_1773 : vec3<f32> = u_xlat2;
  let x_1775 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(x_1773, vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1778, 0.0f, 1.0f);
  let x_1780 : f32 = u_xlat57;
  let x_1782 : vec4<f32> = u_xlat5;
  let x_1784 : vec3<f32> = (vec3<f32>(x_1780, x_1780, x_1780) * vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
  let x_1785 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1788 : f32 = x_56.x_SpecColor.w;
  u_xlat57 = ((x_1788 * 10.0f) + 1.0f);
  let x_1792 : f32 = u_xlat57;
  u_xlat57 = exp2(x_1792);
  let x_1794 : vec3<f32> = u_xlat3;
  let x_1795 : vec3<f32> = u_xlat19;
  let x_1799 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1801 : vec3<f32> = ((x_1794 * vec3<f32>(x_1795.x, x_1795.x, x_1795.x)) + vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1804 : vec4<f32> = u_xlat7;
  let x_1806 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1804.x, x_1804.y, x_1804.z), vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : f32 = u_xlat59;
  u_xlat59 = max(x_1809, 1.17549435e-37f);
  let x_1811 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_1811);
  let x_1813 : f32 = u_xlat59;
  let x_1815 : vec4<f32> = u_xlat7;
  let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec3<f32> = u_xlat2;
  let x_1821 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(x_1820, vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1824, 0.0f, 1.0f);
  let x_1826 : f32 = u_xlat59;
  u_xlat59 = log2(x_1826);
  let x_1828 : f32 = u_xlat57;
  let x_1829 : f32 = u_xlat59;
  u_xlat59 = (x_1828 * x_1829);
  let x_1831 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1831);
  let x_1833 : f32 = u_xlat59;
  let x_1836 : vec4<f32> = x_56.x_SpecColor;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1833, x_1833, x_1833) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : vec4<f32> = u_xlat5;
  let x_1843 : vec4<f32> = u_xlat7;
  let x_1845 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.y, x_1841.z) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1848 : vec4<f32> = u_xlat6;
  let x_1850 : vec4<f32> = u_xlat1;
  let x_1853 : vec4<f32> = u_xlat5;
  let x_1855 : vec3<f32> = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(x_1850.y, x_1850.z, x_1850.w)) + vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1859 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1861 : f32 = x_1762.unity_LightData.y;
  u_xlat59 = min(x_1859, x_1861);
  let x_1865 : f32 = u_xlat59;
  u_xlatu59 = bitcast<u32>(i32(x_1865));
  let x_1869 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1871 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1873 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1875 : f32 = x_1628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1876 : vec4<f32> = vec4<f32>(x_1869, x_1871, x_1873, x_1875);
  let x_1882 : vec4<bool> = (vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1876.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1882.x, x_1882.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1893 : u32 = u_xlatu_loop_1;
    let x_1894 : u32 = u_xlatu59;
    if ((x_1893 < x_1894)) {
    } else {
      break;
    }
    let x_1897 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1897 >> 2u);
    let x_1901 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1901 & 3u));
    let x_1904 : u32 = u_xlatu61;
    let x_1907 : vec4<f32> = x_1762.unity_LightIndices[bitcast<i32>(x_1904)];
    let x_1917 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1922 : vec4<u32> = indexable[x_1917];
    u_xlat61 = dot(x_1907, bitcast<vec4<f32>>(x_1922));
    let x_1925 : f32 = u_xlat61;
    u_xlatu61 = bitcast<u32>(i32(x_1925));
    let x_1928 : vec3<f32> = vs_TEXCOORD1;
    let x_1940 : u32 = u_xlatu61;
    let x_1943 : vec4<f32> = x_1939.x_AdditionalLightsPosition[bitcast<i32>(x_1940)];
    let x_1946 : u32 = u_xlatu61;
    let x_1949 : vec4<f32> = x_1939.x_AdditionalLightsPosition[bitcast<i32>(x_1946)];
    let x_1951 : vec3<f32> = ((-(x_1928) * vec3<f32>(x_1943.w, x_1943.w, x_1943.w)) + vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
    let x_1952 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
    let x_1955 : vec4<f32> = u_xlat8;
    let x_1957 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(vec3<f32>(x_1955.x, x_1955.y, x_1955.z), vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : f32 = u_xlat62;
    u_xlat62 = max(x_1960, 6.10351562e-05f);
    let x_1964 : f32 = u_xlat62;
    u_xlat44.x = inverseSqrt(x_1964);
    let x_1967 : vec2<f32> = u_xlat44;
    let x_1969 : vec4<f32> = u_xlat8;
    let x_1971 : vec3<f32> = (vec3<f32>(x_1967.x, x_1967.x, x_1967.x) * vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1974 : f32 = u_xlat62;
    u_xlat44.x = (1.0f / x_1974);
    let x_1977 : f32 = u_xlat62;
    let x_1978 : u32 = u_xlatu61;
    let x_1981 : f32 = x_1939.x_AdditionalLightsAttenuation[bitcast<i32>(x_1978)].x;
    u_xlat62 = (x_1977 * x_1981);
    let x_1983 : f32 = u_xlat62;
    let x_1985 : f32 = u_xlat62;
    u_xlat62 = ((-(x_1983) * x_1985) + 1.0f);
    let x_1988 : f32 = u_xlat62;
    u_xlat62 = max(x_1988, 0.0f);
    let x_1990 : f32 = u_xlat62;
    let x_1991 : f32 = u_xlat62;
    u_xlat62 = (x_1990 * x_1991);
    let x_1993 : f32 = u_xlat62;
    let x_1995 : f32 = u_xlat44.x;
    u_xlat62 = (x_1993 * x_1995);
    let x_1997 : u32 = u_xlatu61;
    let x_2000 : vec4<f32> = x_1939.x_AdditionalLightsSpotDir[bitcast<i32>(x_1997)];
    let x_2002 : vec4<f32> = u_xlat8;
    u_xlat44.x = dot(vec3<f32>(x_2000.x, x_2000.y, x_2000.z), vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2007 : f32 = u_xlat44.x;
    let x_2008 : u32 = u_xlatu61;
    let x_2011 : f32 = x_1939.x_AdditionalLightsAttenuation[bitcast<i32>(x_2008)].z;
    let x_2013 : u32 = u_xlatu61;
    let x_2016 : f32 = x_1939.x_AdditionalLightsAttenuation[bitcast<i32>(x_2013)].w;
    u_xlat44.x = ((x_2007 * x_2011) + x_2016);
    let x_2020 : f32 = u_xlat44.x;
    u_xlat44.x = clamp(x_2020, 0.0f, 1.0f);
    let x_2024 : f32 = u_xlat44.x;
    let x_2026 : f32 = u_xlat44.x;
    u_xlat44.x = (x_2024 * x_2026);
    let x_2029 : f32 = u_xlat62;
    let x_2031 : f32 = u_xlat44.x;
    u_xlat62 = (x_2029 * x_2031);
    let x_2034 : u32 = u_xlatu61;
    u_xlatu44 = (x_2034 >> 5u);
    let x_2037 : u32 = u_xlatu61;
    u_xlati63 = (1i << bitcast<u32>((bitcast<i32>(x_2037) & 31i)));
    let x_2043 : i32 = u_xlati63;
    let x_2045 : u32 = u_xlatu44;
    let x_2048 : f32 = x_1628.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2045)].el;
    u_xlati44 = bitcast<i32>((bitcast<u32>(x_2043) & bitcast<u32>(x_2048)));
    let x_2052 : i32 = u_xlati44;
    if ((x_2052 != 0i)) {
      let x_2062 : u32 = u_xlatu61;
      let x_2065 : f32 = x_2061.x_AdditionalLightsLightTypes[bitcast<i32>(x_2062)].el;
      u_xlati44 = i32(x_2065);
      let x_2067 : i32 = u_xlati44;
      u_xlati63 = select(1i, 0i, (x_2067 != 0i));
      let x_2071 : u32 = u_xlatu61;
      u_xlati64 = (bitcast<i32>(x_2071) << bitcast<u32>(2i));
      let x_2074 : i32 = u_xlati63;
      if ((x_2074 != 0i)) {
        let x_2078 : vec3<f32> = vs_TEXCOORD1;
        let x_2080 : i32 = u_xlati64;
        let x_2083 : i32 = u_xlati64;
        let x_2087 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2080 + 1i) / 4i)][((x_2083 + 1i) % 4i)];
        let x_2089 : vec3<f32> = (vec3<f32>(x_2078.y, x_2078.y, x_2078.y) * vec3<f32>(x_2087.x, x_2087.y, x_2087.w));
        let x_2090 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
        let x_2092 : i32 = u_xlati64;
        let x_2094 : i32 = u_xlati64;
        let x_2097 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[(x_2092 / 4i)][(x_2094 % 4i)];
        let x_2099 : vec3<f32> = vs_TEXCOORD1;
        let x_2102 : vec4<f32> = u_xlat9;
        let x_2104 : vec3<f32> = ((vec3<f32>(x_2097.x, x_2097.y, x_2097.w) * vec3<f32>(x_2099.x, x_2099.x, x_2099.x)) + vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
        let x_2105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
        let x_2107 : i32 = u_xlati64;
        let x_2110 : i32 = u_xlati64;
        let x_2114 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2107 + 2i) / 4i)][((x_2110 + 2i) % 4i)];
        let x_2116 : vec3<f32> = vs_TEXCOORD1;
        let x_2119 : vec4<f32> = u_xlat9;
        let x_2121 : vec3<f32> = ((vec3<f32>(x_2114.x, x_2114.y, x_2114.w) * vec3<f32>(x_2116.z, x_2116.z, x_2116.z)) + vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
        let x_2122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
        let x_2124 : vec4<f32> = u_xlat9;
        let x_2126 : i32 = u_xlati64;
        let x_2129 : i32 = u_xlati64;
        let x_2133 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2126 + 3i) / 4i)][((x_2129 + 3i) % 4i)];
        let x_2135 : vec3<f32> = (vec3<f32>(x_2124.x, x_2124.y, x_2124.z) + vec3<f32>(x_2133.x, x_2133.y, x_2133.w));
        let x_2136 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
        let x_2138 : vec4<f32> = u_xlat9;
        let x_2140 : vec4<f32> = u_xlat9;
        let x_2142 : vec2<f32> = (vec2<f32>(x_2138.x, x_2138.y) / vec2<f32>(x_2140.z, x_2140.z));
        let x_2143 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2142.x, x_2142.y, x_2143.z, x_2143.w);
        let x_2145 : vec4<f32> = u_xlat9;
        let x_2148 : vec2<f32> = ((vec2<f32>(x_2145.x, x_2145.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2148.x, x_2148.y, x_2149.z, x_2149.w);
        let x_2151 : vec4<f32> = u_xlat9;
        let x_2155 : vec2<f32> = clamp(vec2<f32>(x_2151.x, x_2151.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2156 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2155.x, x_2155.y, x_2156.z, x_2156.w);
        let x_2158 : u32 = u_xlatu61;
        let x_2161 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2158)];
        let x_2163 : vec4<f32> = u_xlat9;
        let x_2166 : u32 = u_xlatu61;
        let x_2169 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2166)];
        let x_2171 : vec2<f32> = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(x_2163.x, x_2163.y)) + vec2<f32>(x_2169.z, x_2169.w));
        let x_2172 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
      } else {
        let x_2176 : i32 = u_xlati44;
        u_xlatb44 = (x_2176 == 1i);
        let x_2178 : bool = u_xlatb44;
        u_xlati44 = select(0i, 1i, x_2178);
        let x_2180 : i32 = u_xlati44;
        if ((x_2180 != 0i)) {
          let x_2184 : vec3<f32> = vs_TEXCOORD1;
          let x_2186 : i32 = u_xlati64;
          let x_2189 : i32 = u_xlati64;
          let x_2193 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2186 + 1i) / 4i)][((x_2189 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2184.y, x_2184.y) * vec2<f32>(x_2193.x, x_2193.y));
          let x_2196 : i32 = u_xlati64;
          let x_2198 : i32 = u_xlati64;
          let x_2201 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[(x_2196 / 4i)][(x_2198 % 4i)];
          let x_2203 : vec3<f32> = vs_TEXCOORD1;
          let x_2206 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2201.x, x_2201.y) * vec2<f32>(x_2203.x, x_2203.x)) + x_2206);
          let x_2208 : i32 = u_xlati64;
          let x_2211 : i32 = u_xlati64;
          let x_2215 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2208 + 2i) / 4i)][((x_2211 + 2i) % 4i)];
          let x_2217 : vec3<f32> = vs_TEXCOORD1;
          let x_2220 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2215.x, x_2215.y) * vec2<f32>(x_2217.z, x_2217.z)) + x_2220);
          let x_2222 : vec2<f32> = u_xlat44;
          let x_2223 : i32 = u_xlati64;
          let x_2226 : i32 = u_xlati64;
          let x_2230 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2223 + 3i) / 4i)][((x_2226 + 3i) % 4i)];
          u_xlat44 = (x_2222 + vec2<f32>(x_2230.x, x_2230.y));
          let x_2233 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2233 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2236 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2236);
          let x_2238 : u32 = u_xlatu61;
          let x_2241 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2238)];
          let x_2243 : vec2<f32> = u_xlat44;
          let x_2245 : u32 = u_xlatu61;
          let x_2248 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2245)];
          let x_2250 : vec2<f32> = ((vec2<f32>(x_2241.x, x_2241.y) * x_2243) + vec2<f32>(x_2248.z, x_2248.w));
          let x_2251 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2251.z, x_2251.w);
        } else {
          let x_2254 : vec3<f32> = vs_TEXCOORD1;
          let x_2256 : i32 = u_xlati64;
          let x_2259 : i32 = u_xlati64;
          let x_2263 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2256 + 1i) / 4i)][((x_2259 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2254.y, x_2254.y, x_2254.y, x_2254.y) * x_2263);
          let x_2265 : i32 = u_xlati64;
          let x_2267 : i32 = u_xlati64;
          let x_2270 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[(x_2265 / 4i)][(x_2267 % 4i)];
          let x_2271 : vec3<f32> = vs_TEXCOORD1;
          let x_2274 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2270 * vec4<f32>(x_2271.x, x_2271.x, x_2271.x, x_2271.x)) + x_2274);
          let x_2276 : i32 = u_xlati64;
          let x_2279 : i32 = u_xlati64;
          let x_2283 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2276 + 2i) / 4i)][((x_2279 + 2i) % 4i)];
          let x_2284 : vec3<f32> = vs_TEXCOORD1;
          let x_2287 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2283 * vec4<f32>(x_2284.z, x_2284.z, x_2284.z, x_2284.z)) + x_2287);
          let x_2289 : vec4<f32> = u_xlat10;
          let x_2290 : i32 = u_xlati64;
          let x_2293 : i32 = u_xlati64;
          let x_2297 : vec4<f32> = x_2061.x_AdditionalLightsWorldToLights[((x_2290 + 3i) / 4i)][((x_2293 + 3i) % 4i)];
          u_xlat10 = (x_2289 + x_2297);
          let x_2299 : vec4<f32> = u_xlat10;
          let x_2301 : vec4<f32> = u_xlat10;
          let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) / vec3<f32>(x_2301.w, x_2301.w, x_2301.w));
          let x_2304 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
          let x_2306 : vec4<f32> = u_xlat10;
          let x_2308 : vec4<f32> = u_xlat10;
          u_xlat44.x = dot(vec3<f32>(x_2306.x, x_2306.y, x_2306.z), vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
          let x_2313 : f32 = u_xlat44.x;
          u_xlat44.x = inverseSqrt(x_2313);
          let x_2316 : vec2<f32> = u_xlat44;
          let x_2318 : vec4<f32> = u_xlat10;
          let x_2320 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.x, x_2316.x) * vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
          let x_2321 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
          let x_2323 : vec4<f32> = u_xlat10;
          u_xlat44.x = dot(abs(vec3<f32>(x_2323.x, x_2323.y, x_2323.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2330 : f32 = u_xlat44.x;
          u_xlat44.x = max(x_2330, 0.000001f);
          let x_2335 : f32 = u_xlat44.x;
          u_xlat44.x = (1.0f / x_2335);
          let x_2338 : vec2<f32> = u_xlat44;
          let x_2340 : vec4<f32> = u_xlat10;
          let x_2342 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.x, x_2338.x) * vec3<f32>(x_2340.z, x_2340.x, x_2340.y));
          let x_2343 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
          let x_2346 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2346);
          let x_2350 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2350, 0.0f, 1.0f);
          let x_2354 : vec4<f32> = u_xlat11;
          let x_2357 : vec4<bool> = (vec4<f32>(x_2354.y, x_2354.z, x_2354.y, x_2354.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2357.x, x_2357.y);
          let x_2361 : bool = u_xlatb47.x;
          if (x_2361) {
            let x_2366 : f32 = u_xlat11.x;
            x_2362 = x_2366;
          } else {
            let x_2369 : f32 = u_xlat11.x;
            x_2362 = -(x_2369);
          }
          let x_2371 : f32 = x_2362;
          u_xlat47.x = x_2371;
          let x_2374 : bool = u_xlatb47.y;
          if (x_2374) {
            let x_2379 : f32 = u_xlat11.x;
            x_2375 = x_2379;
          } else {
            let x_2382 : f32 = u_xlat11.x;
            x_2375 = -(x_2382);
          }
          let x_2384 : f32 = x_2375;
          u_xlat47.y = x_2384;
          let x_2386 : vec4<f32> = u_xlat10;
          let x_2388 : vec2<f32> = u_xlat44;
          let x_2391 : vec2<f32> = u_xlat47;
          u_xlat44 = ((vec2<f32>(x_2386.x, x_2386.y) * vec2<f32>(x_2388.x, x_2388.x)) + x_2391);
          let x_2393 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2393 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2396 : vec2<f32> = u_xlat44;
          u_xlat44 = clamp(x_2396, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2400 : u32 = u_xlatu61;
          let x_2403 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2400)];
          let x_2405 : vec2<f32> = u_xlat44;
          let x_2407 : u32 = u_xlatu61;
          let x_2410 : vec4<f32> = x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2407)];
          let x_2412 : vec2<f32> = ((vec2<f32>(x_2403.x, x_2403.y) * x_2405) + vec2<f32>(x_2410.z, x_2410.w));
          let x_2413 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2412.x, x_2412.y, x_2413.z, x_2413.w);
        }
      }
      let x_2420 : vec4<f32> = u_xlat9;
      let x_2423 : f32 = x_43.x_GlobalMipBias.x;
      let x_2424 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2420.x, x_2420.y), x_2423);
      u_xlat9 = x_2424;
      let x_2426 : bool = u_xlatb6.y;
      if (x_2426) {
        let x_2431 : f32 = u_xlat9.w;
        x_2427 = x_2431;
      } else {
        let x_2434 : f32 = u_xlat9.x;
        x_2427 = x_2434;
      }
      let x_2435 : f32 = x_2427;
      u_xlat44.x = x_2435;
      let x_2438 : bool = u_xlatb6.x;
      if (x_2438) {
        let x_2442 : vec4<f32> = u_xlat9;
        x_2439 = vec3<f32>(x_2442.x, x_2442.y, x_2442.z);
      } else {
        let x_2445 : vec2<f32> = u_xlat44;
        x_2439 = vec3<f32>(x_2445.x, x_2445.x, x_2445.x);
      }
      let x_2447 : vec3<f32> = x_2439;
      let x_2448 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2454 : vec4<f32> = u_xlat9;
    let x_2456 : u32 = u_xlatu61;
    let x_2459 : vec4<f32> = x_1939.x_AdditionalLightsColor[bitcast<i32>(x_2456)];
    let x_2461 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.y, x_2454.z) * vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
    let x_2462 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
    let x_2464 : vec4<f32> = u_xlat1;
    let x_2466 : vec4<f32> = u_xlat9;
    let x_2468 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.x, x_2464.x) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
    let x_2469 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
    let x_2471 : f32 = u_xlat62;
    let x_2473 : vec4<f32> = u_xlat9;
    let x_2475 : vec3<f32> = (vec3<f32>(x_2471, x_2471, x_2471) * vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
    let x_2476 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
    let x_2478 : vec3<f32> = u_xlat2;
    let x_2479 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(x_2478, vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
    let x_2482 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2482, 0.0f, 1.0f);
    let x_2484 : f32 = u_xlat61;
    let x_2486 : vec4<f32> = u_xlat9;
    let x_2488 : vec3<f32> = (vec3<f32>(x_2484, x_2484, x_2484) * vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
    let x_2489 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
    let x_2491 : vec3<f32> = u_xlat3;
    let x_2492 : vec3<f32> = u_xlat19;
    let x_2495 : vec4<f32> = u_xlat8;
    let x_2497 : vec3<f32> = ((x_2491 * vec3<f32>(x_2492.x, x_2492.x, x_2492.x)) + vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
    let x_2498 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
    let x_2500 : vec4<f32> = u_xlat8;
    let x_2502 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(vec3<f32>(x_2500.x, x_2500.y, x_2500.z), vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
    let x_2505 : f32 = u_xlat61;
    u_xlat61 = max(x_2505, 1.17549435e-37f);
    let x_2507 : f32 = u_xlat61;
    u_xlat61 = inverseSqrt(x_2507);
    let x_2509 : f32 = u_xlat61;
    let x_2511 : vec4<f32> = u_xlat8;
    let x_2513 : vec3<f32> = (vec3<f32>(x_2509, x_2509, x_2509) * vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
    let x_2514 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
    let x_2516 : vec3<f32> = u_xlat2;
    let x_2517 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(x_2516, vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
    let x_2520 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2520, 0.0f, 1.0f);
    let x_2522 : f32 = u_xlat61;
    u_xlat61 = log2(x_2522);
    let x_2524 : f32 = u_xlat57;
    let x_2525 : f32 = u_xlat61;
    u_xlat61 = (x_2524 * x_2525);
    let x_2527 : f32 = u_xlat61;
    u_xlat61 = exp2(x_2527);
    let x_2529 : f32 = u_xlat61;
    let x_2532 : vec4<f32> = x_56.x_SpecColor;
    let x_2534 : vec3<f32> = (vec3<f32>(x_2529, x_2529, x_2529) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
    let x_2535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
    let x_2537 : vec4<f32> = u_xlat8;
    let x_2539 : vec4<f32> = u_xlat9;
    let x_2541 : vec3<f32> = (vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
    let x_2542 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
    let x_2544 : vec4<f32> = u_xlat10;
    let x_2546 : vec4<f32> = u_xlat1;
    let x_2549 : vec4<f32> = u_xlat8;
    let x_2551 : vec3<f32> = ((vec3<f32>(x_2544.x, x_2544.y, x_2544.z) * vec3<f32>(x_2546.y, x_2546.z, x_2546.w)) + vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2552 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
    let x_2554 : vec4<f32> = u_xlat7;
    let x_2556 : vec4<f32> = u_xlat8;
    let x_2558 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.y, x_2554.z) + vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
    let x_2559 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);

    continuing {
      let x_2561 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2561 + bitcast<u32>(1i));
    }
  }
  let x_2563 : vec3<f32> = u_xlat4;
  let x_2564 : vec4<f32> = u_xlat1;
  let x_2567 : vec4<f32> = u_xlat5;
  let x_2569 : vec3<f32> = ((x_2563 * vec3<f32>(x_2564.y, x_2564.z, x_2564.w)) + vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2574 : vec4<f32> = u_xlat7;
  let x_2576 : vec4<f32> = u_xlat1;
  let x_2578 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) + vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2582 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2582 == 1.0f);
  let x_2584 : bool = u_xlatb19;
  let x_2585 : bool = u_xlatb38;
  u_xlatb19 = (x_2584 | x_2585);
  let x_2587 : bool = u_xlatb19;
  if (x_2587) {
    let x_2592 : f32 = u_xlat0.x;
    x_2588 = x_2592;
  } else {
    x_2588 = 1.0f;
  }
  let x_2594 : f32 = x_2588;
  SV_Target0.w = x_2594;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

