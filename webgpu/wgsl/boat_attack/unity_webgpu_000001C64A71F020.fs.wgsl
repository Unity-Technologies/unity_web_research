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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_277 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1799 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1934 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2109 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2229 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat60 : f32;
  var u_xlatb40 : bool;
  var x_130 : f32;
  var u_xlatb20 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu60 : u32;
  var u_xlati60 : i32;
  var u_xlatb62 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb6 : vec2<bool>;
  var x_1882 : f32;
  var x_1893 : vec3<f32>;
  var u_xlatu62 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu46 : u32;
  var u_xlati66 : i32;
  var u_xlati46 : i32;
  var u_xlati67 : i32;
  var u_xlatb46 : bool;
  var u_xlatb49 : vec2<bool>;
  var x_2529 : f32;
  var x_2542 : f32;
  var x_2594 : f32;
  var x_2606 : vec3<f32>;
  var x_2756 : f32;
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
  u_xlat20.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat40 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat60 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat60;
  let x_104 : f32 = u_xlat40;
  u_xlat40 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat40;
  u_xlat40 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat20.x;
  let x_112 : f32 = u_xlat40;
  u_xlat20.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat20.x;
  u_xlat20.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb40 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb40;
  if (x_129) {
    let x_134 : f32 = u_xlat20.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat20.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat20.x;
  u_xlatb20 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb20;
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
  let x_184 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat20;
  let x_188 : vec3<f32> = u_xlat20;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec3<f32> = u_xlat20;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_210.z, x_210.z, x_210.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec3<f32> = u_xlat20;
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_219.x, x_219.y, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat20;
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
  u_xlat20.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_260, 1.17549435e-37f);
  let x_265 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_265);
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres0;
  let x_282 : vec3<f32> = (x_271 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres1;
  let x_291 : vec3<f32> = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres2;
  let x_301 : vec3<f32> = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_302 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres3;
  let x_310 : vec3<f32> = (x_305 + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat7;
  let x_333 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_340 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = x_277.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_340 < x_343);
  let x_346 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_362);
  let x_367 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_367);
  let x_371 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_371);
  let x_374 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(x_376.y, x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat4;
  let x_384 : vec3<f32> = max(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_384.x, x_384.y, x_384.z);
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_387, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_392 : f32 = u_xlat60;
  u_xlat60 = (-(x_392) + 4.0f);
  let x_397 : f32 = u_xlat60;
  u_xlatu60 = u32(x_397);
  let x_401 : u32 = u_xlatu60;
  u_xlati60 = (bitcast<i32>(x_401) << bitcast<u32>(2i));
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_406 : i32 = u_xlati60;
  let x_409 : i32 = u_xlati60;
  let x_413 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_406 + 1i) / 4i)][((x_409 + 1i) % 4i)];
  let x_415 : vec3<f32> = (vec3<f32>(x_404.y, x_404.y, x_404.y) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : i32 = u_xlati60;
  let x_420 : i32 = u_xlati60;
  let x_423 : vec4<f32> = x_277.x_MainLightWorldToShadow[(x_418 / 4i)][(x_420 % 4i)];
  let x_425 : vec3<f32> = vs_TEXCOORD1;
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.x, x_425.x)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : i32 = u_xlati60;
  let x_436 : i32 = u_xlati60;
  let x_440 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_433 + 2i) / 4i)][((x_436 + 2i) % 4i)];
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.z, x_442.z, x_442.z)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat4;
  let x_452 : i32 = u_xlati60;
  let x_455 : i32 = u_xlati60;
  let x_459 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_452 + 3i) / 4i)][((x_455 + 3i) % 4i)];
  let x_461 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_470 : vec2<f32> = vs_TEXCOORD7;
  let x_472 : f32 = x_43.x_GlobalMipBias.x;
  let x_473 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_470, x_472);
  let x_474 : vec3<f32> = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_475 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_479 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_480 : vec2<f32> = vec2<f32>(x_479.x, x_479.y);
  let x_484 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_480.x, x_480.y));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat6;
  let x_489 : vec4<f32> = hlslcc_FragCoord;
  let x_491 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_489.x, x_489.y));
  let x_492 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_495 : f32 = u_xlat6.y;
  let x_498 : f32 = x_43.x_ScaleBiasRt.x;
  let x_501 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat60 = ((x_495 * x_498) + x_501);
  let x_503 : f32 = u_xlat60;
  u_xlat6.z = (-(x_503) + 1.0f);
  let x_512 : vec4<f32> = u_xlat6;
  let x_515 : f32 = x_43.x_GlobalMipBias.x;
  let x_516 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_512.x, x_512.z), x_515);
  u_xlat60 = x_516.x;
  let x_518 : f32 = u_xlat60;
  u_xlat1.x = (x_518 + -1.0f);
  let x_522 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_522 * x_524) + 1.0f);
  let x_528 : f32 = u_xlat60;
  u_xlat60 = min(x_528, 1.0f);
  let x_532 : f32 = x_277.x_MainLightShadowParams.y;
  u_xlatb62 = (0.0f < x_532);
  let x_534 : bool = u_xlatb62;
  if (x_534) {
    let x_538 : f32 = x_277.x_MainLightShadowParams.y;
    u_xlatb62 = (x_538 == 1.0f);
    let x_540 : bool = u_xlatb62;
    if (x_540) {
      let x_543 : vec4<f32> = u_xlat4;
      let x_547 : vec4<f32> = x_277.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_543.x, x_543.y, x_543.x, x_543.y) + x_547);
      let x_550 : vec4<f32> = u_xlat6;
      let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
      let x_553 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_551.x, x_551.y, x_553);
      let x_565 : vec3<f32> = txVec0;
      let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_565.xy, x_565.z);
      u_xlat7.x = x_567;
      let x_570 : vec4<f32> = u_xlat6;
      let x_571 : vec2<f32> = vec2<f32>(x_570.z, x_570.w);
      let x_573 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_571.x, x_571.y, x_573);
      let x_580 : vec3<f32> = txVec1;
      let x_582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_580.xy, x_580.z);
      u_xlat7.y = x_582;
      let x_584 : vec4<f32> = u_xlat4;
      let x_588 : vec4<f32> = x_277.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) + x_588);
      let x_591 : vec4<f32> = u_xlat6;
      let x_592 : vec2<f32> = vec2<f32>(x_591.x, x_591.y);
      let x_594 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_592.x, x_592.y, x_594);
      let x_601 : vec3<f32> = txVec2;
      let x_603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_601.xy, x_601.z);
      u_xlat7.z = x_603;
      let x_606 : vec4<f32> = u_xlat6;
      let x_607 : vec2<f32> = vec2<f32>(x_606.z, x_606.w);
      let x_609 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_607.x, x_607.y, x_609);
      let x_616 : vec3<f32> = txVec3;
      let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_616.xy, x_616.z);
      u_xlat7.w = x_618;
      let x_621 : vec4<f32> = u_xlat7;
      u_xlat62 = dot(x_621, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_628 : f32 = x_277.x_MainLightShadowParams.y;
      u_xlatb63 = (x_628 == 2.0f);
      let x_630 : bool = u_xlatb63;
      if (x_630) {
        let x_633 : vec4<f32> = u_xlat4;
        let x_637 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_641 : vec2<f32> = ((vec2<f32>(x_633.x, x_633.y) * vec2<f32>(x_637.z, x_637.w)) + vec2<f32>(0.5f, 0.5f));
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat6;
        let x_646 : vec2<f32> = floor(vec2<f32>(x_644.x, x_644.y));
        let x_647 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_651 : vec4<f32> = u_xlat4;
        let x_654 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_657 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.z, x_654.w)) + -(vec2<f32>(x_657.x, x_657.y)));
        let x_661 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_661.x, x_661.x, x_661.y, x_661.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_666 : vec4<f32> = u_xlat7;
        let x_668 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_666.x, x_666.x, x_666.z, x_666.z) * vec4<f32>(x_668.x, x_668.x, x_668.z, x_668.z));
        let x_671 : vec4<f32> = u_xlat8;
        let x_675 : vec2<f32> = (vec2<f32>(x_671.y, x_671.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_675.x, x_676.y, x_675.y, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_681 : vec2<f32> = u_xlat46;
        let x_683 : vec2<f32> = ((vec2<f32>(x_678.x, x_678.z) * vec2<f32>(0.5f, 0.5f)) + -(x_681));
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_687 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_687) + vec2<f32>(1.0f, 1.0f));
        let x_691 : vec2<f32> = u_xlat46;
        let x_693 : vec2<f32> = min(x_691, vec2<f32>(0.0f, 0.0f));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat9;
        let x_699 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = u_xlat48;
        let x_703 : vec2<f32> = ((-(vec2<f32>(x_696.x, x_696.y)) * vec2<f32>(x_699.x, x_699.y)) + x_702);
        let x_704 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_706 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_706, vec2<f32>(0.0f, 0.0f));
        let x_708 : vec2<f32> = u_xlat46;
        let x_710 : vec2<f32> = u_xlat46;
        let x_712 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_708) * x_710) + vec2<f32>(x_712.y, x_712.w));
        let x_715 : vec4<f32> = u_xlat9;
        let x_717 : vec2<f32> = (vec2<f32>(x_715.x, x_715.y) + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
        let x_720 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_720 + vec2<f32>(1.0f, 1.0f));
        let x_723 : vec4<f32> = u_xlat8;
        let x_727 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_728 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
        let x_730 : vec2<f32> = u_xlat48;
        let x_731 : vec2<f32> = (x_730 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat9;
        let x_736 : vec2<f32> = (vec2<f32>(x_734.x, x_734.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_740 : vec2<f32> = u_xlat46;
        let x_741 : vec2<f32> = (x_740 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_744.y, x_744.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_748 : f32 = u_xlat9.x;
        u_xlat10.z = x_748;
        let x_751 : f32 = u_xlat46.x;
        u_xlat10.w = x_751;
        let x_754 : f32 = u_xlat11.x;
        u_xlat8.z = x_754;
        let x_757 : f32 = u_xlat7.x;
        u_xlat8.w = x_757;
        let x_760 : vec4<f32> = u_xlat8;
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_760.z, x_760.w, x_760.x, x_760.z) + vec4<f32>(x_762.z, x_762.w, x_762.x, x_762.z));
        let x_766 : f32 = u_xlat10.y;
        u_xlat9.z = x_766;
        let x_769 : f32 = u_xlat46.y;
        u_xlat9.w = x_769;
        let x_772 : f32 = u_xlat8.y;
        u_xlat11.z = x_772;
        let x_775 : f32 = u_xlat7.z;
        u_xlat11.w = x_775;
        let x_777 : vec4<f32> = u_xlat9;
        let x_779 : vec4<f32> = u_xlat11;
        let x_781 : vec3<f32> = (vec3<f32>(x_777.z, x_777.y, x_777.w) + vec3<f32>(x_779.z, x_779.y, x_779.w));
        let x_782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat8;
        let x_786 : vec4<f32> = u_xlat12;
        let x_788 : vec3<f32> = (vec3<f32>(x_784.x, x_784.z, x_784.w) / vec3<f32>(x_786.z, x_786.w, x_786.y));
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat8;
        let x_797 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat11;
        let x_802 : vec4<f32> = u_xlat7;
        let x_804 : vec3<f32> = (vec3<f32>(x_800.z, x_800.y, x_800.w) / vec3<f32>(x_802.x, x_802.y, x_802.z));
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_810 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
        let x_812 : vec4<f32> = u_xlat8;
        let x_815 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.x, x_812.z) * vec3<f32>(x_815.x, x_815.x, x_815.x));
        let x_818 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat9;
        let x_823 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_825 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_823.y, x_823.y, x_823.y));
        let x_826 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
        let x_829 : f32 = u_xlat9.x;
        u_xlat8.w = x_829;
        let x_831 : vec4<f32> = u_xlat6;
        let x_834 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_837 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_831.x, x_831.y, x_831.x, x_831.y) * vec4<f32>(x_834.x, x_834.y, x_834.x, x_834.y)) + vec4<f32>(x_837.y, x_837.w, x_837.x, x_837.w));
        let x_840 : vec4<f32> = u_xlat6;
        let x_843 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_840.x, x_840.y) * vec2<f32>(x_843.x, x_843.y)) + vec2<f32>(x_846.z, x_846.w));
        let x_850 : f32 = u_xlat8.y;
        u_xlat9.w = x_850;
        let x_852 : vec4<f32> = u_xlat9;
        let x_853 : vec2<f32> = vec2<f32>(x_852.y, x_852.z);
        let x_854 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_853.x, x_854.z, x_853.y);
        let x_856 : vec4<f32> = u_xlat6;
        let x_859 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y) * vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y)) + vec4<f32>(x_862.x, x_862.y, x_862.z, x_862.y));
        let x_865 : vec4<f32> = u_xlat6;
        let x_868 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) * vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y)) + vec4<f32>(x_871.w, x_871.y, x_871.w, x_871.z));
        let x_874 : vec4<f32> = u_xlat6;
        let x_877 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) * vec4<f32>(x_877.x, x_877.y, x_877.x, x_877.y)) + vec4<f32>(x_880.x, x_880.w, x_880.z, x_880.w));
        let x_884 : vec4<f32> = u_xlat7;
        let x_886 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_884.x, x_884.x, x_884.x, x_884.y) * vec4<f32>(x_886.z, x_886.w, x_886.y, x_886.z));
        let x_890 : vec4<f32> = u_xlat7;
        let x_892 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_890.y, x_890.y, x_890.z, x_890.z) * x_892);
        let x_896 : f32 = u_xlat7.z;
        let x_898 : f32 = u_xlat12.y;
        u_xlat63 = (x_896 * x_898);
        let x_901 : vec4<f32> = u_xlat10;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_912 : vec3<f32> = txVec4;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
        u_xlat64 = x_914;
        let x_916 : vec4<f32> = u_xlat10;
        let x_917 : vec2<f32> = vec2<f32>(x_916.z, x_916.w);
        let x_919 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_927 : vec3<f32> = txVec5;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
        u_xlat65 = x_929;
        let x_930 : f32 = u_xlat65;
        let x_932 : f32 = u_xlat13.y;
        u_xlat65 = (x_930 * x_932);
        let x_935 : f32 = u_xlat13.x;
        let x_936 : f32 = u_xlat64;
        let x_938 : f32 = u_xlat65;
        u_xlat64 = ((x_935 * x_936) + x_938);
        let x_941 : vec2<f32> = u_xlat46;
        let x_943 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec6;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_950.xy, x_950.z);
        u_xlat65 = x_952;
        let x_954 : f32 = u_xlat13.z;
        let x_955 : f32 = u_xlat65;
        let x_957 : f32 = u_xlat64;
        u_xlat64 = ((x_954 * x_955) + x_957);
        let x_960 : vec4<f32> = u_xlat9;
        let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
        let x_963 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec7;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_970.xy, x_970.z);
        u_xlat65 = x_972;
        let x_974 : f32 = u_xlat13.w;
        let x_975 : f32 = u_xlat65;
        let x_977 : f32 = u_xlat64;
        u_xlat64 = ((x_974 * x_975) + x_977);
        let x_980 : vec4<f32> = u_xlat11;
        let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
        let x_983 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec8;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_990.xy, x_990.z);
        u_xlat65 = x_992;
        let x_994 : f32 = u_xlat14.x;
        let x_995 : f32 = u_xlat65;
        let x_997 : f32 = u_xlat64;
        u_xlat64 = ((x_994 * x_995) + x_997);
        let x_1000 : vec4<f32> = u_xlat11;
        let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
        let x_1003 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
        let x_1010 : vec3<f32> = txVec9;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
        u_xlat65 = x_1012;
        let x_1014 : f32 = u_xlat14.y;
        let x_1015 : f32 = u_xlat65;
        let x_1017 : f32 = u_xlat64;
        u_xlat64 = ((x_1014 * x_1015) + x_1017);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.z, x_1020.w);
        let x_1023 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
        let x_1030 : vec3<f32> = txVec10;
        let x_1032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1030.xy, x_1030.z);
        u_xlat65 = x_1032;
        let x_1034 : f32 = u_xlat14.z;
        let x_1035 : f32 = u_xlat65;
        let x_1037 : f32 = u_xlat64;
        u_xlat64 = ((x_1034 * x_1035) + x_1037);
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.x, x_1040.y);
        let x_1043 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec11;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
        u_xlat65 = x_1052;
        let x_1054 : f32 = u_xlat14.w;
        let x_1055 : f32 = u_xlat65;
        let x_1057 : f32 = u_xlat64;
        u_xlat64 = ((x_1054 * x_1055) + x_1057);
        let x_1060 : vec4<f32> = u_xlat8;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec12;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1070.xy, x_1070.z);
        u_xlat65 = x_1072;
        let x_1073 : f32 = u_xlat63;
        let x_1074 : f32 = u_xlat65;
        let x_1076 : f32 = u_xlat64;
        u_xlat62 = ((x_1073 * x_1074) + x_1076);
      } else {
        let x_1079 : vec4<f32> = u_xlat4;
        let x_1082 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1082.z, x_1082.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1090 : vec2<f32> = floor(vec2<f32>(x_1088.x, x_1088.y));
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.z, x_1096.w)) + -(vec2<f32>(x_1099.x, x_1099.y)));
        let x_1103 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1103.x, x_1103.x, x_1103.y, x_1103.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1106.x, x_1106.x, x_1106.z, x_1106.z) * vec4<f32>(x_1108.x, x_1108.x, x_1108.z, x_1108.z));
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1115 : vec2<f32> = (vec2<f32>(x_1111.y, x_1111.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1116.x, x_1115.x, x_1116.z, x_1115.y);
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = u_xlat46;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1121));
        let x_1124 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1124.w);
        let x_1126 : vec2<f32> = u_xlat46;
        let x_1128 : vec2<f32> = (-(x_1126) + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1131, vec2<f32>(0.0f, 0.0f));
        let x_1133 : vec2<f32> = u_xlat48;
        let x_1135 : vec2<f32> = u_xlat48;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1139 : vec2<f32> = ((-(x_1133) * x_1135) + vec2<f32>(x_1137.x, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1142, vec2<f32>(0.0f, 0.0f));
        let x_1145 : vec2<f32> = u_xlat48;
        let x_1147 : vec2<f32> = u_xlat48;
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = ((-(x_1145) * x_1147) + vec2<f32>(x_1149.y, x_1149.w));
        let x_1152 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1151.x, x_1152.y, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1156 : vec2<f32> = (vec2<f32>(x_1154.x, x_1154.y) + vec2<f32>(2.0f, 2.0f));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1159 : vec3<f32> = u_xlat27;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1159.x, x_1159.z) + vec2<f32>(2.0f, 2.0f));
        let x_1162 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1165 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1165 * 0.081632003f);
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1172 : vec3<f32> = (vec3<f32>(x_1169.z, x_1169.x, x_1169.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1178 : vec2<f32> = (vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1182 : f32 = u_xlat11.y;
        u_xlat10.x = x_1182;
        let x_1184 : vec2<f32> = u_xlat46;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1192.x, x_1191.x, x_1192.z, x_1191.y);
        let x_1194 : vec2<f32> = u_xlat46;
        let x_1198 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1198.x, x_1199.y, x_1198.y, x_1199.w);
        let x_1202 : f32 = u_xlat7.x;
        u_xlat8.y = x_1202;
        let x_1205 : f32 = u_xlat9.y;
        u_xlat8.w = x_1205;
        let x_1207 : vec4<f32> = u_xlat8;
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1207 + x_1208);
        let x_1210 : vec2<f32> = u_xlat46;
        let x_1213 : vec2<f32> = ((vec2<f32>(x_1210.y, x_1210.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1214 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1214.x, x_1213.x, x_1214.z, x_1213.y);
        let x_1216 : vec2<f32> = u_xlat46;
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1216.y, x_1216.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1219.x, x_1220.y, x_1219.y, x_1220.w);
        let x_1223 : f32 = u_xlat7.y;
        u_xlat9.y = x_1223;
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1226 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1225 + x_1226);
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1228 / x_1229);
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1231 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1237 / x_1238);
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1240 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1245 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1242.w, x_1242.x, x_1242.y, x_1242.z) * vec4<f32>(x_1245.x, x_1245.x, x_1245.x, x_1245.x));
        let x_1248 : vec4<f32> = u_xlat9;
        let x_1251 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1248.x, x_1248.w, x_1248.y, x_1248.z) * vec4<f32>(x_1251.y, x_1251.y, x_1251.y, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec3<f32> = vec3<f32>(x_1254.y, x_1254.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1255.x, x_1256.y, x_1255.y, x_1255.z);
        let x_1259 : f32 = u_xlat9.x;
        u_xlat11.y = x_1259;
        let x_1261 : vec4<f32> = u_xlat6;
        let x_1264 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.y));
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.w, x_1276.y));
        let x_1280 : f32 = u_xlat11.y;
        u_xlat8.y = x_1280;
        let x_1283 : f32 = u_xlat9.z;
        u_xlat11.y = x_1283;
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1288 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1291.y));
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat11;
        let x_1302 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.w, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        let x_1306 : f32 = u_xlat11.y;
        u_xlat8.z = x_1306;
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.z));
        let x_1319 : f32 = u_xlat9.w;
        u_xlat11.y = x_1319;
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1338.w, x_1338.y));
        let x_1342 : f32 = u_xlat11.y;
        u_xlat8.w = x_1342;
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(x_1348.x, x_1348.y)) + vec2<f32>(x_1351.x, x_1351.w));
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec3<f32> = vec3<f32>(x_1354.x, x_1354.z, x_1354.w);
        let x_1356 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1355.x, x_1356.y, x_1355.y, x_1355.z);
        let x_1358 : vec4<f32> = u_xlat6;
        let x_1361 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y) * vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y)) + vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1364.y));
        let x_1368 : vec4<f32> = u_xlat6;
        let x_1371 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1368.x, x_1368.y) * vec2<f32>(x_1371.x, x_1371.y)) + vec2<f32>(x_1374.w, x_1374.y));
        let x_1378 : f32 = u_xlat8.x;
        u_xlat9.x = x_1378;
        let x_1380 : vec4<f32> = u_xlat6;
        let x_1383 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(x_1383.x, x_1383.y)) + vec2<f32>(x_1386.x, x_1386.y));
        let x_1389 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1394 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1392.x, x_1392.x, x_1392.x, x_1392.x) * x_1394);
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1397.y, x_1397.y, x_1397.y, x_1397.y) * x_1399);
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1402.z, x_1402.z, x_1402.z, x_1402.z) * x_1404);
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1406.w, x_1406.w, x_1406.w, x_1406.w) * x_1408);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec13;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat63 = x_1423;
        let x_1425 : vec4<f32> = u_xlat12;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec14;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat64 = x_1437;
        let x_1438 : f32 = u_xlat64;
        let x_1440 : f32 = u_xlat17.y;
        u_xlat64 = (x_1438 * x_1440);
        let x_1443 : f32 = u_xlat17.x;
        let x_1444 : f32 = u_xlat63;
        let x_1446 : f32 = u_xlat64;
        u_xlat63 = ((x_1443 * x_1444) + x_1446);
        let x_1449 : vec2<f32> = u_xlat46;
        let x_1451 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec15;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat64 = x_1460;
        let x_1462 : f32 = u_xlat17.z;
        let x_1463 : f32 = u_xlat64;
        let x_1465 : f32 = u_xlat63;
        u_xlat63 = ((x_1462 * x_1463) + x_1465);
        let x_1468 : vec4<f32> = u_xlat15;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
        let x_1471 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec16;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat64 = x_1480;
        let x_1482 : f32 = u_xlat17.w;
        let x_1483 : f32 = u_xlat64;
        let x_1485 : f32 = u_xlat63;
        u_xlat63 = ((x_1482 * x_1483) + x_1485);
        let x_1488 : vec4<f32> = u_xlat13;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec17;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat64 = x_1500;
        let x_1502 : f32 = u_xlat18.x;
        let x_1503 : f32 = u_xlat64;
        let x_1505 : f32 = u_xlat63;
        u_xlat63 = ((x_1502 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat13;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.z, x_1508.w);
        let x_1511 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec18;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat64 = x_1520;
        let x_1522 : f32 = u_xlat18.y;
        let x_1523 : f32 = u_xlat64;
        let x_1525 : f32 = u_xlat63;
        u_xlat63 = ((x_1522 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat14;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec19;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat64 = x_1540;
        let x_1542 : f32 = u_xlat18.z;
        let x_1543 : f32 = u_xlat64;
        let x_1545 : f32 = u_xlat63;
        u_xlat63 = ((x_1542 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat15;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec20;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat64 = x_1560;
        let x_1562 : f32 = u_xlat18.w;
        let x_1563 : f32 = u_xlat64;
        let x_1565 : f32 = u_xlat63;
        u_xlat63 = ((x_1562 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat16;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec21;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat64 = x_1580;
        let x_1582 : f32 = u_xlat19.x;
        let x_1583 : f32 = u_xlat64;
        let x_1585 : f32 = u_xlat63;
        u_xlat63 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat16;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec22;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat64 = x_1600;
        let x_1602 : f32 = u_xlat19.y;
        let x_1603 : f32 = u_xlat64;
        let x_1605 : f32 = u_xlat63;
        u_xlat63 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec2<f32> = u_xlat28;
        let x_1610 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec23;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat64 = x_1619;
        let x_1621 : f32 = u_xlat19.z;
        let x_1622 : f32 = u_xlat64;
        let x_1624 : f32 = u_xlat63;
        u_xlat63 = ((x_1621 * x_1622) + x_1624);
        let x_1627 : vec2<f32> = u_xlat54;
        let x_1629 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec24;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1636.xy, x_1636.z);
        u_xlat64 = x_1638;
        let x_1640 : f32 = u_xlat19.w;
        let x_1641 : f32 = u_xlat64;
        let x_1643 : f32 = u_xlat63;
        u_xlat63 = ((x_1640 * x_1641) + x_1643);
        let x_1646 : vec4<f32> = u_xlat11;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec25;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat64 = x_1658;
        let x_1660 : f32 = u_xlat7.x;
        let x_1661 : f32 = u_xlat64;
        let x_1663 : f32 = u_xlat63;
        u_xlat63 = ((x_1660 * x_1661) + x_1663);
        let x_1666 : vec4<f32> = u_xlat11;
        let x_1667 : vec2<f32> = vec2<f32>(x_1666.z, x_1666.w);
        let x_1669 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec26;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat64 = x_1678;
        let x_1680 : f32 = u_xlat7.y;
        let x_1681 : f32 = u_xlat64;
        let x_1683 : f32 = u_xlat63;
        u_xlat63 = ((x_1680 * x_1681) + x_1683);
        let x_1686 : vec2<f32> = u_xlat49;
        let x_1688 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
        let x_1695 : vec3<f32> = txVec27;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1695.xy, x_1695.z);
        u_xlat64 = x_1697;
        let x_1699 : f32 = u_xlat7.z;
        let x_1700 : f32 = u_xlat64;
        let x_1702 : f32 = u_xlat63;
        u_xlat63 = ((x_1699 * x_1700) + x_1702);
        let x_1705 : vec4<f32> = u_xlat6;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.x, x_1705.y);
        let x_1708 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec28;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat64 = x_1717;
        let x_1719 : f32 = u_xlat7.w;
        let x_1720 : f32 = u_xlat64;
        let x_1722 : f32 = u_xlat63;
        u_xlat62 = ((x_1719 * x_1720) + x_1722);
      }
    }
  } else {
    let x_1726 : vec4<f32> = u_xlat4;
    let x_1727 : vec2<f32> = vec2<f32>(x_1726.x, x_1726.y);
    let x_1729 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
    let x_1736 : vec3<f32> = txVec29;
    let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
    u_xlat62 = x_1738;
  }
  let x_1740 : f32 = x_277.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_1740) + 1.0f);
  let x_1743 : f32 = u_xlat62;
  let x_1745 : f32 = x_277.x_MainLightShadowParams.x;
  let x_1747 : f32 = u_xlat63;
  u_xlat62 = ((x_1743 * x_1745) + x_1747);
  let x_1750 : f32 = u_xlat4.z;
  u_xlatb63 = (0.0f >= x_1750);
  let x_1753 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_1753 >= 1.0f);
  let x_1756 : bool = u_xlatb63;
  let x_1758 : bool = u_xlatb4.x;
  u_xlatb63 = (x_1756 | x_1758);
  let x_1760 : bool = u_xlatb63;
  let x_1761 : f32 = u_xlat62;
  u_xlat62 = select(x_1761, 1.0f, x_1760);
  let x_1763 : vec3<f32> = vs_TEXCOORD1;
  let x_1766 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1768 : vec3<f32> = (x_1763 + -(x_1766));
  let x_1769 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : vec4<f32> = u_xlat4;
  let x_1773 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_1771.x, x_1771.y, x_1771.z), vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : f32 = u_xlat63;
  let x_1778 : f32 = x_277.x_MainLightShadowParams.z;
  let x_1781 : f32 = x_277.x_MainLightShadowParams.w;
  u_xlat63 = ((x_1776 * x_1778) + x_1781);
  let x_1783 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1783, 0.0f, 1.0f);
  let x_1785 : f32 = u_xlat62;
  u_xlat4.x = (-(x_1785) + 1.0f);
  let x_1789 : f32 = u_xlat63;
  let x_1791 : f32 = u_xlat4.x;
  let x_1793 : f32 = u_xlat62;
  u_xlat62 = ((x_1789 * x_1791) + x_1793);
  let x_1801 : f32 = x_1799.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_1801 == -1.0f));
  let x_1803 : bool = u_xlatb63;
  if (x_1803) {
    let x_1806 : vec3<f32> = vs_TEXCOORD1;
    let x_1809 : vec4<f32> = x_1799.x_MainLightWorldToLight[1i];
    let x_1811 : vec2<f32> = (vec2<f32>(x_1806.y, x_1806.y) * vec2<f32>(x_1809.x, x_1809.y));
    let x_1812 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
    let x_1815 : vec4<f32> = x_1799.x_MainLightWorldToLight[0i];
    let x_1817 : vec3<f32> = vs_TEXCOORD1;
    let x_1820 : vec4<f32> = u_xlat4;
    let x_1822 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.y) * vec2<f32>(x_1817.x, x_1817.x)) + vec2<f32>(x_1820.x, x_1820.y));
    let x_1823 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1822.x, x_1822.y, x_1823.z, x_1823.w);
    let x_1826 : vec4<f32> = x_1799.x_MainLightWorldToLight[2i];
    let x_1828 : vec3<f32> = vs_TEXCOORD1;
    let x_1831 : vec4<f32> = u_xlat4;
    let x_1833 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1828.z, x_1828.z)) + vec2<f32>(x_1831.x, x_1831.y));
    let x_1834 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
    let x_1836 : vec4<f32> = u_xlat4;
    let x_1839 : vec4<f32> = x_1799.x_MainLightWorldToLight[3i];
    let x_1841 : vec2<f32> = (vec2<f32>(x_1836.x, x_1836.y) + vec2<f32>(x_1839.x, x_1839.y));
    let x_1842 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
    let x_1844 : vec4<f32> = u_xlat4;
    let x_1847 : vec2<f32> = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1848 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
    let x_1855 : vec4<f32> = u_xlat4;
    let x_1858 : f32 = x_43.x_GlobalMipBias.x;
    let x_1859 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1855.x, x_1855.y), x_1858);
    u_xlat4 = x_1859;
    let x_1864 : f32 = x_1799.x_MainLightCookieTextureFormat;
    let x_1866 : f32 = x_1799.x_MainLightCookieTextureFormat;
    let x_1868 : f32 = x_1799.x_MainLightCookieTextureFormat;
    let x_1870 : f32 = x_1799.x_MainLightCookieTextureFormat;
    let x_1871 : vec4<f32> = vec4<f32>(x_1864, x_1866, x_1868, x_1870);
    let x_1878 : vec4<bool> = (vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1871.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1878.x, x_1878.y);
    let x_1881 : bool = u_xlatb6.y;
    if (x_1881) {
      let x_1886 : f32 = u_xlat4.w;
      x_1882 = x_1886;
    } else {
      let x_1889 : f32 = u_xlat4.x;
      x_1882 = x_1889;
    }
    let x_1890 : f32 = x_1882;
    u_xlat63 = x_1890;
    let x_1892 : bool = u_xlatb6.x;
    if (x_1892) {
      let x_1896 : vec4<f32> = u_xlat4;
      x_1893 = vec3<f32>(x_1896.x, x_1896.y, x_1896.z);
    } else {
      let x_1899 : f32 = u_xlat63;
      x_1893 = vec3<f32>(x_1899, x_1899, x_1899);
    }
    let x_1901 : vec3<f32> = x_1893;
    let x_1902 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1908 : vec4<f32> = u_xlat4;
  let x_1911 : vec4<f32> = x_43.x_MainLightColor;
  let x_1913 : vec3<f32> = (vec3<f32>(x_1908.x, x_1908.y, x_1908.z) * vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1916 : vec4<f32> = u_xlat1;
  let x_1918 : vec4<f32> = u_xlat4;
  let x_1920 : vec3<f32> = (vec3<f32>(x_1916.x, x_1916.x, x_1916.x) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1923 : f32 = u_xlat60;
  let x_1925 : vec4<f32> = u_xlat5;
  let x_1927 : vec3<f32> = (vec3<f32>(x_1923, x_1923, x_1923) * vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : f32 = u_xlat62;
  let x_1936 : f32 = x_1934.unity_LightData.z;
  u_xlat60 = (x_1930 * x_1936);
  let x_1938 : f32 = u_xlat60;
  let x_1940 : vec4<f32> = u_xlat4;
  let x_1942 : vec3<f32> = (vec3<f32>(x_1938, x_1938, x_1938) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
  let x_1945 : vec3<f32> = u_xlat2;
  let x_1947 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat60 = dot(x_1945, vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1950, 0.0f, 1.0f);
  let x_1952 : f32 = u_xlat60;
  let x_1954 : vec4<f32> = u_xlat4;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1952, x_1952, x_1952) * vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1960 : f32 = x_56.x_SpecColor.w;
  u_xlat60 = ((x_1960 * 10.0f) + 1.0f);
  let x_1964 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1964);
  let x_1966 : vec3<f32> = u_xlat3;
  let x_1967 : vec3<f32> = u_xlat20;
  let x_1971 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1973 : vec3<f32> = ((x_1966 * vec3<f32>(x_1967.x, x_1967.x, x_1967.x)) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1978 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_1976.x, x_1976.y, x_1976.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : f32 = u_xlat62;
  u_xlat62 = max(x_1981, 1.17549435e-37f);
  let x_1983 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1983);
  let x_1985 : f32 = u_xlat62;
  let x_1987 : vec4<f32> = u_xlat7;
  let x_1989 : vec3<f32> = (vec3<f32>(x_1985, x_1985, x_1985) * vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec3<f32> = u_xlat2;
  let x_1993 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(x_1992, vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1996, 0.0f, 1.0f);
  let x_1998 : f32 = u_xlat62;
  u_xlat62 = log2(x_1998);
  let x_2000 : f32 = u_xlat60;
  let x_2001 : f32 = u_xlat62;
  u_xlat62 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat62;
  u_xlat62 = exp2(x_2003);
  let x_2005 : f32 = u_xlat62;
  let x_2008 : vec4<f32> = x_56.x_SpecColor;
  let x_2010 : vec3<f32> = (vec3<f32>(x_2005, x_2005, x_2005) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : vec4<f32> = u_xlat4;
  let x_2015 : vec4<f32> = u_xlat7;
  let x_2017 : vec3<f32> = (vec3<f32>(x_2013.x, x_2013.y, x_2013.z) * vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2018 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
  let x_2020 : vec4<f32> = u_xlat6;
  let x_2022 : vec4<f32> = u_xlat1;
  let x_2025 : vec4<f32> = u_xlat4;
  let x_2027 : vec3<f32> = ((vec3<f32>(x_2020.x, x_2020.y, x_2020.z) * vec3<f32>(x_2022.y, x_2022.z, x_2022.w)) + vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2031 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2033 : f32 = x_1934.unity_LightData.y;
  u_xlat62 = min(x_2031, x_2033);
  let x_2036 : f32 = u_xlat62;
  u_xlatu62 = bitcast<u32>(i32(x_2036));
  let x_2040 : f32 = x_1799.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2042 : f32 = x_1799.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2044 : f32 = x_1799.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2046 : f32 = x_1799.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2047 : vec4<f32> = vec4<f32>(x_2040, x_2042, x_2044, x_2046);
  let x_2053 : vec4<bool> = (vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2047.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2053.x, x_2053.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2064 : u32 = u_xlatu_loop_1;
    let x_2065 : u32 = u_xlatu62;
    if ((x_2064 < x_2065)) {
    } else {
      break;
    }
    let x_2068 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2068 >> 2u);
    let x_2071 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2071 & 3u));
    let x_2074 : u32 = u_xlatu64;
    let x_2077 : vec4<f32> = x_1934.unity_LightIndices[bitcast<i32>(x_2074)];
    let x_2087 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2092 : vec4<u32> = indexable[x_2087];
    u_xlat64 = dot(x_2077, bitcast<vec4<f32>>(x_2092));
    let x_2095 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2095));
    let x_2098 : vec3<f32> = vs_TEXCOORD1;
    let x_2110 : u32 = u_xlatu64;
    let x_2113 : vec4<f32> = x_2109.x_AdditionalLightsPosition[bitcast<i32>(x_2110)];
    let x_2116 : u32 = u_xlatu64;
    let x_2119 : vec4<f32> = x_2109.x_AdditionalLightsPosition[bitcast<i32>(x_2116)];
    let x_2121 : vec3<f32> = ((-(x_2098) * vec3<f32>(x_2113.w, x_2113.w, x_2113.w)) + vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
    let x_2122 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
    let x_2124 : vec4<f32> = u_xlat8;
    let x_2126 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2124.x, x_2124.y, x_2124.z), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
    let x_2129 : f32 = u_xlat65;
    u_xlat65 = max(x_2129, 6.10351562e-05f);
    let x_2132 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2132);
    let x_2135 : vec2<f32> = u_xlat46;
    let x_2137 : vec4<f32> = u_xlat8;
    let x_2139 : vec3<f32> = (vec3<f32>(x_2135.x, x_2135.x, x_2135.x) * vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
    let x_2142 : f32 = u_xlat65;
    u_xlat46.x = (1.0f / x_2142);
    let x_2145 : f32 = u_xlat65;
    let x_2146 : u32 = u_xlatu64;
    let x_2149 : f32 = x_2109.x_AdditionalLightsAttenuation[bitcast<i32>(x_2146)].x;
    u_xlat65 = (x_2145 * x_2149);
    let x_2151 : f32 = u_xlat65;
    let x_2153 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2151) * x_2153) + 1.0f);
    let x_2156 : f32 = u_xlat65;
    u_xlat65 = max(x_2156, 0.0f);
    let x_2158 : f32 = u_xlat65;
    let x_2159 : f32 = u_xlat65;
    u_xlat65 = (x_2158 * x_2159);
    let x_2161 : f32 = u_xlat65;
    let x_2163 : f32 = u_xlat46.x;
    u_xlat65 = (x_2161 * x_2163);
    let x_2165 : u32 = u_xlatu64;
    let x_2168 : vec4<f32> = x_2109.x_AdditionalLightsSpotDir[bitcast<i32>(x_2165)];
    let x_2170 : vec4<f32> = u_xlat8;
    u_xlat46.x = dot(vec3<f32>(x_2168.x, x_2168.y, x_2168.z), vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
    let x_2175 : f32 = u_xlat46.x;
    let x_2176 : u32 = u_xlatu64;
    let x_2179 : f32 = x_2109.x_AdditionalLightsAttenuation[bitcast<i32>(x_2176)].z;
    let x_2181 : u32 = u_xlatu64;
    let x_2184 : f32 = x_2109.x_AdditionalLightsAttenuation[bitcast<i32>(x_2181)].w;
    u_xlat46.x = ((x_2175 * x_2179) + x_2184);
    let x_2188 : f32 = u_xlat46.x;
    u_xlat46.x = clamp(x_2188, 0.0f, 1.0f);
    let x_2192 : f32 = u_xlat46.x;
    let x_2194 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2192 * x_2194);
    let x_2197 : f32 = u_xlat65;
    let x_2199 : f32 = u_xlat46.x;
    u_xlat65 = (x_2197 * x_2199);
    let x_2202 : u32 = u_xlatu64;
    u_xlatu46 = (x_2202 >> 5u);
    let x_2205 : u32 = u_xlatu64;
    u_xlati66 = (1i << bitcast<u32>((bitcast<i32>(x_2205) & 31i)));
    let x_2211 : i32 = u_xlati66;
    let x_2213 : u32 = u_xlatu46;
    let x_2216 : f32 = x_1799.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2213)].el;
    u_xlati46 = bitcast<i32>((bitcast<u32>(x_2211) & bitcast<u32>(x_2216)));
    let x_2220 : i32 = u_xlati46;
    if ((x_2220 != 0i)) {
      let x_2230 : u32 = u_xlatu64;
      let x_2233 : f32 = x_2229.x_AdditionalLightsLightTypes[bitcast<i32>(x_2230)].el;
      u_xlati46 = i32(x_2233);
      let x_2235 : i32 = u_xlati46;
      u_xlati66 = select(1i, 0i, (x_2235 != 0i));
      let x_2239 : u32 = u_xlatu64;
      u_xlati67 = (bitcast<i32>(x_2239) << bitcast<u32>(2i));
      let x_2242 : i32 = u_xlati66;
      if ((x_2242 != 0i)) {
        let x_2246 : vec3<f32> = vs_TEXCOORD1;
        let x_2248 : i32 = u_xlati67;
        let x_2251 : i32 = u_xlati67;
        let x_2255 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2248 + 1i) / 4i)][((x_2251 + 1i) % 4i)];
        let x_2257 : vec3<f32> = (vec3<f32>(x_2246.y, x_2246.y, x_2246.y) * vec3<f32>(x_2255.x, x_2255.y, x_2255.w));
        let x_2258 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2257.x, x_2257.y, x_2257.z, x_2258.w);
        let x_2260 : i32 = u_xlati67;
        let x_2262 : i32 = u_xlati67;
        let x_2265 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[(x_2260 / 4i)][(x_2262 % 4i)];
        let x_2267 : vec3<f32> = vs_TEXCOORD1;
        let x_2270 : vec4<f32> = u_xlat9;
        let x_2272 : vec3<f32> = ((vec3<f32>(x_2265.x, x_2265.y, x_2265.w) * vec3<f32>(x_2267.x, x_2267.x, x_2267.x)) + vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
        let x_2273 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2275 : i32 = u_xlati67;
        let x_2278 : i32 = u_xlati67;
        let x_2282 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2275 + 2i) / 4i)][((x_2278 + 2i) % 4i)];
        let x_2284 : vec3<f32> = vs_TEXCOORD1;
        let x_2287 : vec4<f32> = u_xlat9;
        let x_2289 : vec3<f32> = ((vec3<f32>(x_2282.x, x_2282.y, x_2282.w) * vec3<f32>(x_2284.z, x_2284.z, x_2284.z)) + vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
        let x_2290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
        let x_2292 : vec4<f32> = u_xlat9;
        let x_2294 : i32 = u_xlati67;
        let x_2297 : i32 = u_xlati67;
        let x_2301 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2294 + 3i) / 4i)][((x_2297 + 3i) % 4i)];
        let x_2303 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) + vec3<f32>(x_2301.x, x_2301.y, x_2301.w));
        let x_2304 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
        let x_2306 : vec4<f32> = u_xlat9;
        let x_2308 : vec4<f32> = u_xlat9;
        let x_2310 : vec2<f32> = (vec2<f32>(x_2306.x, x_2306.y) / vec2<f32>(x_2308.z, x_2308.z));
        let x_2311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
        let x_2313 : vec4<f32> = u_xlat9;
        let x_2316 : vec2<f32> = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2317 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
        let x_2319 : vec4<f32> = u_xlat9;
        let x_2323 : vec2<f32> = clamp(vec2<f32>(x_2319.x, x_2319.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2323.x, x_2323.y, x_2324.z, x_2324.w);
        let x_2326 : u32 = u_xlatu64;
        let x_2329 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2326)];
        let x_2331 : vec4<f32> = u_xlat9;
        let x_2334 : u32 = u_xlatu64;
        let x_2337 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2334)];
        let x_2339 : vec2<f32> = ((vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(x_2331.x, x_2331.y)) + vec2<f32>(x_2337.z, x_2337.w));
        let x_2340 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
      } else {
        let x_2344 : i32 = u_xlati46;
        u_xlatb46 = (x_2344 == 1i);
        let x_2346 : bool = u_xlatb46;
        u_xlati46 = select(0i, 1i, x_2346);
        let x_2348 : i32 = u_xlati46;
        if ((x_2348 != 0i)) {
          let x_2352 : vec3<f32> = vs_TEXCOORD1;
          let x_2354 : i32 = u_xlati67;
          let x_2357 : i32 = u_xlati67;
          let x_2361 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2354 + 1i) / 4i)][((x_2357 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2352.y, x_2352.y) * vec2<f32>(x_2361.x, x_2361.y));
          let x_2364 : i32 = u_xlati67;
          let x_2366 : i32 = u_xlati67;
          let x_2369 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[(x_2364 / 4i)][(x_2366 % 4i)];
          let x_2371 : vec3<f32> = vs_TEXCOORD1;
          let x_2374 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2371.x, x_2371.x)) + x_2374);
          let x_2376 : i32 = u_xlati67;
          let x_2379 : i32 = u_xlati67;
          let x_2383 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2376 + 2i) / 4i)][((x_2379 + 2i) % 4i)];
          let x_2385 : vec3<f32> = vs_TEXCOORD1;
          let x_2388 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2383.x, x_2383.y) * vec2<f32>(x_2385.z, x_2385.z)) + x_2388);
          let x_2390 : vec2<f32> = u_xlat46;
          let x_2391 : i32 = u_xlati67;
          let x_2394 : i32 = u_xlati67;
          let x_2398 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2391 + 3i) / 4i)][((x_2394 + 3i) % 4i)];
          u_xlat46 = (x_2390 + vec2<f32>(x_2398.x, x_2398.y));
          let x_2401 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2401 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2404 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2404);
          let x_2406 : u32 = u_xlatu64;
          let x_2409 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2406)];
          let x_2411 : vec2<f32> = u_xlat46;
          let x_2413 : u32 = u_xlatu64;
          let x_2416 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2413)];
          let x_2418 : vec2<f32> = ((vec2<f32>(x_2409.x, x_2409.y) * x_2411) + vec2<f32>(x_2416.z, x_2416.w));
          let x_2419 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2418.x, x_2418.y, x_2419.z, x_2419.w);
        } else {
          let x_2422 : vec3<f32> = vs_TEXCOORD1;
          let x_2424 : i32 = u_xlati67;
          let x_2427 : i32 = u_xlati67;
          let x_2431 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2424 + 1i) / 4i)][((x_2427 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2422.y, x_2422.y, x_2422.y, x_2422.y) * x_2431);
          let x_2433 : i32 = u_xlati67;
          let x_2435 : i32 = u_xlati67;
          let x_2438 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[(x_2433 / 4i)][(x_2435 % 4i)];
          let x_2439 : vec3<f32> = vs_TEXCOORD1;
          let x_2442 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2438 * vec4<f32>(x_2439.x, x_2439.x, x_2439.x, x_2439.x)) + x_2442);
          let x_2444 : i32 = u_xlati67;
          let x_2447 : i32 = u_xlati67;
          let x_2451 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2444 + 2i) / 4i)][((x_2447 + 2i) % 4i)];
          let x_2452 : vec3<f32> = vs_TEXCOORD1;
          let x_2455 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2451 * vec4<f32>(x_2452.z, x_2452.z, x_2452.z, x_2452.z)) + x_2455);
          let x_2457 : vec4<f32> = u_xlat10;
          let x_2458 : i32 = u_xlati67;
          let x_2461 : i32 = u_xlati67;
          let x_2465 : vec4<f32> = x_2229.x_AdditionalLightsWorldToLights[((x_2458 + 3i) / 4i)][((x_2461 + 3i) % 4i)];
          u_xlat10 = (x_2457 + x_2465);
          let x_2467 : vec4<f32> = u_xlat10;
          let x_2469 : vec4<f32> = u_xlat10;
          let x_2471 : vec3<f32> = (vec3<f32>(x_2467.x, x_2467.y, x_2467.z) / vec3<f32>(x_2469.w, x_2469.w, x_2469.w));
          let x_2472 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
          let x_2474 : vec4<f32> = u_xlat10;
          let x_2476 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(vec3<f32>(x_2474.x, x_2474.y, x_2474.z), vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
          let x_2481 : f32 = u_xlat46.x;
          u_xlat46.x = inverseSqrt(x_2481);
          let x_2484 : vec2<f32> = u_xlat46;
          let x_2486 : vec4<f32> = u_xlat10;
          let x_2488 : vec3<f32> = (vec3<f32>(x_2484.x, x_2484.x, x_2484.x) * vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
          let x_2489 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
          let x_2491 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(abs(vec3<f32>(x_2491.x, x_2491.y, x_2491.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2498 : f32 = u_xlat46.x;
          u_xlat46.x = max(x_2498, 0.000001f);
          let x_2503 : f32 = u_xlat46.x;
          u_xlat46.x = (1.0f / x_2503);
          let x_2506 : vec2<f32> = u_xlat46;
          let x_2508 : vec4<f32> = u_xlat10;
          let x_2510 : vec3<f32> = (vec3<f32>(x_2506.x, x_2506.x, x_2506.x) * vec3<f32>(x_2508.z, x_2508.x, x_2508.y));
          let x_2511 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
          let x_2514 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2514);
          let x_2518 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2518, 0.0f, 1.0f);
          let x_2522 : vec4<f32> = u_xlat11;
          let x_2525 : vec4<bool> = (vec4<f32>(x_2522.y, x_2522.z, x_2522.y, x_2522.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb49 = vec2<bool>(x_2525.x, x_2525.y);
          let x_2528 : bool = u_xlatb49.x;
          if (x_2528) {
            let x_2533 : f32 = u_xlat11.x;
            x_2529 = x_2533;
          } else {
            let x_2536 : f32 = u_xlat11.x;
            x_2529 = -(x_2536);
          }
          let x_2538 : f32 = x_2529;
          u_xlat49.x = x_2538;
          let x_2541 : bool = u_xlatb49.y;
          if (x_2541) {
            let x_2546 : f32 = u_xlat11.x;
            x_2542 = x_2546;
          } else {
            let x_2549 : f32 = u_xlat11.x;
            x_2542 = -(x_2549);
          }
          let x_2551 : f32 = x_2542;
          u_xlat49.y = x_2551;
          let x_2553 : vec4<f32> = u_xlat10;
          let x_2555 : vec2<f32> = u_xlat46;
          let x_2558 : vec2<f32> = u_xlat49;
          u_xlat46 = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2555.x, x_2555.x)) + x_2558);
          let x_2560 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2560 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2563 : vec2<f32> = u_xlat46;
          u_xlat46 = clamp(x_2563, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2567 : u32 = u_xlatu64;
          let x_2570 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2567)];
          let x_2572 : vec2<f32> = u_xlat46;
          let x_2574 : u32 = u_xlatu64;
          let x_2577 : vec4<f32> = x_2229.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2574)];
          let x_2579 : vec2<f32> = ((vec2<f32>(x_2570.x, x_2570.y) * x_2572) + vec2<f32>(x_2577.z, x_2577.w));
          let x_2580 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2579.x, x_2579.y, x_2580.z, x_2580.w);
        }
      }
      let x_2587 : vec4<f32> = u_xlat9;
      let x_2590 : f32 = x_43.x_GlobalMipBias.x;
      let x_2591 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2587.x, x_2587.y), x_2590);
      u_xlat9 = x_2591;
      let x_2593 : bool = u_xlatb6.y;
      if (x_2593) {
        let x_2598 : f32 = u_xlat9.w;
        x_2594 = x_2598;
      } else {
        let x_2601 : f32 = u_xlat9.x;
        x_2594 = x_2601;
      }
      let x_2602 : f32 = x_2594;
      u_xlat46.x = x_2602;
      let x_2605 : bool = u_xlatb6.x;
      if (x_2605) {
        let x_2609 : vec4<f32> = u_xlat9;
        x_2606 = vec3<f32>(x_2609.x, x_2609.y, x_2609.z);
      } else {
        let x_2612 : vec2<f32> = u_xlat46;
        x_2606 = vec3<f32>(x_2612.x, x_2612.x, x_2612.x);
      }
      let x_2614 : vec3<f32> = x_2606;
      let x_2615 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2621 : vec4<f32> = u_xlat9;
    let x_2623 : u32 = u_xlatu64;
    let x_2626 : vec4<f32> = x_2109.x_AdditionalLightsColor[bitcast<i32>(x_2623)];
    let x_2628 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) * vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
    let x_2629 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
    let x_2631 : vec4<f32> = u_xlat1;
    let x_2633 : vec4<f32> = u_xlat9;
    let x_2635 : vec3<f32> = (vec3<f32>(x_2631.x, x_2631.x, x_2631.x) * vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
    let x_2636 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
    let x_2638 : f32 = u_xlat65;
    let x_2640 : vec4<f32> = u_xlat9;
    let x_2642 : vec3<f32> = (vec3<f32>(x_2638, x_2638, x_2638) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
    let x_2643 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
    let x_2645 : vec3<f32> = u_xlat2;
    let x_2646 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2645, vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
    let x_2649 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2649, 0.0f, 1.0f);
    let x_2651 : f32 = u_xlat64;
    let x_2653 : vec4<f32> = u_xlat9;
    let x_2655 : vec3<f32> = (vec3<f32>(x_2651, x_2651, x_2651) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
    let x_2656 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
    let x_2658 : vec3<f32> = u_xlat3;
    let x_2659 : vec3<f32> = u_xlat20;
    let x_2662 : vec4<f32> = u_xlat8;
    let x_2664 : vec3<f32> = ((x_2658 * vec3<f32>(x_2659.x, x_2659.x, x_2659.x)) + vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
    let x_2667 : vec4<f32> = u_xlat8;
    let x_2669 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2667.x, x_2667.y, x_2667.z), vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2672 : f32 = u_xlat64;
    u_xlat64 = max(x_2672, 1.17549435e-37f);
    let x_2674 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2674);
    let x_2676 : f32 = u_xlat64;
    let x_2678 : vec4<f32> = u_xlat8;
    let x_2680 : vec3<f32> = (vec3<f32>(x_2676, x_2676, x_2676) * vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
    let x_2681 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
    let x_2683 : vec3<f32> = u_xlat2;
    let x_2684 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2683, vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
    let x_2687 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2687, 0.0f, 1.0f);
    let x_2689 : f32 = u_xlat64;
    u_xlat64 = log2(x_2689);
    let x_2691 : f32 = u_xlat60;
    let x_2692 : f32 = u_xlat64;
    u_xlat64 = (x_2691 * x_2692);
    let x_2694 : f32 = u_xlat64;
    u_xlat64 = exp2(x_2694);
    let x_2696 : f32 = u_xlat64;
    let x_2699 : vec4<f32> = x_56.x_SpecColor;
    let x_2701 : vec3<f32> = (vec3<f32>(x_2696, x_2696, x_2696) * vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2702 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
    let x_2704 : vec4<f32> = u_xlat8;
    let x_2706 : vec4<f32> = u_xlat9;
    let x_2708 : vec3<f32> = (vec3<f32>(x_2704.x, x_2704.y, x_2704.z) * vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2709 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
    let x_2711 : vec4<f32> = u_xlat10;
    let x_2713 : vec4<f32> = u_xlat1;
    let x_2716 : vec4<f32> = u_xlat8;
    let x_2718 : vec3<f32> = ((vec3<f32>(x_2711.x, x_2711.y, x_2711.z) * vec3<f32>(x_2713.y, x_2713.z, x_2713.w)) + vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
    let x_2719 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
    let x_2721 : vec4<f32> = u_xlat7;
    let x_2723 : vec4<f32> = u_xlat8;
    let x_2725 : vec3<f32> = (vec3<f32>(x_2721.x, x_2721.y, x_2721.z) + vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);

    continuing {
      let x_2728 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2728 + bitcast<u32>(1i));
    }
  }
  let x_2730 : vec4<f32> = u_xlat5;
  let x_2732 : vec4<f32> = u_xlat1;
  let x_2735 : vec4<f32> = u_xlat4;
  let x_2737 : vec3<f32> = ((vec3<f32>(x_2730.x, x_2730.y, x_2730.z) * vec3<f32>(x_2732.y, x_2732.z, x_2732.w)) + vec3<f32>(x_2735.x, x_2735.y, x_2735.z));
  let x_2738 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
  let x_2742 : vec4<f32> = u_xlat7;
  let x_2744 : vec4<f32> = u_xlat1;
  let x_2746 : vec3<f32> = (vec3<f32>(x_2742.x, x_2742.y, x_2742.z) + vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
  let x_2747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
  let x_2750 : f32 = x_56.x_Surface;
  u_xlatb20 = (x_2750 == 1.0f);
  let x_2752 : bool = u_xlatb20;
  let x_2753 : bool = u_xlatb40;
  u_xlatb20 = (x_2752 | x_2753);
  let x_2755 : bool = u_xlatb20;
  if (x_2755) {
    let x_2760 : f32 = u_xlat0.x;
    x_2756 = x_2760;
  } else {
    x_2756 = 1.0f;
  }
  let x_2762 : f32 = x_2756;
  SV_Target0.w = x_2762;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

