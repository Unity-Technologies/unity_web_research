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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_381 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1667 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1804 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1981 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2103 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
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
  var x_1752 : f32;
  var x_1763 : vec3<f32>;
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
  var x_2404 : f32;
  var x_2417 : f32;
  var x_2469 : f32;
  var x_2481 : vec3<f32>;
  var x_2631 : f32;
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
  let x_278 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_275, x_277);
  u_xlat4 = x_278;
  let x_284 : vec2<f32> = vs_TEXCOORD7;
  let x_286 : f32 = x_43.x_GlobalMipBias.x;
  let x_287 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_284, x_286);
  let x_288 : vec3<f32> = vec3<f32>(x_287.x, x_287.y, x_287.z);
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_295 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec3<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(x_298, vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : f32 = u_xlat57;
  u_xlat57 = (x_302 + 0.5f);
  let x_304 : f32 = u_xlat57;
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_312 : f32 = u_xlat4.w;
  u_xlat57 = max(x_312, 0.0001f);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : f32 = u_xlat57;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) / vec3<f32>(x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_324 : vec2<f32> = vec2<f32>(x_323.x, x_323.y);
  let x_328 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_324.x, x_324.y));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = hlslcc_FragCoord;
  let x_335 : vec2<f32> = (vec2<f32>(x_331.x, x_331.y) * vec2<f32>(x_333.x, x_333.y));
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
  let x_339 : f32 = u_xlat5.y;
  let x_342 : f32 = x_43.x_ScaleBiasRt.x;
  let x_345 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_339 * x_342) + x_345);
  let x_347 : f32 = u_xlat57;
  u_xlat5.z = (-(x_347) + 1.0f);
  let x_356 : vec4<f32> = u_xlat5;
  let x_359 : f32 = x_43.x_GlobalMipBias.x;
  let x_360 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_356.x, x_356.z), x_359);
  u_xlat57 = x_360.x;
  let x_362 : f32 = u_xlat57;
  u_xlat1.x = (x_362 + -1.0f);
  let x_367 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_369 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_367 * x_369) + 1.0f);
  let x_373 : f32 = u_xlat57;
  u_xlat57 = min(x_373, 1.0f);
  let x_383 : f32 = x_381.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_383);
  let x_385 : bool = u_xlatb59;
  if (x_385) {
    let x_389 : f32 = x_381.x_MainLightShadowParams.y;
    u_xlatb59 = (x_389 == 1.0f);
    let x_391 : bool = u_xlatb59;
    if (x_391) {
      let x_395 : vec4<f32> = vs_TEXCOORD6;
      let x_399 : vec4<f32> = x_381.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_395.x, x_395.y, x_395.x, x_395.y) + x_399);
      let x_402 : vec4<f32> = u_xlat5;
      let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
      let x_405 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_403.x, x_403.y, x_405);
      let x_418 : vec3<f32> = txVec0;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
      u_xlat6.x = x_420;
      let x_423 : vec4<f32> = u_xlat5;
      let x_424 : vec2<f32> = vec2<f32>(x_423.z, x_423.w);
      let x_426 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_424.x, x_424.y, x_426);
      let x_433 : vec3<f32> = txVec1;
      let x_435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_433.xy, x_433.z);
      u_xlat6.y = x_435;
      let x_437 : vec4<f32> = vs_TEXCOORD6;
      let x_441 : vec4<f32> = x_381.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_437.x, x_437.y, x_437.x, x_437.y) + x_441);
      let x_444 : vec4<f32> = u_xlat5;
      let x_445 : vec2<f32> = vec2<f32>(x_444.x, x_444.y);
      let x_447 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_445.x, x_445.y, x_447);
      let x_454 : vec3<f32> = txVec2;
      let x_456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_454.xy, x_454.z);
      u_xlat6.z = x_456;
      let x_459 : vec4<f32> = u_xlat5;
      let x_460 : vec2<f32> = vec2<f32>(x_459.z, x_459.w);
      let x_462 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_469 : vec3<f32> = txVec3;
      let x_471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_469.xy, x_469.z);
      u_xlat6.w = x_471;
      let x_474 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_474, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_481 : f32 = x_381.x_MainLightShadowParams.y;
      u_xlatb60 = (x_481 == 2.0f);
      let x_483 : bool = u_xlatb60;
      if (x_483) {
        let x_486 : vec4<f32> = vs_TEXCOORD6;
        let x_490 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_494 : vec2<f32> = ((vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_490.z, x_490.w)) + vec2<f32>(0.5f, 0.5f));
        let x_495 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_497 : vec4<f32> = u_xlat5;
        let x_499 : vec2<f32> = floor(vec2<f32>(x_497.x, x_497.y));
        let x_500 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_504 : vec4<f32> = vs_TEXCOORD6;
        let x_507 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_507.z, x_507.w)) + -(vec2<f32>(x_510.x, x_510.y)));
        let x_514 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_514.x, x_514.x, x_514.y, x_514.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_519 : vec4<f32> = u_xlat6;
        let x_521 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_519.x, x_519.x, x_519.z, x_519.z) * vec4<f32>(x_521.x, x_521.x, x_521.z, x_521.z));
        let x_524 : vec4<f32> = u_xlat7;
        let x_528 : vec2<f32> = (vec2<f32>(x_524.y, x_524.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_528.x, x_529.y, x_528.y, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_534 : vec2<f32> = u_xlat43;
        let x_536 : vec2<f32> = ((vec2<f32>(x_531.x, x_531.z) * vec2<f32>(0.5f, 0.5f)) + -(x_534));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_540 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_540) + vec2<f32>(1.0f, 1.0f));
        let x_544 : vec2<f32> = u_xlat43;
        let x_546 : vec2<f32> = min(x_544, vec2<f32>(0.0f, 0.0f));
        let x_547 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat8;
        let x_552 : vec4<f32> = u_xlat8;
        let x_555 : vec2<f32> = u_xlat45;
        let x_556 : vec2<f32> = ((-(vec2<f32>(x_549.x, x_549.y)) * vec2<f32>(x_552.x, x_552.y)) + x_555);
        let x_557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_559, vec2<f32>(0.0f, 0.0f));
        let x_561 : vec2<f32> = u_xlat43;
        let x_563 : vec2<f32> = u_xlat43;
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_561) * x_563) + vec2<f32>(x_565.y, x_565.w));
        let x_568 : vec4<f32> = u_xlat8;
        let x_570 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) + vec2<f32>(1.0f, 1.0f));
        let x_571 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_573 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_573 + vec2<f32>(1.0f, 1.0f));
        let x_576 : vec4<f32> = u_xlat7;
        let x_580 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec2<f32> = u_xlat45;
        let x_584 : vec2<f32> = (x_583 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_589 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_593 : vec2<f32> = u_xlat43;
        let x_594 : vec2<f32> = (x_593 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_595 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_597.y, x_597.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_601 : f32 = u_xlat8.x;
        u_xlat9.z = x_601;
        let x_604 : f32 = u_xlat43.x;
        u_xlat9.w = x_604;
        let x_607 : f32 = u_xlat10.x;
        u_xlat7.z = x_607;
        let x_610 : f32 = u_xlat6.x;
        u_xlat7.w = x_610;
        let x_613 : vec4<f32> = u_xlat7;
        let x_615 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_613.z, x_613.w, x_613.x, x_613.z) + vec4<f32>(x_615.z, x_615.w, x_615.x, x_615.z));
        let x_619 : f32 = u_xlat9.y;
        u_xlat8.z = x_619;
        let x_622 : f32 = u_xlat43.y;
        u_xlat8.w = x_622;
        let x_625 : f32 = u_xlat7.y;
        u_xlat10.z = x_625;
        let x_628 : f32 = u_xlat6.z;
        u_xlat10.w = x_628;
        let x_630 : vec4<f32> = u_xlat8;
        let x_632 : vec4<f32> = u_xlat10;
        let x_634 : vec3<f32> = (vec3<f32>(x_630.z, x_630.y, x_630.w) + vec3<f32>(x_632.z, x_632.y, x_632.w));
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
        let x_637 : vec4<f32> = u_xlat7;
        let x_639 : vec4<f32> = u_xlat11;
        let x_641 : vec3<f32> = (vec3<f32>(x_637.x, x_637.z, x_637.w) / vec3<f32>(x_639.z, x_639.w, x_639.y));
        let x_642 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat7;
        let x_649 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_650 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec4<f32> = u_xlat6;
        let x_656 : vec3<f32> = (vec3<f32>(x_652.z, x_652.y, x_652.w) / vec3<f32>(x_654.x, x_654.y, x_654.z));
        let x_657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat8;
        let x_661 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat7;
        let x_667 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_669 : vec3<f32> = (vec3<f32>(x_664.y, x_664.x, x_664.z) * vec3<f32>(x_667.x, x_667.x, x_667.x));
        let x_670 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_672 : vec4<f32> = u_xlat8;
        let x_675 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_677 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_675.y, x_675.y, x_675.y));
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_681 : f32 = u_xlat8.x;
        u_xlat7.w = x_681;
        let x_683 : vec4<f32> = u_xlat5;
        let x_686 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y) * vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y)) + vec4<f32>(x_689.y, x_689.w, x_689.x, x_689.w));
        let x_692 : vec4<f32> = u_xlat5;
        let x_695 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_698 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_692.x, x_692.y) * vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(x_698.z, x_698.w));
        let x_702 : f32 = u_xlat7.y;
        u_xlat8.w = x_702;
        let x_704 : vec4<f32> = u_xlat8;
        let x_705 : vec2<f32> = vec2<f32>(x_704.y, x_704.z);
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_706.x, x_705.x, x_706.z, x_705.y);
        let x_708 : vec4<f32> = u_xlat5;
        let x_711 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.y) * vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y)) + vec4<f32>(x_714.x, x_714.y, x_714.z, x_714.y));
        let x_717 : vec4<f32> = u_xlat5;
        let x_720 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_723 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y)) + vec4<f32>(x_723.w, x_723.y, x_723.w, x_723.z));
        let x_726 : vec4<f32> = u_xlat5;
        let x_729 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) * vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y)) + vec4<f32>(x_732.x, x_732.w, x_732.z, x_732.w));
        let x_736 : vec4<f32> = u_xlat6;
        let x_738 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_736.x, x_736.x, x_736.x, x_736.y) * vec4<f32>(x_738.z, x_738.w, x_738.y, x_738.z));
        let x_742 : vec4<f32> = u_xlat6;
        let x_744 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_742.y, x_742.y, x_742.z, x_742.z) * x_744);
        let x_748 : f32 = u_xlat6.z;
        let x_750 : f32 = u_xlat11.y;
        u_xlat60 = (x_748 * x_750);
        let x_753 : vec4<f32> = u_xlat9;
        let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
        let x_756 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_764 : vec3<f32> = txVec4;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
        u_xlat61 = x_766;
        let x_768 : vec4<f32> = u_xlat9;
        let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
        let x_771 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec5;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_778.xy, x_778.z);
        u_xlat5.x = x_780;
        let x_783 : f32 = u_xlat5.x;
        let x_785 : f32 = u_xlat12.y;
        u_xlat5.x = (x_783 * x_785);
        let x_789 : f32 = u_xlat12.x;
        let x_790 : f32 = u_xlat61;
        let x_793 : f32 = u_xlat5.x;
        u_xlat61 = ((x_789 * x_790) + x_793);
        let x_796 : vec2<f32> = u_xlat43;
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec6;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat5.x = x_807;
        let x_810 : f32 = u_xlat12.z;
        let x_812 : f32 = u_xlat5.x;
        let x_814 : f32 = u_xlat61;
        u_xlat61 = ((x_810 * x_812) + x_814);
        let x_817 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec7;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat5.x = x_829;
        let x_832 : f32 = u_xlat12.w;
        let x_834 : f32 = u_xlat5.x;
        let x_836 : f32 = u_xlat61;
        u_xlat61 = ((x_832 * x_834) + x_836);
        let x_839 : vec4<f32> = u_xlat10;
        let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec8;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_849.xy, x_849.z);
        u_xlat5.x = x_851;
        let x_854 : f32 = u_xlat13.x;
        let x_856 : f32 = u_xlat5.x;
        let x_858 : f32 = u_xlat61;
        u_xlat61 = ((x_854 * x_856) + x_858);
        let x_861 : vec4<f32> = u_xlat10;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec9;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
        u_xlat5.x = x_873;
        let x_876 : f32 = u_xlat13.y;
        let x_878 : f32 = u_xlat5.x;
        let x_880 : f32 = u_xlat61;
        u_xlat61 = ((x_876 * x_878) + x_880);
        let x_883 : vec4<f32> = u_xlat8;
        let x_884 : vec2<f32> = vec2<f32>(x_883.z, x_883.w);
        let x_886 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_884.x, x_884.y, x_886);
        let x_893 : vec3<f32> = txVec10;
        let x_895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_893.xy, x_893.z);
        u_xlat5.x = x_895;
        let x_898 : f32 = u_xlat13.z;
        let x_900 : f32 = u_xlat5.x;
        let x_902 : f32 = u_xlat61;
        u_xlat61 = ((x_898 * x_900) + x_902);
        let x_905 : vec4<f32> = u_xlat7;
        let x_906 : vec2<f32> = vec2<f32>(x_905.x, x_905.y);
        let x_908 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_915 : vec3<f32> = txVec11;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_915.xy, x_915.z);
        u_xlat5.x = x_917;
        let x_920 : f32 = u_xlat13.w;
        let x_922 : f32 = u_xlat5.x;
        let x_924 : f32 = u_xlat61;
        u_xlat61 = ((x_920 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat7;
        let x_928 : vec2<f32> = vec2<f32>(x_927.z, x_927.w);
        let x_930 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec12;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_937.xy, x_937.z);
        u_xlat5.x = x_939;
        let x_941 : f32 = u_xlat60;
        let x_943 : f32 = u_xlat5.x;
        let x_945 : f32 = u_xlat61;
        u_xlat59 = ((x_941 * x_943) + x_945);
      } else {
        let x_948 : vec4<f32> = vs_TEXCOORD6;
        let x_951 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_954 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.z, x_951.w)) + vec2<f32>(0.5f, 0.5f));
        let x_955 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat5;
        let x_959 : vec2<f32> = floor(vec2<f32>(x_957.x, x_957.y));
        let x_960 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = vs_TEXCOORD6;
        let x_965 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + -(vec2<f32>(x_968.x, x_968.y)));
        let x_972 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_972.x, x_972.x, x_972.y, x_972.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_975 : vec4<f32> = u_xlat6;
        let x_977 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z) * vec4<f32>(x_977.x, x_977.x, x_977.z, x_977.z));
        let x_980 : vec4<f32> = u_xlat7;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.y, x_980.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec4<f32> = u_xlat7;
        let x_990 : vec2<f32> = u_xlat43;
        let x_992 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.z) * vec2<f32>(0.5f, 0.5f)) + -(x_990));
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_995 : vec2<f32> = u_xlat43;
        let x_997 : vec2<f32> = (-(x_995) + vec2<f32>(1.0f, 1.0f));
        let x_998 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1000, vec2<f32>(0.0f, 0.0f));
        let x_1002 : vec2<f32> = u_xlat45;
        let x_1004 : vec2<f32> = u_xlat45;
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1008 : vec2<f32> = ((-(x_1002) * x_1004) + vec2<f32>(x_1006.x, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1008.x, x_1008.y, x_1009.z, x_1009.w);
        let x_1011 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1011, vec2<f32>(0.0f, 0.0f));
        let x_1014 : vec2<f32> = u_xlat45;
        let x_1016 : vec2<f32> = u_xlat45;
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = ((-(x_1014) * x_1016) + vec2<f32>(x_1018.y, x_1018.w));
        let x_1021 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1020.x, x_1021.y, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1025 : vec2<f32> = (vec2<f32>(x_1023.x, x_1023.y) + vec2<f32>(2.0f, 2.0f));
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec3<f32> = u_xlat25;
        let x_1030 : vec2<f32> = (vec2<f32>(x_1028.x, x_1028.z) + vec2<f32>(2.0f, 2.0f));
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1031.x, x_1030.x, x_1031.z, x_1030.y);
        let x_1034 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1034 * 0.081632003f);
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1038.z, x_1038.x, x_1038.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1044.x, x_1044.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1051 : f32 = u_xlat10.y;
        u_xlat9.x = x_1051;
        let x_1053 : vec2<f32> = u_xlat43;
        let x_1060 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1061.x, x_1060.x, x_1061.z, x_1060.y);
        let x_1063 : vec2<f32> = u_xlat43;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1068 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1067.x, x_1068.y, x_1067.y, x_1068.w);
        let x_1071 : f32 = u_xlat6.x;
        u_xlat7.y = x_1071;
        let x_1074 : f32 = u_xlat8.y;
        u_xlat7.w = x_1074;
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1076 + x_1077);
        let x_1079 : vec2<f32> = u_xlat43;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1079.y, x_1079.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1085 : vec2<f32> = u_xlat43;
        let x_1088 : vec2<f32> = ((vec2<f32>(x_1085.y, x_1085.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1089.w);
        let x_1092 : f32 = u_xlat6.y;
        u_xlat8.y = x_1092;
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1094 + x_1095);
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1097 / x_1098);
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1100 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1106 : vec4<f32> = u_xlat8;
        let x_1107 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1106 / x_1107);
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1109 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1111 : vec4<f32> = u_xlat7;
        let x_1114 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1111.w, x_1111.x, x_1111.y, x_1111.z) * vec4<f32>(x_1114.x, x_1114.x, x_1114.x, x_1114.x));
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1120 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1117.x, x_1117.w, x_1117.y, x_1117.z) * vec4<f32>(x_1120.y, x_1120.y, x_1120.y, x_1120.y));
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1124 : vec3<f32> = vec3<f32>(x_1123.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1124.x, x_1125.y, x_1124.y, x_1124.z);
        let x_1128 : f32 = u_xlat8.x;
        u_xlat10.y = x_1128;
        let x_1130 : vec4<f32> = u_xlat5;
        let x_1133 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1130.x, x_1130.y, x_1130.x, x_1130.y) * vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y)) + vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat5;
        let x_1142 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.w, x_1145.y));
        let x_1149 : f32 = u_xlat10.y;
        u_xlat7.y = x_1149;
        let x_1152 : f32 = u_xlat8.z;
        u_xlat10.y = x_1152;
        let x_1154 : vec4<f32> = u_xlat5;
        let x_1157 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1160.y));
        let x_1163 : vec4<f32> = u_xlat5;
        let x_1166 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.w, x_1169.y));
        let x_1172 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1175 : f32 = u_xlat10.y;
        u_xlat7.z = x_1175;
        let x_1178 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.z));
        let x_1188 : f32 = u_xlat8.w;
        u_xlat10.y = x_1188;
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1194 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1201 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(x_1207.w, x_1207.y));
        let x_1211 : f32 = u_xlat10.y;
        u_xlat7.w = x_1211;
        let x_1214 : vec4<f32> = u_xlat5;
        let x_1217 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.x, x_1220.w));
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec3<f32> = vec3<f32>(x_1223.x, x_1223.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1224.z);
        let x_1227 : vec4<f32> = u_xlat5;
        let x_1230 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y) * vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y)) + vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1233.y));
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.w, x_1243.y));
        let x_1247 : f32 = u_xlat7.x;
        u_xlat8.x = x_1247;
        let x_1249 : vec4<f32> = u_xlat5;
        let x_1252 : vec4<f32> = x_381.x_MainLightShadowmapSize;
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1255.x, x_1255.y));
        let x_1258 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1261 : vec4<f32> = u_xlat6;
        let x_1263 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1261.x, x_1261.x, x_1261.x, x_1261.x) * x_1263);
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1266.y, x_1266.y, x_1266.y, x_1266.y) * x_1268);
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1271.z, x_1271.z, x_1271.z, x_1271.z) * x_1273);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1275.w, x_1275.w, x_1275.w, x_1275.w) * x_1277);
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.x, x_1280.y);
        let x_1283 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec13;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat60 = x_1292;
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.z, x_1294.w);
        let x_1297 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec14;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1304.xy, x_1304.z);
        u_xlat61 = x_1306;
        let x_1307 : f32 = u_xlat61;
        let x_1309 : f32 = u_xlat16.y;
        u_xlat61 = (x_1307 * x_1309);
        let x_1312 : f32 = u_xlat16.x;
        let x_1313 : f32 = u_xlat60;
        let x_1315 : f32 = u_xlat61;
        u_xlat60 = ((x_1312 * x_1313) + x_1315);
        let x_1318 : vec2<f32> = u_xlat43;
        let x_1320 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec15;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat61 = x_1329;
        let x_1331 : f32 = u_xlat16.z;
        let x_1332 : f32 = u_xlat61;
        let x_1334 : f32 = u_xlat60;
        u_xlat60 = ((x_1331 * x_1332) + x_1334);
        let x_1337 : vec4<f32> = u_xlat14;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.y);
        let x_1340 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec16;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat61 = x_1349;
        let x_1351 : f32 = u_xlat16.w;
        let x_1352 : f32 = u_xlat61;
        let x_1354 : f32 = u_xlat60;
        u_xlat60 = ((x_1351 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat12;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec17;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat61 = x_1369;
        let x_1371 : f32 = u_xlat17.x;
        let x_1372 : f32 = u_xlat61;
        let x_1374 : f32 = u_xlat60;
        u_xlat60 = ((x_1371 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat12;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.z, x_1377.w);
        let x_1380 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec18;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1387.xy, x_1387.z);
        u_xlat61 = x_1389;
        let x_1391 : f32 = u_xlat17.y;
        let x_1392 : f32 = u_xlat61;
        let x_1394 : f32 = u_xlat60;
        u_xlat60 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat13;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec19;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1407.xy, x_1407.z);
        u_xlat61 = x_1409;
        let x_1411 : f32 = u_xlat17.z;
        let x_1412 : f32 = u_xlat61;
        let x_1414 : f32 = u_xlat60;
        u_xlat60 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat14;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec20;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat61 = x_1429;
        let x_1431 : f32 = u_xlat17.w;
        let x_1432 : f32 = u_xlat61;
        let x_1434 : f32 = u_xlat60;
        u_xlat60 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat15;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec21;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat61 = x_1449;
        let x_1451 : f32 = u_xlat18.x;
        let x_1452 : f32 = u_xlat61;
        let x_1454 : f32 = u_xlat60;
        u_xlat60 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat15;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec22;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat61 = x_1469;
        let x_1471 : f32 = u_xlat18.y;
        let x_1472 : f32 = u_xlat61;
        let x_1474 : f32 = u_xlat60;
        u_xlat60 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec2<f32> = u_xlat26;
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec23;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat61 = x_1488;
        let x_1490 : f32 = u_xlat18.z;
        let x_1491 : f32 = u_xlat61;
        let x_1493 : f32 = u_xlat60;
        u_xlat60 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec2<f32> = u_xlat51;
        let x_1498 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec24;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat61 = x_1507;
        let x_1509 : f32 = u_xlat18.w;
        let x_1510 : f32 = u_xlat61;
        let x_1512 : f32 = u_xlat60;
        u_xlat60 = ((x_1509 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec25;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat61 = x_1527;
        let x_1529 : f32 = u_xlat6.x;
        let x_1530 : f32 = u_xlat61;
        let x_1532 : f32 = u_xlat60;
        u_xlat60 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec26;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat61 = x_1547;
        let x_1549 : f32 = u_xlat6.y;
        let x_1550 : f32 = u_xlat61;
        let x_1552 : f32 = u_xlat60;
        u_xlat60 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec2<f32> = u_xlat46;
        let x_1557 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec27;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat61 = x_1566;
        let x_1568 : f32 = u_xlat6.z;
        let x_1569 : f32 = u_xlat61;
        let x_1571 : f32 = u_xlat60;
        u_xlat60 = ((x_1568 * x_1569) + x_1571);
        let x_1574 : vec4<f32> = u_xlat5;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec28;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat61 = x_1586;
        let x_1588 : f32 = u_xlat6.w;
        let x_1589 : f32 = u_xlat61;
        let x_1591 : f32 = u_xlat60;
        u_xlat59 = ((x_1588 * x_1589) + x_1591);
      }
    }
  } else {
    let x_1595 : vec4<f32> = vs_TEXCOORD6;
    let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
    let x_1598 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
    let x_1605 : vec3<f32> = txVec29;
    let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
    u_xlat59 = x_1607;
  }
  let x_1609 : f32 = x_381.x_MainLightShadowParams.x;
  u_xlat60 = (-(x_1609) + 1.0f);
  let x_1612 : f32 = u_xlat59;
  let x_1614 : f32 = x_381.x_MainLightShadowParams.x;
  let x_1616 : f32 = u_xlat60;
  u_xlat59 = ((x_1612 * x_1614) + x_1616);
  let x_1619 : f32 = vs_TEXCOORD6.z;
  u_xlatb60 = (0.0f >= x_1619);
  let x_1623 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1623 >= 1.0f);
  let x_1625 : bool = u_xlatb60;
  let x_1626 : bool = u_xlatb61;
  u_xlatb60 = (x_1625 | x_1626);
  let x_1628 : bool = u_xlatb60;
  let x_1629 : f32 = u_xlat59;
  u_xlat59 = select(x_1629, 1.0f, x_1628);
  let x_1633 : vec3<f32> = vs_TEXCOORD1;
  let x_1636 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1638 : vec3<f32> = (x_1633 + -(x_1636));
  let x_1639 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1641 : vec4<f32> = u_xlat5;
  let x_1643 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(vec3<f32>(x_1641.x, x_1641.y, x_1641.z), vec3<f32>(x_1643.x, x_1643.y, x_1643.z));
  let x_1646 : f32 = u_xlat60;
  let x_1648 : f32 = x_381.x_MainLightShadowParams.z;
  let x_1651 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat60 = ((x_1646 * x_1648) + x_1651);
  let x_1653 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1653, 0.0f, 1.0f);
  let x_1655 : f32 = u_xlat59;
  u_xlat61 = (-(x_1655) + 1.0f);
  let x_1658 : f32 = u_xlat60;
  let x_1659 : f32 = u_xlat61;
  let x_1661 : f32 = u_xlat59;
  u_xlat59 = ((x_1658 * x_1659) + x_1661);
  let x_1669 : f32 = x_1667.x_MainLightCookieTextureFormat;
  u_xlatb60 = !((x_1669 == -1.0f));
  let x_1671 : bool = u_xlatb60;
  if (x_1671) {
    let x_1674 : vec3<f32> = vs_TEXCOORD1;
    let x_1677 : vec4<f32> = x_1667.x_MainLightWorldToLight[1i];
    let x_1679 : vec2<f32> = (vec2<f32>(x_1674.y, x_1674.y) * vec2<f32>(x_1677.x, x_1677.y));
    let x_1680 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
    let x_1683 : vec4<f32> = x_1667.x_MainLightWorldToLight[0i];
    let x_1685 : vec3<f32> = vs_TEXCOORD1;
    let x_1688 : vec4<f32> = u_xlat5;
    let x_1690 : vec2<f32> = ((vec2<f32>(x_1683.x, x_1683.y) * vec2<f32>(x_1685.x, x_1685.x)) + vec2<f32>(x_1688.x, x_1688.y));
    let x_1691 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
    let x_1694 : vec4<f32> = x_1667.x_MainLightWorldToLight[2i];
    let x_1696 : vec3<f32> = vs_TEXCOORD1;
    let x_1699 : vec4<f32> = u_xlat5;
    let x_1701 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.z, x_1696.z)) + vec2<f32>(x_1699.x, x_1699.y));
    let x_1702 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1701.x, x_1701.y, x_1702.z, x_1702.w);
    let x_1704 : vec4<f32> = u_xlat5;
    let x_1708 : vec4<f32> = x_1667.x_MainLightWorldToLight[3i];
    let x_1710 : vec2<f32> = (vec2<f32>(x_1704.x, x_1704.y) + vec2<f32>(x_1708.x, x_1708.y));
    let x_1711 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
    let x_1713 : vec4<f32> = u_xlat5;
    let x_1716 : vec2<f32> = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1717 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
    let x_1724 : vec4<f32> = u_xlat5;
    let x_1727 : f32 = x_43.x_GlobalMipBias.x;
    let x_1728 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1724.x, x_1724.y), x_1727);
    u_xlat5 = x_1728;
    let x_1733 : f32 = x_1667.x_MainLightCookieTextureFormat;
    let x_1735 : f32 = x_1667.x_MainLightCookieTextureFormat;
    let x_1737 : f32 = x_1667.x_MainLightCookieTextureFormat;
    let x_1739 : f32 = x_1667.x_MainLightCookieTextureFormat;
    let x_1740 : vec4<f32> = vec4<f32>(x_1733, x_1735, x_1737, x_1739);
    let x_1748 : vec4<bool> = (vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1740.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1748.x, x_1748.y);
    let x_1751 : bool = u_xlatb6.y;
    if (x_1751) {
      let x_1756 : f32 = u_xlat5.w;
      x_1752 = x_1756;
    } else {
      let x_1759 : f32 = u_xlat5.x;
      x_1752 = x_1759;
    }
    let x_1760 : f32 = x_1752;
    u_xlat60 = x_1760;
    let x_1762 : bool = u_xlatb6.x;
    if (x_1762) {
      let x_1766 : vec4<f32> = u_xlat5;
      x_1763 = vec3<f32>(x_1766.x, x_1766.y, x_1766.z);
    } else {
      let x_1769 : f32 = u_xlat60;
      x_1763 = vec3<f32>(x_1769, x_1769, x_1769);
    }
    let x_1771 : vec3<f32> = x_1763;
    let x_1772 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1778 : vec4<f32> = u_xlat5;
  let x_1781 : vec4<f32> = x_43.x_MainLightColor;
  let x_1783 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1784 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1786 : vec4<f32> = u_xlat1;
  let x_1788 : vec4<f32> = u_xlat5;
  let x_1790 : vec3<f32> = (vec3<f32>(x_1786.x, x_1786.x, x_1786.x) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : f32 = u_xlat57;
  let x_1795 : vec4<f32> = u_xlat4;
  let x_1797 : vec3<f32> = (vec3<f32>(x_1793, x_1793, x_1793) * vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);
  let x_1800 : f32 = u_xlat59;
  let x_1806 : f32 = x_1804.unity_LightData.z;
  u_xlat57 = (x_1800 * x_1806);
  let x_1808 : f32 = u_xlat57;
  let x_1810 : vec4<f32> = u_xlat5;
  let x_1812 : vec3<f32> = (vec3<f32>(x_1808, x_1808, x_1808) * vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1815 : vec3<f32> = u_xlat2;
  let x_1817 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(x_1815, vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
  let x_1820 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1820, 0.0f, 1.0f);
  let x_1822 : f32 = u_xlat57;
  let x_1824 : vec4<f32> = u_xlat5;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1822, x_1822, x_1822) * vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
  let x_1827 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1830 : f32 = x_56.x_SpecColor.w;
  u_xlat57 = ((x_1830 * 10.0f) + 1.0f);
  let x_1834 : f32 = u_xlat57;
  u_xlat57 = exp2(x_1834);
  let x_1836 : vec3<f32> = u_xlat3;
  let x_1837 : vec3<f32> = u_xlat19;
  let x_1841 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1843 : vec3<f32> = ((x_1836 * vec3<f32>(x_1837.x, x_1837.x, x_1837.x)) + vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
  let x_1846 : vec4<f32> = u_xlat7;
  let x_1848 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1846.x, x_1846.y, x_1846.z), vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : f32 = u_xlat59;
  u_xlat59 = max(x_1851, 1.17549435e-37f);
  let x_1853 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_1853);
  let x_1855 : f32 = u_xlat59;
  let x_1857 : vec4<f32> = u_xlat7;
  let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
  let x_1862 : vec3<f32> = u_xlat2;
  let x_1863 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(x_1862, vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1866, 0.0f, 1.0f);
  let x_1868 : f32 = u_xlat59;
  u_xlat59 = log2(x_1868);
  let x_1870 : f32 = u_xlat57;
  let x_1871 : f32 = u_xlat59;
  u_xlat59 = (x_1870 * x_1871);
  let x_1873 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1873);
  let x_1875 : f32 = u_xlat59;
  let x_1878 : vec4<f32> = x_56.x_SpecColor;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1875, x_1875, x_1875) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1883 : vec4<f32> = u_xlat5;
  let x_1885 : vec4<f32> = u_xlat7;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.y, x_1883.z) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec4<f32> = u_xlat6;
  let x_1892 : vec4<f32> = u_xlat1;
  let x_1895 : vec4<f32> = u_xlat5;
  let x_1897 : vec3<f32> = ((vec3<f32>(x_1890.x, x_1890.y, x_1890.z) * vec3<f32>(x_1892.y, x_1892.z, x_1892.w)) + vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1901 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1903 : f32 = x_1804.unity_LightData.y;
  u_xlat59 = min(x_1901, x_1903);
  let x_1907 : f32 = u_xlat59;
  u_xlatu59 = bitcast<u32>(i32(x_1907));
  let x_1911 : f32 = x_1667.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1913 : f32 = x_1667.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1915 : f32 = x_1667.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1917 : f32 = x_1667.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1918 : vec4<f32> = vec4<f32>(x_1911, x_1913, x_1915, x_1917);
  let x_1924 : vec4<bool> = (vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1918.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1924.x, x_1924.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1935 : u32 = u_xlatu_loop_1;
    let x_1936 : u32 = u_xlatu59;
    if ((x_1935 < x_1936)) {
    } else {
      break;
    }
    let x_1939 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1939 >> 2u);
    let x_1943 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1943 & 3u));
    let x_1946 : u32 = u_xlatu61;
    let x_1949 : vec4<f32> = x_1804.unity_LightIndices[bitcast<i32>(x_1946)];
    let x_1959 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1964 : vec4<u32> = indexable[x_1959];
    u_xlat61 = dot(x_1949, bitcast<vec4<f32>>(x_1964));
    let x_1967 : f32 = u_xlat61;
    u_xlatu61 = bitcast<u32>(i32(x_1967));
    let x_1970 : vec3<f32> = vs_TEXCOORD1;
    let x_1982 : u32 = u_xlatu61;
    let x_1985 : vec4<f32> = x_1981.x_AdditionalLightsPosition[bitcast<i32>(x_1982)];
    let x_1988 : u32 = u_xlatu61;
    let x_1991 : vec4<f32> = x_1981.x_AdditionalLightsPosition[bitcast<i32>(x_1988)];
    let x_1993 : vec3<f32> = ((-(x_1970) * vec3<f32>(x_1985.w, x_1985.w, x_1985.w)) + vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
    let x_1994 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
    let x_1997 : vec4<f32> = u_xlat8;
    let x_1999 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2002 : f32 = u_xlat62;
    u_xlat62 = max(x_2002, 6.10351562e-05f);
    let x_2006 : f32 = u_xlat62;
    u_xlat44.x = inverseSqrt(x_2006);
    let x_2009 : vec2<f32> = u_xlat44;
    let x_2011 : vec4<f32> = u_xlat8;
    let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.x, x_2009.x) * vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
    let x_2014 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
    let x_2016 : f32 = u_xlat62;
    u_xlat44.x = (1.0f / x_2016);
    let x_2019 : f32 = u_xlat62;
    let x_2020 : u32 = u_xlatu61;
    let x_2023 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2020)].x;
    u_xlat62 = (x_2019 * x_2023);
    let x_2025 : f32 = u_xlat62;
    let x_2027 : f32 = u_xlat62;
    u_xlat62 = ((-(x_2025) * x_2027) + 1.0f);
    let x_2030 : f32 = u_xlat62;
    u_xlat62 = max(x_2030, 0.0f);
    let x_2032 : f32 = u_xlat62;
    let x_2033 : f32 = u_xlat62;
    u_xlat62 = (x_2032 * x_2033);
    let x_2035 : f32 = u_xlat62;
    let x_2037 : f32 = u_xlat44.x;
    u_xlat62 = (x_2035 * x_2037);
    let x_2039 : u32 = u_xlatu61;
    let x_2042 : vec4<f32> = x_1981.x_AdditionalLightsSpotDir[bitcast<i32>(x_2039)];
    let x_2044 : vec4<f32> = u_xlat8;
    u_xlat44.x = dot(vec3<f32>(x_2042.x, x_2042.y, x_2042.z), vec3<f32>(x_2044.x, x_2044.y, x_2044.z));
    let x_2049 : f32 = u_xlat44.x;
    let x_2050 : u32 = u_xlatu61;
    let x_2053 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2050)].z;
    let x_2055 : u32 = u_xlatu61;
    let x_2058 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2055)].w;
    u_xlat44.x = ((x_2049 * x_2053) + x_2058);
    let x_2062 : f32 = u_xlat44.x;
    u_xlat44.x = clamp(x_2062, 0.0f, 1.0f);
    let x_2066 : f32 = u_xlat44.x;
    let x_2068 : f32 = u_xlat44.x;
    u_xlat44.x = (x_2066 * x_2068);
    let x_2071 : f32 = u_xlat62;
    let x_2073 : f32 = u_xlat44.x;
    u_xlat62 = (x_2071 * x_2073);
    let x_2076 : u32 = u_xlatu61;
    u_xlatu44 = (x_2076 >> 5u);
    let x_2079 : u32 = u_xlatu61;
    u_xlati63 = (1i << bitcast<u32>((bitcast<i32>(x_2079) & 31i)));
    let x_2085 : i32 = u_xlati63;
    let x_2087 : u32 = u_xlatu44;
    let x_2090 : f32 = x_1667.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2087)].el;
    u_xlati44 = bitcast<i32>((bitcast<u32>(x_2085) & bitcast<u32>(x_2090)));
    let x_2094 : i32 = u_xlati44;
    if ((x_2094 != 0i)) {
      let x_2104 : u32 = u_xlatu61;
      let x_2107 : f32 = x_2103.x_AdditionalLightsLightTypes[bitcast<i32>(x_2104)].el;
      u_xlati44 = i32(x_2107);
      let x_2109 : i32 = u_xlati44;
      u_xlati63 = select(1i, 0i, (x_2109 != 0i));
      let x_2113 : u32 = u_xlatu61;
      u_xlati64 = (bitcast<i32>(x_2113) << bitcast<u32>(2i));
      let x_2116 : i32 = u_xlati63;
      if ((x_2116 != 0i)) {
        let x_2120 : vec3<f32> = vs_TEXCOORD1;
        let x_2122 : i32 = u_xlati64;
        let x_2125 : i32 = u_xlati64;
        let x_2129 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2122 + 1i) / 4i)][((x_2125 + 1i) % 4i)];
        let x_2131 : vec3<f32> = (vec3<f32>(x_2120.y, x_2120.y, x_2120.y) * vec3<f32>(x_2129.x, x_2129.y, x_2129.w));
        let x_2132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
        let x_2134 : i32 = u_xlati64;
        let x_2136 : i32 = u_xlati64;
        let x_2139 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[(x_2134 / 4i)][(x_2136 % 4i)];
        let x_2141 : vec3<f32> = vs_TEXCOORD1;
        let x_2144 : vec4<f32> = u_xlat9;
        let x_2146 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.w) * vec3<f32>(x_2141.x, x_2141.x, x_2141.x)) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
        let x_2147 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
        let x_2149 : i32 = u_xlati64;
        let x_2152 : i32 = u_xlati64;
        let x_2156 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2149 + 2i) / 4i)][((x_2152 + 2i) % 4i)];
        let x_2158 : vec3<f32> = vs_TEXCOORD1;
        let x_2161 : vec4<f32> = u_xlat9;
        let x_2163 : vec3<f32> = ((vec3<f32>(x_2156.x, x_2156.y, x_2156.w) * vec3<f32>(x_2158.z, x_2158.z, x_2158.z)) + vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
        let x_2164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
        let x_2166 : vec4<f32> = u_xlat9;
        let x_2168 : i32 = u_xlati64;
        let x_2171 : i32 = u_xlati64;
        let x_2175 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2168 + 3i) / 4i)][((x_2171 + 3i) % 4i)];
        let x_2177 : vec3<f32> = (vec3<f32>(x_2166.x, x_2166.y, x_2166.z) + vec3<f32>(x_2175.x, x_2175.y, x_2175.w));
        let x_2178 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
        let x_2180 : vec4<f32> = u_xlat9;
        let x_2182 : vec4<f32> = u_xlat9;
        let x_2184 : vec2<f32> = (vec2<f32>(x_2180.x, x_2180.y) / vec2<f32>(x_2182.z, x_2182.z));
        let x_2185 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2184.x, x_2184.y, x_2185.z, x_2185.w);
        let x_2187 : vec4<f32> = u_xlat9;
        let x_2190 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2191 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
        let x_2193 : vec4<f32> = u_xlat9;
        let x_2197 : vec2<f32> = clamp(vec2<f32>(x_2193.x, x_2193.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2198 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
        let x_2200 : u32 = u_xlatu61;
        let x_2203 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2200)];
        let x_2205 : vec4<f32> = u_xlat9;
        let x_2208 : u32 = u_xlatu61;
        let x_2211 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2208)];
        let x_2213 : vec2<f32> = ((vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(x_2205.x, x_2205.y)) + vec2<f32>(x_2211.z, x_2211.w));
        let x_2214 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2213.x, x_2213.y, x_2214.z, x_2214.w);
      } else {
        let x_2218 : i32 = u_xlati44;
        u_xlatb44 = (x_2218 == 1i);
        let x_2220 : bool = u_xlatb44;
        u_xlati44 = select(0i, 1i, x_2220);
        let x_2222 : i32 = u_xlati44;
        if ((x_2222 != 0i)) {
          let x_2226 : vec3<f32> = vs_TEXCOORD1;
          let x_2228 : i32 = u_xlati64;
          let x_2231 : i32 = u_xlati64;
          let x_2235 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2228 + 1i) / 4i)][((x_2231 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2226.y, x_2226.y) * vec2<f32>(x_2235.x, x_2235.y));
          let x_2238 : i32 = u_xlati64;
          let x_2240 : i32 = u_xlati64;
          let x_2243 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[(x_2238 / 4i)][(x_2240 % 4i)];
          let x_2245 : vec3<f32> = vs_TEXCOORD1;
          let x_2248 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2243.x, x_2243.y) * vec2<f32>(x_2245.x, x_2245.x)) + x_2248);
          let x_2250 : i32 = u_xlati64;
          let x_2253 : i32 = u_xlati64;
          let x_2257 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2250 + 2i) / 4i)][((x_2253 + 2i) % 4i)];
          let x_2259 : vec3<f32> = vs_TEXCOORD1;
          let x_2262 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2257.x, x_2257.y) * vec2<f32>(x_2259.z, x_2259.z)) + x_2262);
          let x_2264 : vec2<f32> = u_xlat44;
          let x_2265 : i32 = u_xlati64;
          let x_2268 : i32 = u_xlati64;
          let x_2272 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2265 + 3i) / 4i)][((x_2268 + 3i) % 4i)];
          u_xlat44 = (x_2264 + vec2<f32>(x_2272.x, x_2272.y));
          let x_2275 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2275 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2278 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2278);
          let x_2280 : u32 = u_xlatu61;
          let x_2283 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2280)];
          let x_2285 : vec2<f32> = u_xlat44;
          let x_2287 : u32 = u_xlatu61;
          let x_2290 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2287)];
          let x_2292 : vec2<f32> = ((vec2<f32>(x_2283.x, x_2283.y) * x_2285) + vec2<f32>(x_2290.z, x_2290.w));
          let x_2293 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2292.x, x_2292.y, x_2293.z, x_2293.w);
        } else {
          let x_2296 : vec3<f32> = vs_TEXCOORD1;
          let x_2298 : i32 = u_xlati64;
          let x_2301 : i32 = u_xlati64;
          let x_2305 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2298 + 1i) / 4i)][((x_2301 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2296.y, x_2296.y, x_2296.y, x_2296.y) * x_2305);
          let x_2307 : i32 = u_xlati64;
          let x_2309 : i32 = u_xlati64;
          let x_2312 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[(x_2307 / 4i)][(x_2309 % 4i)];
          let x_2313 : vec3<f32> = vs_TEXCOORD1;
          let x_2316 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2312 * vec4<f32>(x_2313.x, x_2313.x, x_2313.x, x_2313.x)) + x_2316);
          let x_2318 : i32 = u_xlati64;
          let x_2321 : i32 = u_xlati64;
          let x_2325 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2318 + 2i) / 4i)][((x_2321 + 2i) % 4i)];
          let x_2326 : vec3<f32> = vs_TEXCOORD1;
          let x_2329 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2325 * vec4<f32>(x_2326.z, x_2326.z, x_2326.z, x_2326.z)) + x_2329);
          let x_2331 : vec4<f32> = u_xlat10;
          let x_2332 : i32 = u_xlati64;
          let x_2335 : i32 = u_xlati64;
          let x_2339 : vec4<f32> = x_2103.x_AdditionalLightsWorldToLights[((x_2332 + 3i) / 4i)][((x_2335 + 3i) % 4i)];
          u_xlat10 = (x_2331 + x_2339);
          let x_2341 : vec4<f32> = u_xlat10;
          let x_2343 : vec4<f32> = u_xlat10;
          let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) / vec3<f32>(x_2343.w, x_2343.w, x_2343.w));
          let x_2346 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
          let x_2348 : vec4<f32> = u_xlat10;
          let x_2350 : vec4<f32> = u_xlat10;
          u_xlat44.x = dot(vec3<f32>(x_2348.x, x_2348.y, x_2348.z), vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
          let x_2355 : f32 = u_xlat44.x;
          u_xlat44.x = inverseSqrt(x_2355);
          let x_2358 : vec2<f32> = u_xlat44;
          let x_2360 : vec4<f32> = u_xlat10;
          let x_2362 : vec3<f32> = (vec3<f32>(x_2358.x, x_2358.x, x_2358.x) * vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
          let x_2363 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
          let x_2365 : vec4<f32> = u_xlat10;
          u_xlat44.x = dot(abs(vec3<f32>(x_2365.x, x_2365.y, x_2365.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2372 : f32 = u_xlat44.x;
          u_xlat44.x = max(x_2372, 0.000001f);
          let x_2377 : f32 = u_xlat44.x;
          u_xlat44.x = (1.0f / x_2377);
          let x_2380 : vec2<f32> = u_xlat44;
          let x_2382 : vec4<f32> = u_xlat10;
          let x_2384 : vec3<f32> = (vec3<f32>(x_2380.x, x_2380.x, x_2380.x) * vec3<f32>(x_2382.z, x_2382.x, x_2382.y));
          let x_2385 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
          let x_2388 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2388);
          let x_2392 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2392, 0.0f, 1.0f);
          let x_2396 : vec4<f32> = u_xlat11;
          let x_2399 : vec4<bool> = (vec4<f32>(x_2396.y, x_2396.z, x_2396.y, x_2396.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2399.x, x_2399.y);
          let x_2403 : bool = u_xlatb47.x;
          if (x_2403) {
            let x_2408 : f32 = u_xlat11.x;
            x_2404 = x_2408;
          } else {
            let x_2411 : f32 = u_xlat11.x;
            x_2404 = -(x_2411);
          }
          let x_2413 : f32 = x_2404;
          u_xlat47.x = x_2413;
          let x_2416 : bool = u_xlatb47.y;
          if (x_2416) {
            let x_2421 : f32 = u_xlat11.x;
            x_2417 = x_2421;
          } else {
            let x_2424 : f32 = u_xlat11.x;
            x_2417 = -(x_2424);
          }
          let x_2426 : f32 = x_2417;
          u_xlat47.y = x_2426;
          let x_2428 : vec4<f32> = u_xlat10;
          let x_2430 : vec2<f32> = u_xlat44;
          let x_2433 : vec2<f32> = u_xlat47;
          u_xlat44 = ((vec2<f32>(x_2428.x, x_2428.y) * vec2<f32>(x_2430.x, x_2430.x)) + x_2433);
          let x_2435 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2435 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2438 : vec2<f32> = u_xlat44;
          u_xlat44 = clamp(x_2438, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2442 : u32 = u_xlatu61;
          let x_2445 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2442)];
          let x_2447 : vec2<f32> = u_xlat44;
          let x_2449 : u32 = u_xlatu61;
          let x_2452 : vec4<f32> = x_2103.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2449)];
          let x_2454 : vec2<f32> = ((vec2<f32>(x_2445.x, x_2445.y) * x_2447) + vec2<f32>(x_2452.z, x_2452.w));
          let x_2455 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2454.x, x_2454.y, x_2455.z, x_2455.w);
        }
      }
      let x_2462 : vec4<f32> = u_xlat9;
      let x_2465 : f32 = x_43.x_GlobalMipBias.x;
      let x_2466 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2462.x, x_2462.y), x_2465);
      u_xlat9 = x_2466;
      let x_2468 : bool = u_xlatb6.y;
      if (x_2468) {
        let x_2473 : f32 = u_xlat9.w;
        x_2469 = x_2473;
      } else {
        let x_2476 : f32 = u_xlat9.x;
        x_2469 = x_2476;
      }
      let x_2477 : f32 = x_2469;
      u_xlat44.x = x_2477;
      let x_2480 : bool = u_xlatb6.x;
      if (x_2480) {
        let x_2484 : vec4<f32> = u_xlat9;
        x_2481 = vec3<f32>(x_2484.x, x_2484.y, x_2484.z);
      } else {
        let x_2487 : vec2<f32> = u_xlat44;
        x_2481 = vec3<f32>(x_2487.x, x_2487.x, x_2487.x);
      }
      let x_2489 : vec3<f32> = x_2481;
      let x_2490 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2496 : vec4<f32> = u_xlat9;
    let x_2498 : u32 = u_xlatu61;
    let x_2501 : vec4<f32> = x_1981.x_AdditionalLightsColor[bitcast<i32>(x_2498)];
    let x_2503 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
    let x_2504 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
    let x_2506 : vec4<f32> = u_xlat1;
    let x_2508 : vec4<f32> = u_xlat9;
    let x_2510 : vec3<f32> = (vec3<f32>(x_2506.x, x_2506.x, x_2506.x) * vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
    let x_2511 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
    let x_2513 : f32 = u_xlat62;
    let x_2515 : vec4<f32> = u_xlat9;
    let x_2517 : vec3<f32> = (vec3<f32>(x_2513, x_2513, x_2513) * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
    let x_2520 : vec3<f32> = u_xlat2;
    let x_2521 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(x_2520, vec3<f32>(x_2521.x, x_2521.y, x_2521.z));
    let x_2524 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2524, 0.0f, 1.0f);
    let x_2526 : f32 = u_xlat61;
    let x_2528 : vec4<f32> = u_xlat9;
    let x_2530 : vec3<f32> = (vec3<f32>(x_2526, x_2526, x_2526) * vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
    let x_2533 : vec3<f32> = u_xlat3;
    let x_2534 : vec3<f32> = u_xlat19;
    let x_2537 : vec4<f32> = u_xlat8;
    let x_2539 : vec3<f32> = ((x_2533 * vec3<f32>(x_2534.x, x_2534.x, x_2534.x)) + vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
    let x_2540 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
    let x_2542 : vec4<f32> = u_xlat8;
    let x_2544 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(vec3<f32>(x_2542.x, x_2542.y, x_2542.z), vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
    let x_2547 : f32 = u_xlat61;
    u_xlat61 = max(x_2547, 1.17549435e-37f);
    let x_2549 : f32 = u_xlat61;
    u_xlat61 = inverseSqrt(x_2549);
    let x_2551 : f32 = u_xlat61;
    let x_2553 : vec4<f32> = u_xlat8;
    let x_2555 : vec3<f32> = (vec3<f32>(x_2551, x_2551, x_2551) * vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
    let x_2556 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
    let x_2558 : vec3<f32> = u_xlat2;
    let x_2559 : vec4<f32> = u_xlat8;
    u_xlat61 = dot(x_2558, vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2562, 0.0f, 1.0f);
    let x_2564 : f32 = u_xlat61;
    u_xlat61 = log2(x_2564);
    let x_2566 : f32 = u_xlat57;
    let x_2567 : f32 = u_xlat61;
    u_xlat61 = (x_2566 * x_2567);
    let x_2569 : f32 = u_xlat61;
    u_xlat61 = exp2(x_2569);
    let x_2571 : f32 = u_xlat61;
    let x_2574 : vec4<f32> = x_56.x_SpecColor;
    let x_2576 : vec3<f32> = (vec3<f32>(x_2571, x_2571, x_2571) * vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
    let x_2577 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
    let x_2579 : vec4<f32> = u_xlat8;
    let x_2581 : vec4<f32> = u_xlat9;
    let x_2583 : vec3<f32> = (vec3<f32>(x_2579.x, x_2579.y, x_2579.z) * vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
    let x_2584 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
    let x_2586 : vec4<f32> = u_xlat10;
    let x_2588 : vec4<f32> = u_xlat1;
    let x_2591 : vec4<f32> = u_xlat8;
    let x_2593 : vec3<f32> = ((vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2588.y, x_2588.z, x_2588.w)) + vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
    let x_2594 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
    let x_2596 : vec4<f32> = u_xlat7;
    let x_2598 : vec4<f32> = u_xlat8;
    let x_2600 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) + vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
    let x_2601 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);

    continuing {
      let x_2603 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2603 + bitcast<u32>(1i));
    }
  }
  let x_2605 : vec4<f32> = u_xlat4;
  let x_2607 : vec4<f32> = u_xlat1;
  let x_2610 : vec4<f32> = u_xlat5;
  let x_2612 : vec3<f32> = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607.y, x_2607.z, x_2607.w)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2617 : vec4<f32> = u_xlat7;
  let x_2619 : vec4<f32> = u_xlat1;
  let x_2621 : vec3<f32> = (vec3<f32>(x_2617.x, x_2617.y, x_2617.z) + vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
  let x_2625 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2625 == 1.0f);
  let x_2627 : bool = u_xlatb19;
  let x_2628 : bool = u_xlatb38;
  u_xlatb19 = (x_2627 | x_2628);
  let x_2630 : bool = u_xlatb19;
  if (x_2630) {
    let x_2635 : f32 = u_xlat0.x;
    x_2631 = x_2635;
  } else {
    x_2631 = 1.0f;
  }
  let x_2637 : f32 = x_2631;
  SV_Target0.w = x_2637;
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

