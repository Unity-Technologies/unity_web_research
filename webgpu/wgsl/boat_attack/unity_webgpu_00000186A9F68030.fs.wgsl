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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1788 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2036 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2144 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb57 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat59 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
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
  var x_1741 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1871 : f32;
  var x_1882 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu61 : u32;
  var u_xlati43 : i32;
  var u_xlati61 : i32;
  var u_xlati62 : i32;
  var u_xlatb61 : bool;
  var u_xlatb43 : vec2<bool>;
  var x_2436 : f32;
  var x_2449 : f32;
  var x_2501 : f32;
  var x_2512 : vec3<f32>;
  var x_2602 : f32;
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
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat19;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat19.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb57 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb57;
  if (x_189) {
    let x_194 : f32 = u_xlat19.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat19.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat19.x = x_201;
  let x_204 : f32 = u_xlat19.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat19.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat19.x;
  u_xlatb19 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb19;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat19;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres0;
  let x_247 : vec3<f32> = (x_237 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres1;
  let x_256 : vec3<f32> = (x_251 + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_263 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres2;
  let x_266 : vec3<f32> = (x_260 + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_272 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres3;
  let x_275 : vec3<f32> = (x_270 + -(vec3<f32>(x_272.x, x_272.y, x_272.z)));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat6;
  let x_299 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_306 : vec4<f32> = u_xlat3;
  let x_309 : vec4<f32> = x_242.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_306 < x_309);
  let x_312 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_312);
  let x_316 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_316);
  let x_320 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_320);
  let x_324 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_324);
  let x_328 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_328);
  let x_334 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_334);
  let x_338 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_338);
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec4<f32> = u_xlat4;
  let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + vec3<f32>(x_343.y, x_343.z, x_343.w));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = max(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_351.z);
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_354, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_362 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_362) + 4.0f);
  let x_369 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_369);
  let x_373 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : i32 = u_xlati19;
  let x_381 : i32 = u_xlati19;
  let x_385 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati19;
  let x_392 : i32 = u_xlati19;
  let x_395 : vec4<f32> = x_242.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_400 : vec4<f32> = u_xlat3;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati19;
  let x_408 : i32 = u_xlati19;
  let x_412 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_TEXCOORD1;
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : i32 = u_xlati19;
  let x_427 : i32 = u_xlati19;
  let x_431 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_442 : vec2<f32> = vs_TEXCOORD7;
  let x_444 : f32 = x_43.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_442, x_444);
  let x_446 : vec3<f32> = vec3<f32>(x_445.x, x_445.y, x_445.z);
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
  let x_456 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_456.x, x_457.y, x_456.y);
  let x_459 : vec3<f32> = u_xlat19;
  let x_461 : vec4<f32> = hlslcc_FragCoord;
  let x_463 : vec2<f32> = (vec2<f32>(x_459.x, x_459.z) * vec2<f32>(x_461.x, x_461.y));
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_467 : f32 = u_xlat5.y;
  let x_470 : f32 = x_43.x_ScaleBiasRt.x;
  let x_473 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat19.x = ((x_467 * x_470) + x_473);
  let x_477 : f32 = u_xlat19.x;
  u_xlat5.z = (-(x_477) + 1.0f);
  let x_486 : vec4<f32> = u_xlat5;
  let x_489 : f32 = x_43.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_486.x, x_486.z), x_489);
  u_xlat19.x = x_490.x;
  let x_494 : f32 = u_xlat19.x;
  u_xlat57 = (x_494 + -1.0f);
  let x_497 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_498 : f32 = u_xlat57;
  u_xlat57 = ((x_497 * x_498) + 1.0f);
  let x_502 : f32 = u_xlat19.x;
  u_xlat19.x = min(x_502, 1.0f);
  let x_507 : f32 = x_242.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_507);
  let x_509 : bool = u_xlatb1;
  if (x_509) {
    let x_513 : f32 = x_242.x_MainLightShadowParams.y;
    u_xlatb1 = (x_513 == 1.0f);
    let x_515 : bool = u_xlatb1;
    if (x_515) {
      let x_518 : vec4<f32> = u_xlat3;
      let x_522 : vec4<f32> = x_242.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y) + x_522);
      let x_525 : vec4<f32> = u_xlat5;
      let x_526 : vec2<f32> = vec2<f32>(x_525.x, x_525.y);
      let x_528 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_540 : vec3<f32> = txVec0;
      let x_542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_540.xy, x_540.z);
      u_xlat6.x = x_542;
      let x_545 : vec4<f32> = u_xlat5;
      let x_546 : vec2<f32> = vec2<f32>(x_545.z, x_545.w);
      let x_548 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec1;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_555.xy, x_555.z);
      u_xlat6.y = x_557;
      let x_559 : vec4<f32> = u_xlat3;
      let x_563 : vec4<f32> = x_242.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) + x_563);
      let x_566 : vec4<f32> = u_xlat5;
      let x_567 : vec2<f32> = vec2<f32>(x_566.x, x_566.y);
      let x_569 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_567.x, x_567.y, x_569);
      let x_576 : vec3<f32> = txVec2;
      let x_578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_576.xy, x_576.z);
      u_xlat6.z = x_578;
      let x_581 : vec4<f32> = u_xlat5;
      let x_582 : vec2<f32> = vec2<f32>(x_581.z, x_581.w);
      let x_584 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_582.x, x_582.y, x_584);
      let x_591 : vec3<f32> = txVec3;
      let x_593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_591.xy, x_591.z);
      u_xlat6.w = x_593;
      let x_595 : vec4<f32> = u_xlat6;
      u_xlat1.x = dot(x_595, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_603 : f32 = x_242.x_MainLightShadowParams.y;
      u_xlatb59 = (x_603 == 2.0f);
      let x_605 : bool = u_xlatb59;
      if (x_605) {
        let x_608 : vec4<f32> = u_xlat3;
        let x_611 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_615 : vec2<f32> = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_611.z, x_611.w)) + vec2<f32>(0.5f, 0.5f));
        let x_616 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat5;
        let x_620 : vec2<f32> = floor(vec2<f32>(x_618.x, x_618.y));
        let x_621 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_625 : vec4<f32> = u_xlat3;
        let x_628 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_628.z, x_628.w)) + -(vec2<f32>(x_631.x, x_631.y)));
        let x_635 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_635.x, x_635.x, x_635.y, x_635.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_640 : vec4<f32> = u_xlat6;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_640.x, x_640.x, x_640.z, x_640.z) * vec4<f32>(x_642.x, x_642.x, x_642.z, x_642.z));
        let x_645 : vec4<f32> = u_xlat7;
        let x_649 : vec2<f32> = (vec2<f32>(x_645.y, x_645.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_650 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_649.x, x_650.y, x_649.y, x_650.w);
        let x_652 : vec4<f32> = u_xlat7;
        let x_655 : vec2<f32> = u_xlat43;
        let x_657 : vec2<f32> = ((vec2<f32>(x_652.x, x_652.z) * vec2<f32>(0.5f, 0.5f)) + -(x_655));
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_661 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_661) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec2<f32> = u_xlat43;
        let x_667 : vec2<f32> = min(x_665, vec2<f32>(0.0f, 0.0f));
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat8;
        let x_673 : vec4<f32> = u_xlat8;
        let x_676 : vec2<f32> = u_xlat45;
        let x_677 : vec2<f32> = ((-(vec2<f32>(x_670.x, x_670.y)) * vec2<f32>(x_673.x, x_673.y)) + x_676);
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_680, vec2<f32>(0.0f, 0.0f));
        let x_682 : vec2<f32> = u_xlat43;
        let x_684 : vec2<f32> = u_xlat43;
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_682) * x_684) + vec2<f32>(x_686.y, x_686.w));
        let x_689 : vec4<f32> = u_xlat8;
        let x_691 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) + vec2<f32>(1.0f, 1.0f));
        let x_692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_694 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_694 + vec2<f32>(1.0f, 1.0f));
        let x_697 : vec4<f32> = u_xlat7;
        let x_701 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_702 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_704 : vec2<f32> = u_xlat45;
        let x_705 : vec2<f32> = (x_704 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat8;
        let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_711 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
        let x_714 : vec2<f32> = u_xlat43;
        let x_715 : vec2<f32> = (x_714 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_716 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_718.y, x_718.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_722 : f32 = u_xlat8.x;
        u_xlat9.z = x_722;
        let x_725 : f32 = u_xlat43.x;
        u_xlat9.w = x_725;
        let x_728 : f32 = u_xlat10.x;
        u_xlat7.z = x_728;
        let x_731 : f32 = u_xlat6.x;
        u_xlat7.w = x_731;
        let x_734 : vec4<f32> = u_xlat7;
        let x_736 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_734.z, x_734.w, x_734.x, x_734.z) + vec4<f32>(x_736.z, x_736.w, x_736.x, x_736.z));
        let x_740 : f32 = u_xlat9.y;
        u_xlat8.z = x_740;
        let x_743 : f32 = u_xlat43.y;
        u_xlat8.w = x_743;
        let x_746 : f32 = u_xlat7.y;
        u_xlat10.z = x_746;
        let x_749 : f32 = u_xlat6.z;
        u_xlat10.w = x_749;
        let x_751 : vec4<f32> = u_xlat8;
        let x_753 : vec4<f32> = u_xlat10;
        let x_755 : vec3<f32> = (vec3<f32>(x_751.z, x_751.y, x_751.w) + vec3<f32>(x_753.z, x_753.y, x_753.w));
        let x_756 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_758 : vec4<f32> = u_xlat7;
        let x_760 : vec4<f32> = u_xlat11;
        let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.z, x_758.w) / vec3<f32>(x_760.z, x_760.w, x_760.y));
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat7;
        let x_771 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat10;
        let x_776 : vec4<f32> = u_xlat6;
        let x_778 : vec3<f32> = (vec3<f32>(x_774.z, x_774.y, x_774.w) / vec3<f32>(x_776.x, x_776.y, x_776.z));
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat8;
        let x_783 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_784 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat7;
        let x_789 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_791 : vec3<f32> = (vec3<f32>(x_786.y, x_786.x, x_786.z) * vec3<f32>(x_789.x, x_789.x, x_789.x));
        let x_792 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat8;
        let x_797 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_799 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_797.y, x_797.y, x_797.y));
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_803 : f32 = u_xlat8.x;
        u_xlat7.w = x_803;
        let x_805 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) * vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y)) + vec4<f32>(x_811.y, x_811.w, x_811.x, x_811.w));
        let x_814 : vec4<f32> = u_xlat5;
        let x_817 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_820.z, x_820.w));
        let x_824 : f32 = u_xlat7.y;
        u_xlat8.w = x_824;
        let x_826 : vec4<f32> = u_xlat8;
        let x_827 : vec2<f32> = vec2<f32>(x_826.y, x_826.z);
        let x_828 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_828.x, x_827.x, x_828.z, x_827.y);
        let x_830 : vec4<f32> = u_xlat5;
        let x_833 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) * vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y)) + vec4<f32>(x_836.x, x_836.y, x_836.z, x_836.y));
        let x_839 : vec4<f32> = u_xlat5;
        let x_842 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.w, x_845.y, x_845.w, x_845.z));
        let x_848 : vec4<f32> = u_xlat5;
        let x_851 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y) * vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y)) + vec4<f32>(x_854.x, x_854.w, x_854.z, x_854.w));
        let x_858 : vec4<f32> = u_xlat6;
        let x_860 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_858.x, x_858.x, x_858.x, x_858.y) * vec4<f32>(x_860.z, x_860.w, x_860.y, x_860.z));
        let x_864 : vec4<f32> = u_xlat6;
        let x_866 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_864.y, x_864.y, x_864.z, x_864.z) * x_866);
        let x_870 : f32 = u_xlat6.z;
        let x_872 : f32 = u_xlat11.y;
        u_xlat59 = (x_870 * x_872);
        let x_875 : vec4<f32> = u_xlat9;
        let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
        let x_878 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_886 : vec3<f32> = txVec4;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
        u_xlat60 = x_888;
        let x_890 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_901 : vec3<f32> = txVec5;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat61 = x_903;
        let x_904 : f32 = u_xlat61;
        let x_906 : f32 = u_xlat12.y;
        u_xlat61 = (x_904 * x_906);
        let x_909 : f32 = u_xlat12.x;
        let x_910 : f32 = u_xlat60;
        let x_912 : f32 = u_xlat61;
        u_xlat60 = ((x_909 * x_910) + x_912);
        let x_915 : vec2<f32> = u_xlat43;
        let x_917 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_915.x, x_915.y, x_917);
        let x_924 : vec3<f32> = txVec6;
        let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_924.xy, x_924.z);
        u_xlat61 = x_926;
        let x_928 : f32 = u_xlat12.z;
        let x_929 : f32 = u_xlat61;
        let x_931 : f32 = u_xlat60;
        u_xlat60 = ((x_928 * x_929) + x_931);
        let x_934 : vec4<f32> = u_xlat8;
        let x_935 : vec2<f32> = vec2<f32>(x_934.x, x_934.y);
        let x_937 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec7;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_944.xy, x_944.z);
        u_xlat61 = x_946;
        let x_948 : f32 = u_xlat12.w;
        let x_949 : f32 = u_xlat61;
        let x_951 : f32 = u_xlat60;
        u_xlat60 = ((x_948 * x_949) + x_951);
        let x_954 : vec4<f32> = u_xlat10;
        let x_955 : vec2<f32> = vec2<f32>(x_954.x, x_954.y);
        let x_957 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_955.x, x_955.y, x_957);
        let x_964 : vec3<f32> = txVec8;
        let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
        u_xlat61 = x_966;
        let x_968 : f32 = u_xlat13.x;
        let x_969 : f32 = u_xlat61;
        let x_971 : f32 = u_xlat60;
        u_xlat60 = ((x_968 * x_969) + x_971);
        let x_974 : vec4<f32> = u_xlat10;
        let x_975 : vec2<f32> = vec2<f32>(x_974.z, x_974.w);
        let x_977 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec9;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat61 = x_986;
        let x_988 : f32 = u_xlat13.y;
        let x_989 : f32 = u_xlat61;
        let x_991 : f32 = u_xlat60;
        u_xlat60 = ((x_988 * x_989) + x_991);
        let x_994 : vec4<f32> = u_xlat8;
        let x_995 : vec2<f32> = vec2<f32>(x_994.z, x_994.w);
        let x_997 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec10;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1004.xy, x_1004.z);
        u_xlat61 = x_1006;
        let x_1008 : f32 = u_xlat13.z;
        let x_1009 : f32 = u_xlat61;
        let x_1011 : f32 = u_xlat60;
        u_xlat60 = ((x_1008 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec11;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1024.xy, x_1024.z);
        u_xlat61 = x_1026;
        let x_1028 : f32 = u_xlat13.w;
        let x_1029 : f32 = u_xlat61;
        let x_1031 : f32 = u_xlat60;
        u_xlat60 = ((x_1028 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec12;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
        u_xlat61 = x_1046;
        let x_1047 : f32 = u_xlat59;
        let x_1048 : f32 = u_xlat61;
        let x_1050 : f32 = u_xlat60;
        u_xlat1.x = ((x_1047 * x_1048) + x_1050);
      } else {
        let x_1054 : vec4<f32> = u_xlat3;
        let x_1057 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1060 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.z, x_1057.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1061 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat5;
        let x_1065 : vec2<f32> = floor(vec2<f32>(x_1063.x, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat3;
        let x_1071 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.z, x_1071.w)) + -(vec2<f32>(x_1074.x, x_1074.y)));
        let x_1078 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.y, x_1078.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1083 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1081.x, x_1081.x, x_1081.z, x_1081.z) * vec4<f32>(x_1083.x, x_1083.x, x_1083.z, x_1083.z));
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1086.y, x_1086.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1091.x, x_1090.x, x_1091.z, x_1090.y);
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1096 : vec2<f32> = u_xlat43;
        let x_1098 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1096));
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1098.x, x_1099.y, x_1098.y, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat43;
        let x_1103 : vec2<f32> = (-(x_1101) + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1106, vec2<f32>(0.0f, 0.0f));
        let x_1108 : vec2<f32> = u_xlat45;
        let x_1110 : vec2<f32> = u_xlat45;
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = ((-(x_1108) * x_1110) + vec2<f32>(x_1112.x, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1117, vec2<f32>(0.0f, 0.0f));
        let x_1120 : vec2<f32> = u_xlat45;
        let x_1122 : vec2<f32> = u_xlat45;
        let x_1124 : vec4<f32> = u_xlat6;
        let x_1126 : vec2<f32> = ((-(x_1120) * x_1122) + vec2<f32>(x_1124.y, x_1124.w));
        let x_1127 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1126.x, x_1127.y, x_1126.y);
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) + vec2<f32>(2.0f, 2.0f));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec3<f32> = u_xlat25;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.z) + vec2<f32>(2.0f, 2.0f));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1138.x, x_1137.x, x_1138.z, x_1137.y);
        let x_1141 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1141 * 0.081632003f);
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1148 : vec3<f32> = (vec3<f32>(x_1145.z, x_1145.x, x_1145.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : f32 = u_xlat10.y;
        u_xlat9.x = x_1158;
        let x_1160 : vec2<f32> = u_xlat43;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat43;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1170.x, x_1170.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1175.y, x_1174.y, x_1175.w);
        let x_1178 : f32 = u_xlat6.x;
        u_xlat7.y = x_1178;
        let x_1181 : f32 = u_xlat8.y;
        u_xlat7.w = x_1181;
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1183 + x_1184);
        let x_1186 : vec2<f32> = u_xlat43;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1186.y, x_1186.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1192 : vec2<f32> = u_xlat43;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1192.y, x_1192.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1196.w);
        let x_1199 : f32 = u_xlat6.y;
        u_xlat8.y = x_1199;
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1201 + x_1202);
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1204 / x_1205);
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1207 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1214 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1213 / x_1214);
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1216 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1218.w, x_1218.x, x_1218.y, x_1218.z) * vec4<f32>(x_1221.x, x_1221.x, x_1221.x, x_1221.x));
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1224.x, x_1224.w, x_1224.y, x_1224.z) * vec4<f32>(x_1227.y, x_1227.y, x_1227.y, x_1227.y));
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1231 : vec3<f32> = vec3<f32>(x_1230.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1231.x, x_1232.y, x_1231.y, x_1231.z);
        let x_1235 : f32 = u_xlat8.x;
        u_xlat10.y = x_1235;
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) * vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y)) + vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1243.y));
        let x_1246 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1252.w, x_1252.y));
        let x_1256 : f32 = u_xlat10.y;
        u_xlat7.y = x_1256;
        let x_1259 : f32 = u_xlat8.z;
        u_xlat10.y = x_1259;
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.y));
        let x_1270 : vec4<f32> = u_xlat5;
        let x_1273 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat10;
        let x_1278 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.w, x_1276.y));
        let x_1279 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1282 : f32 = u_xlat10.y;
        u_xlat7.z = x_1282;
        let x_1285 : vec4<f32> = u_xlat5;
        let x_1288 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.z));
        let x_1295 : f32 = u_xlat8.w;
        u_xlat10.y = x_1295;
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1308 : vec4<f32> = u_xlat5;
        let x_1311 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(x_1311.x, x_1311.y)) + vec2<f32>(x_1314.w, x_1314.y));
        let x_1318 : f32 = u_xlat10.y;
        u_xlat7.w = x_1318;
        let x_1321 : vec4<f32> = u_xlat5;
        let x_1324 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.x, x_1327.w));
        let x_1330 : vec4<f32> = u_xlat10;
        let x_1331 : vec3<f32> = vec3<f32>(x_1330.x, x_1330.z, x_1330.w);
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1331.x, x_1332.y, x_1331.y, x_1331.z);
        let x_1334 : vec4<f32> = u_xlat5;
        let x_1337 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1344 : vec4<f32> = u_xlat5;
        let x_1347 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.x, x_1347.y)) + vec2<f32>(x_1350.w, x_1350.y));
        let x_1354 : f32 = u_xlat7.x;
        u_xlat8.x = x_1354;
        let x_1356 : vec4<f32> = u_xlat5;
        let x_1359 : vec4<f32> = x_242.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.y));
        let x_1365 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1368 : vec4<f32> = u_xlat6;
        let x_1370 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.x, x_1368.x) * x_1370);
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1375 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1373.y, x_1373.y, x_1373.y, x_1373.y) * x_1375);
        let x_1378 : vec4<f32> = u_xlat6;
        let x_1380 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1378.z, x_1378.z, x_1378.z, x_1378.z) * x_1380);
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1382.w, x_1382.w, x_1382.w, x_1382.w) * x_1384);
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec13;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat59 = x_1399;
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec14;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat60 = x_1413;
        let x_1414 : f32 = u_xlat60;
        let x_1416 : f32 = u_xlat16.y;
        u_xlat60 = (x_1414 * x_1416);
        let x_1419 : f32 = u_xlat16.x;
        let x_1420 : f32 = u_xlat59;
        let x_1422 : f32 = u_xlat60;
        u_xlat59 = ((x_1419 * x_1420) + x_1422);
        let x_1425 : vec2<f32> = u_xlat43;
        let x_1427 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec15;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat60 = x_1436;
        let x_1438 : f32 = u_xlat16.z;
        let x_1439 : f32 = u_xlat60;
        let x_1441 : f32 = u_xlat59;
        u_xlat59 = ((x_1438 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat14;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec16;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat60 = x_1456;
        let x_1458 : f32 = u_xlat16.w;
        let x_1459 : f32 = u_xlat60;
        let x_1461 : f32 = u_xlat59;
        u_xlat59 = ((x_1458 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat12;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec17;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat60 = x_1476;
        let x_1478 : f32 = u_xlat17.x;
        let x_1479 : f32 = u_xlat60;
        let x_1481 : f32 = u_xlat59;
        u_xlat59 = ((x_1478 * x_1479) + x_1481);
        let x_1484 : vec4<f32> = u_xlat12;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec18;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat60 = x_1496;
        let x_1498 : f32 = u_xlat17.y;
        let x_1499 : f32 = u_xlat60;
        let x_1501 : f32 = u_xlat59;
        u_xlat59 = ((x_1498 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat13;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec19;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat60 = x_1516;
        let x_1518 : f32 = u_xlat17.z;
        let x_1519 : f32 = u_xlat60;
        let x_1521 : f32 = u_xlat59;
        u_xlat59 = ((x_1518 * x_1519) + x_1521);
        let x_1524 : vec4<f32> = u_xlat14;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec20;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat60 = x_1536;
        let x_1538 : f32 = u_xlat17.w;
        let x_1539 : f32 = u_xlat60;
        let x_1541 : f32 = u_xlat59;
        u_xlat59 = ((x_1538 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat15;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec21;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat60 = x_1556;
        let x_1558 : f32 = u_xlat18.x;
        let x_1559 : f32 = u_xlat60;
        let x_1561 : f32 = u_xlat59;
        u_xlat59 = ((x_1558 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat15;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.z, x_1564.w);
        let x_1567 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec22;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat60 = x_1576;
        let x_1578 : f32 = u_xlat18.y;
        let x_1579 : f32 = u_xlat60;
        let x_1581 : f32 = u_xlat59;
        u_xlat59 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec2<f32> = u_xlat26;
        let x_1586 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec23;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat60 = x_1595;
        let x_1597 : f32 = u_xlat18.z;
        let x_1598 : f32 = u_xlat60;
        let x_1600 : f32 = u_xlat59;
        u_xlat59 = ((x_1597 * x_1598) + x_1600);
        let x_1603 : vec2<f32> = u_xlat51;
        let x_1605 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec24;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat60 = x_1614;
        let x_1616 : f32 = u_xlat18.w;
        let x_1617 : f32 = u_xlat60;
        let x_1619 : f32 = u_xlat59;
        u_xlat59 = ((x_1616 * x_1617) + x_1619);
        let x_1622 : vec4<f32> = u_xlat10;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
        let x_1625 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec25;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat60 = x_1634;
        let x_1636 : f32 = u_xlat6.x;
        let x_1637 : f32 = u_xlat60;
        let x_1639 : f32 = u_xlat59;
        u_xlat59 = ((x_1636 * x_1637) + x_1639);
        let x_1642 : vec4<f32> = u_xlat10;
        let x_1643 : vec2<f32> = vec2<f32>(x_1642.z, x_1642.w);
        let x_1645 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec26;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1652.xy, x_1652.z);
        u_xlat60 = x_1654;
        let x_1656 : f32 = u_xlat6.y;
        let x_1657 : f32 = u_xlat60;
        let x_1659 : f32 = u_xlat59;
        u_xlat59 = ((x_1656 * x_1657) + x_1659);
        let x_1662 : vec2<f32> = u_xlat46;
        let x_1664 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec27;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat60 = x_1673;
        let x_1675 : f32 = u_xlat6.z;
        let x_1676 : f32 = u_xlat60;
        let x_1678 : f32 = u_xlat59;
        u_xlat59 = ((x_1675 * x_1676) + x_1678);
        let x_1681 : vec4<f32> = u_xlat5;
        let x_1682 : vec2<f32> = vec2<f32>(x_1681.x, x_1681.y);
        let x_1684 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec28;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat60 = x_1693;
        let x_1695 : f32 = u_xlat6.w;
        let x_1696 : f32 = u_xlat60;
        let x_1698 : f32 = u_xlat59;
        u_xlat1.x = ((x_1695 * x_1696) + x_1698);
      }
    }
  } else {
    let x_1703 : vec4<f32> = u_xlat3;
    let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
    let x_1706 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
    let x_1713 : vec3<f32> = txVec29;
    let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1713.xy, x_1713.z);
    u_xlat1.x = x_1715;
  }
  let x_1718 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat59 = (-(x_1718) + 1.0f);
  let x_1722 : f32 = u_xlat1.x;
  let x_1724 : f32 = x_242.x_MainLightShadowParams.x;
  let x_1726 : f32 = u_xlat59;
  u_xlat1.x = ((x_1722 * x_1724) + x_1726);
  let x_1730 : f32 = u_xlat3.z;
  u_xlatb59 = (0.0f >= x_1730);
  let x_1733 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_1733 >= 1.0f);
  let x_1736 : bool = u_xlatb59;
  let x_1738 : bool = u_xlatb3.x;
  u_xlatb59 = (x_1736 | x_1738);
  let x_1740 : bool = u_xlatb59;
  if (x_1740) {
    x_1741 = 1.0f;
  } else {
    let x_1746 : f32 = u_xlat1.x;
    x_1741 = x_1746;
  }
  let x_1747 : f32 = x_1741;
  u_xlat1.x = x_1747;
  let x_1749 : vec3<f32> = vs_TEXCOORD1;
  let x_1752 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1754 : vec3<f32> = (x_1749 + -(x_1752));
  let x_1755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
  let x_1757 : vec4<f32> = u_xlat3;
  let x_1759 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : f32 = u_xlat59;
  let x_1764 : f32 = x_242.x_MainLightShadowParams.z;
  let x_1767 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat59 = ((x_1762 * x_1764) + x_1767);
  let x_1769 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1769, 0.0f, 1.0f);
  let x_1772 : f32 = u_xlat1.x;
  u_xlat3.x = (-(x_1772) + 1.0f);
  let x_1776 : f32 = u_xlat59;
  let x_1778 : f32 = u_xlat3.x;
  let x_1781 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1776 * x_1778) + x_1781);
  let x_1790 : f32 = x_1788.x_MainLightCookieTextureFormat;
  u_xlatb59 = !((x_1790 == -1.0f));
  let x_1792 : bool = u_xlatb59;
  if (x_1792) {
    let x_1795 : vec3<f32> = vs_TEXCOORD1;
    let x_1798 : vec4<f32> = x_1788.x_MainLightWorldToLight[1i];
    let x_1800 : vec2<f32> = (vec2<f32>(x_1795.y, x_1795.y) * vec2<f32>(x_1798.x, x_1798.y));
    let x_1801 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1800.x, x_1800.y, x_1801.z, x_1801.w);
    let x_1804 : vec4<f32> = x_1788.x_MainLightWorldToLight[0i];
    let x_1806 : vec3<f32> = vs_TEXCOORD1;
    let x_1809 : vec4<f32> = u_xlat3;
    let x_1811 : vec2<f32> = ((vec2<f32>(x_1804.x, x_1804.y) * vec2<f32>(x_1806.x, x_1806.x)) + vec2<f32>(x_1809.x, x_1809.y));
    let x_1812 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
    let x_1815 : vec4<f32> = x_1788.x_MainLightWorldToLight[2i];
    let x_1817 : vec3<f32> = vs_TEXCOORD1;
    let x_1820 : vec4<f32> = u_xlat3;
    let x_1822 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.y) * vec2<f32>(x_1817.z, x_1817.z)) + vec2<f32>(x_1820.x, x_1820.y));
    let x_1823 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1822.x, x_1822.y, x_1823.z, x_1823.w);
    let x_1825 : vec4<f32> = u_xlat3;
    let x_1828 : vec4<f32> = x_1788.x_MainLightWorldToLight[3i];
    let x_1830 : vec2<f32> = (vec2<f32>(x_1825.x, x_1825.y) + vec2<f32>(x_1828.x, x_1828.y));
    let x_1831 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1830.x, x_1830.y, x_1831.z, x_1831.w);
    let x_1833 : vec4<f32> = u_xlat3;
    let x_1836 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1837 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1836.x, x_1836.y, x_1837.z, x_1837.w);
    let x_1844 : vec4<f32> = u_xlat3;
    let x_1847 : f32 = x_43.x_GlobalMipBias.x;
    let x_1848 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1844.x, x_1844.y), x_1847);
    u_xlat3 = x_1848;
    let x_1853 : f32 = x_1788.x_MainLightCookieTextureFormat;
    let x_1855 : f32 = x_1788.x_MainLightCookieTextureFormat;
    let x_1857 : f32 = x_1788.x_MainLightCookieTextureFormat;
    let x_1859 : f32 = x_1788.x_MainLightCookieTextureFormat;
    let x_1860 : vec4<f32> = vec4<f32>(x_1853, x_1855, x_1857, x_1859);
    let x_1867 : vec4<bool> = (vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1860.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1867.x, x_1867.y);
    let x_1870 : bool = u_xlatb5.y;
    if (x_1870) {
      let x_1875 : f32 = u_xlat3.w;
      x_1871 = x_1875;
    } else {
      let x_1878 : f32 = u_xlat3.x;
      x_1871 = x_1878;
    }
    let x_1879 : f32 = x_1871;
    u_xlat59 = x_1879;
    let x_1881 : bool = u_xlatb5.x;
    if (x_1881) {
      let x_1885 : vec4<f32> = u_xlat3;
      x_1882 = vec3<f32>(x_1885.x, x_1885.y, x_1885.z);
    } else {
      let x_1888 : f32 = u_xlat59;
      x_1882 = vec3<f32>(x_1888, x_1888, x_1888);
    }
    let x_1890 : vec3<f32> = x_1882;
    let x_1891 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1897 : vec4<f32> = u_xlat3;
  let x_1900 : vec4<f32> = x_43.x_MainLightColor;
  let x_1902 : vec3<f32> = (vec3<f32>(x_1897.x, x_1897.y, x_1897.z) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1905 : f32 = u_xlat57;
  let x_1907 : vec4<f32> = u_xlat3;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905, x_1905, x_1905) * vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1912 : vec3<f32> = u_xlat19;
  let x_1914 : vec4<f32> = u_xlat4;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1912.x, x_1912.x, x_1912.x) * vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1920 : f32 = u_xlat1.x;
  let x_1922 : f32 = x_185.unity_LightData.z;
  u_xlat19.x = (x_1920 * x_1922);
  let x_1925 : vec3<f32> = u_xlat19;
  let x_1927 : vec4<f32> = u_xlat3;
  let x_1929 : vec3<f32> = (vec3<f32>(x_1925.x, x_1925.x, x_1925.x) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
  let x_1932 : vec3<f32> = u_xlat2;
  let x_1934 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat19.x = dot(x_1932, vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1939 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1939, 0.0f, 1.0f);
  let x_1942 : vec3<f32> = u_xlat19;
  let x_1944 : vec4<f32> = u_xlat3;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.x, x_1942.x) * vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1949 : vec4<f32> = u_xlat1;
  let x_1951 : vec4<f32> = u_xlat3;
  let x_1953 : vec3<f32> = (vec3<f32>(x_1949.y, x_1949.z, x_1949.w) * vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
  let x_1954 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  let x_1957 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1959 : f32 = x_185.unity_LightData.y;
  u_xlat19.x = min(x_1957, x_1959);
  let x_1963 : f32 = u_xlat19.x;
  u_xlatu19 = bitcast<u32>(i32(x_1963));
  let x_1967 : f32 = x_1788.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1969 : f32 = x_1788.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1971 : f32 = x_1788.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1973 : f32 = x_1788.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1974 : vec4<f32> = vec4<f32>(x_1967, x_1969, x_1971, x_1973);
  let x_1980 : vec4<bool> = (vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1974.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1980.x, x_1980.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1991 : u32 = u_xlatu_loop_1;
    let x_1992 : u32 = u_xlatu19;
    if ((x_1991 < x_1992)) {
    } else {
      break;
    }
    let x_1995 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1995 >> 2u);
    let x_1998 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1998 & 3u));
    let x_2001 : u32 = u_xlatu59;
    let x_2004 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_2001)];
    let x_2014 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2019 : vec4<u32> = indexable[x_2014];
    u_xlat59 = dot(x_2004, bitcast<vec4<f32>>(x_2019));
    let x_2022 : f32 = u_xlat59;
    u_xlatu59 = bitcast<u32>(i32(x_2022));
    let x_2025 : vec3<f32> = vs_TEXCOORD1;
    let x_2037 : u32 = u_xlatu59;
    let x_2040 : vec4<f32> = x_2036.x_AdditionalLightsPosition[bitcast<i32>(x_2037)];
    let x_2043 : u32 = u_xlatu59;
    let x_2046 : vec4<f32> = x_2036.x_AdditionalLightsPosition[bitcast<i32>(x_2043)];
    let x_2048 : vec3<f32> = ((-(x_2025) * vec3<f32>(x_2040.w, x_2040.w, x_2040.w)) + vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
    let x_2051 : vec4<f32> = u_xlat7;
    let x_2053 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2051.x, x_2051.y, x_2051.z), vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
    let x_2056 : f32 = u_xlat60;
    u_xlat60 = max(x_2056, 6.10351562e-05f);
    let x_2059 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_2059);
    let x_2061 : f32 = u_xlat61;
    let x_2063 : vec4<f32> = u_xlat7;
    let x_2065 : vec3<f32> = (vec3<f32>(x_2061, x_2061, x_2061) * vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
    let x_2066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
    let x_2068 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_2068);
    let x_2070 : f32 = u_xlat60;
    let x_2071 : u32 = u_xlatu59;
    let x_2074 : f32 = x_2036.x_AdditionalLightsAttenuation[bitcast<i32>(x_2071)].x;
    u_xlat60 = (x_2070 * x_2074);
    let x_2076 : f32 = u_xlat60;
    let x_2078 : f32 = u_xlat60;
    u_xlat60 = ((-(x_2076) * x_2078) + 1.0f);
    let x_2081 : f32 = u_xlat60;
    u_xlat60 = max(x_2081, 0.0f);
    let x_2083 : f32 = u_xlat60;
    let x_2084 : f32 = u_xlat60;
    u_xlat60 = (x_2083 * x_2084);
    let x_2086 : f32 = u_xlat60;
    let x_2087 : f32 = u_xlat61;
    u_xlat60 = (x_2086 * x_2087);
    let x_2089 : u32 = u_xlatu59;
    let x_2092 : vec4<f32> = x_2036.x_AdditionalLightsSpotDir[bitcast<i32>(x_2089)];
    let x_2094 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2092.x, x_2092.y, x_2092.z), vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
    let x_2097 : f32 = u_xlat61;
    let x_2098 : u32 = u_xlatu59;
    let x_2101 : f32 = x_2036.x_AdditionalLightsAttenuation[bitcast<i32>(x_2098)].z;
    let x_2103 : u32 = u_xlatu59;
    let x_2106 : f32 = x_2036.x_AdditionalLightsAttenuation[bitcast<i32>(x_2103)].w;
    u_xlat61 = ((x_2097 * x_2101) + x_2106);
    let x_2108 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2108, 0.0f, 1.0f);
    let x_2110 : f32 = u_xlat61;
    let x_2111 : f32 = u_xlat61;
    u_xlat61 = (x_2110 * x_2111);
    let x_2113 : f32 = u_xlat60;
    let x_2114 : f32 = u_xlat61;
    u_xlat60 = (x_2113 * x_2114);
    let x_2117 : u32 = u_xlatu59;
    u_xlatu61 = (x_2117 >> 5u);
    let x_2120 : u32 = u_xlatu59;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_2120) & 31i)));
    let x_2126 : i32 = u_xlati43;
    let x_2128 : u32 = u_xlatu61;
    let x_2131 : f32 = x_1788.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2128)].el;
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_2126) & bitcast<u32>(x_2131)));
    let x_2135 : i32 = u_xlati61;
    if ((x_2135 != 0i)) {
      let x_2145 : u32 = u_xlatu59;
      let x_2148 : f32 = x_2144.x_AdditionalLightsLightTypes[bitcast<i32>(x_2145)].el;
      u_xlati61 = i32(x_2148);
      let x_2150 : i32 = u_xlati61;
      u_xlati43 = select(1i, 0i, (x_2150 != 0i));
      let x_2154 : u32 = u_xlatu59;
      u_xlati62 = (bitcast<i32>(x_2154) << bitcast<u32>(2i));
      let x_2157 : i32 = u_xlati43;
      if ((x_2157 != 0i)) {
        let x_2161 : vec3<f32> = vs_TEXCOORD1;
        let x_2163 : i32 = u_xlati62;
        let x_2166 : i32 = u_xlati62;
        let x_2170 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2163 + 1i) / 4i)][((x_2166 + 1i) % 4i)];
        let x_2172 : vec3<f32> = (vec3<f32>(x_2161.y, x_2161.y, x_2161.y) * vec3<f32>(x_2170.x, x_2170.y, x_2170.w));
        let x_2173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2172.x, x_2172.y, x_2172.z, x_2173.w);
        let x_2175 : i32 = u_xlati62;
        let x_2177 : i32 = u_xlati62;
        let x_2180 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[(x_2175 / 4i)][(x_2177 % 4i)];
        let x_2182 : vec3<f32> = vs_TEXCOORD1;
        let x_2185 : vec4<f32> = u_xlat8;
        let x_2187 : vec3<f32> = ((vec3<f32>(x_2180.x, x_2180.y, x_2180.w) * vec3<f32>(x_2182.x, x_2182.x, x_2182.x)) + vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
        let x_2188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
        let x_2190 : i32 = u_xlati62;
        let x_2193 : i32 = u_xlati62;
        let x_2197 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2190 + 2i) / 4i)][((x_2193 + 2i) % 4i)];
        let x_2199 : vec3<f32> = vs_TEXCOORD1;
        let x_2202 : vec4<f32> = u_xlat8;
        let x_2204 : vec3<f32> = ((vec3<f32>(x_2197.x, x_2197.y, x_2197.w) * vec3<f32>(x_2199.z, x_2199.z, x_2199.z)) + vec3<f32>(x_2202.x, x_2202.y, x_2202.z));
        let x_2205 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2205.w);
        let x_2207 : vec4<f32> = u_xlat8;
        let x_2209 : i32 = u_xlati62;
        let x_2212 : i32 = u_xlati62;
        let x_2216 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2209 + 3i) / 4i)][((x_2212 + 3i) % 4i)];
        let x_2218 : vec3<f32> = (vec3<f32>(x_2207.x, x_2207.y, x_2207.z) + vec3<f32>(x_2216.x, x_2216.y, x_2216.w));
        let x_2219 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
        let x_2221 : vec4<f32> = u_xlat8;
        let x_2223 : vec4<f32> = u_xlat8;
        let x_2225 : vec2<f32> = (vec2<f32>(x_2221.x, x_2221.y) / vec2<f32>(x_2223.z, x_2223.z));
        let x_2226 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat8;
        let x_2231 : vec2<f32> = ((vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2232 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
        let x_2234 : vec4<f32> = u_xlat8;
        let x_2238 : vec2<f32> = clamp(vec2<f32>(x_2234.x, x_2234.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2239 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
        let x_2241 : u32 = u_xlatu59;
        let x_2244 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2241)];
        let x_2246 : vec4<f32> = u_xlat8;
        let x_2249 : u32 = u_xlatu59;
        let x_2252 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2249)];
        let x_2254 : vec2<f32> = ((vec2<f32>(x_2244.x, x_2244.y) * vec2<f32>(x_2246.x, x_2246.y)) + vec2<f32>(x_2252.z, x_2252.w));
        let x_2255 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
      } else {
        let x_2259 : i32 = u_xlati61;
        u_xlatb61 = (x_2259 == 1i);
        let x_2261 : bool = u_xlatb61;
        u_xlati61 = select(0i, 1i, x_2261);
        let x_2263 : i32 = u_xlati61;
        if ((x_2263 != 0i)) {
          let x_2267 : vec3<f32> = vs_TEXCOORD1;
          let x_2269 : i32 = u_xlati62;
          let x_2272 : i32 = u_xlati62;
          let x_2276 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2269 + 1i) / 4i)][((x_2272 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2267.y, x_2267.y) * vec2<f32>(x_2276.x, x_2276.y));
          let x_2279 : i32 = u_xlati62;
          let x_2281 : i32 = u_xlati62;
          let x_2284 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[(x_2279 / 4i)][(x_2281 % 4i)];
          let x_2286 : vec3<f32> = vs_TEXCOORD1;
          let x_2289 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2284.x, x_2284.y) * vec2<f32>(x_2286.x, x_2286.x)) + x_2289);
          let x_2291 : i32 = u_xlati62;
          let x_2294 : i32 = u_xlati62;
          let x_2298 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2291 + 2i) / 4i)][((x_2294 + 2i) % 4i)];
          let x_2300 : vec3<f32> = vs_TEXCOORD1;
          let x_2303 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2298.x, x_2298.y) * vec2<f32>(x_2300.z, x_2300.z)) + x_2303);
          let x_2305 : vec2<f32> = u_xlat46;
          let x_2306 : i32 = u_xlati62;
          let x_2309 : i32 = u_xlati62;
          let x_2313 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2306 + 3i) / 4i)][((x_2309 + 3i) % 4i)];
          u_xlat46 = (x_2305 + vec2<f32>(x_2313.x, x_2313.y));
          let x_2316 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2316 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2319 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2319);
          let x_2321 : u32 = u_xlatu59;
          let x_2324 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2321)];
          let x_2326 : vec2<f32> = u_xlat46;
          let x_2328 : u32 = u_xlatu59;
          let x_2331 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2328)];
          let x_2333 : vec2<f32> = ((vec2<f32>(x_2324.x, x_2324.y) * x_2326) + vec2<f32>(x_2331.z, x_2331.w));
          let x_2334 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2333.x, x_2333.y, x_2334.z, x_2334.w);
        } else {
          let x_2337 : vec3<f32> = vs_TEXCOORD1;
          let x_2339 : i32 = u_xlati62;
          let x_2342 : i32 = u_xlati62;
          let x_2346 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2339 + 1i) / 4i)][((x_2342 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2337.y, x_2337.y, x_2337.y, x_2337.y) * x_2346);
          let x_2348 : i32 = u_xlati62;
          let x_2350 : i32 = u_xlati62;
          let x_2353 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[(x_2348 / 4i)][(x_2350 % 4i)];
          let x_2354 : vec3<f32> = vs_TEXCOORD1;
          let x_2357 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2353 * vec4<f32>(x_2354.x, x_2354.x, x_2354.x, x_2354.x)) + x_2357);
          let x_2359 : i32 = u_xlati62;
          let x_2362 : i32 = u_xlati62;
          let x_2366 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2359 + 2i) / 4i)][((x_2362 + 2i) % 4i)];
          let x_2367 : vec3<f32> = vs_TEXCOORD1;
          let x_2370 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2366 * vec4<f32>(x_2367.z, x_2367.z, x_2367.z, x_2367.z)) + x_2370);
          let x_2372 : vec4<f32> = u_xlat9;
          let x_2373 : i32 = u_xlati62;
          let x_2376 : i32 = u_xlati62;
          let x_2380 : vec4<f32> = x_2144.x_AdditionalLightsWorldToLights[((x_2373 + 3i) / 4i)][((x_2376 + 3i) % 4i)];
          u_xlat9 = (x_2372 + x_2380);
          let x_2382 : vec4<f32> = u_xlat9;
          let x_2384 : vec4<f32> = u_xlat9;
          let x_2386 : vec3<f32> = (vec3<f32>(x_2382.x, x_2382.y, x_2382.z) / vec3<f32>(x_2384.w, x_2384.w, x_2384.w));
          let x_2387 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
          let x_2389 : vec4<f32> = u_xlat9;
          let x_2391 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(vec3<f32>(x_2389.x, x_2389.y, x_2389.z), vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
          let x_2394 : f32 = u_xlat61;
          u_xlat61 = inverseSqrt(x_2394);
          let x_2396 : f32 = u_xlat61;
          let x_2398 : vec4<f32> = u_xlat9;
          let x_2400 : vec3<f32> = (vec3<f32>(x_2396, x_2396, x_2396) * vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
          let x_2401 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
          let x_2403 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(abs(vec3<f32>(x_2403.x, x_2403.y, x_2403.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2408 : f32 = u_xlat61;
          u_xlat61 = max(x_2408, 0.000001f);
          let x_2411 : f32 = u_xlat61;
          u_xlat61 = (1.0f / x_2411);
          let x_2413 : f32 = u_xlat61;
          let x_2415 : vec4<f32> = u_xlat9;
          let x_2417 : vec3<f32> = (vec3<f32>(x_2413, x_2413, x_2413) * vec3<f32>(x_2415.z, x_2415.x, x_2415.y));
          let x_2418 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
          let x_2421 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2421);
          let x_2425 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2425, 0.0f, 1.0f);
          let x_2429 : vec4<f32> = u_xlat10;
          let x_2432 : vec4<bool> = (vec4<f32>(x_2429.y, x_2429.z, x_2429.y, x_2429.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2432.x, x_2432.y);
          let x_2435 : bool = u_xlatb43.x;
          if (x_2435) {
            let x_2440 : f32 = u_xlat10.x;
            x_2436 = x_2440;
          } else {
            let x_2443 : f32 = u_xlat10.x;
            x_2436 = -(x_2443);
          }
          let x_2445 : f32 = x_2436;
          u_xlat43.x = x_2445;
          let x_2448 : bool = u_xlatb43.y;
          if (x_2448) {
            let x_2453 : f32 = u_xlat10.x;
            x_2449 = x_2453;
          } else {
            let x_2456 : f32 = u_xlat10.x;
            x_2449 = -(x_2456);
          }
          let x_2458 : f32 = x_2449;
          u_xlat43.y = x_2458;
          let x_2460 : vec4<f32> = u_xlat9;
          let x_2462 : f32 = u_xlat61;
          let x_2465 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2460.x, x_2460.y) * vec2<f32>(x_2462, x_2462)) + x_2465);
          let x_2467 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2467 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2470 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2470, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2474 : u32 = u_xlatu59;
          let x_2477 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2474)];
          let x_2479 : vec2<f32> = u_xlat43;
          let x_2481 : u32 = u_xlatu59;
          let x_2484 : vec4<f32> = x_2144.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2481)];
          let x_2486 : vec2<f32> = ((vec2<f32>(x_2477.x, x_2477.y) * x_2479) + vec2<f32>(x_2484.z, x_2484.w));
          let x_2487 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2487.z, x_2487.w);
        }
      }
      let x_2494 : vec4<f32> = u_xlat8;
      let x_2497 : f32 = x_43.x_GlobalMipBias.x;
      let x_2498 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2494.x, x_2494.y), x_2497);
      u_xlat8 = x_2498;
      let x_2500 : bool = u_xlatb5.y;
      if (x_2500) {
        let x_2505 : f32 = u_xlat8.w;
        x_2501 = x_2505;
      } else {
        let x_2508 : f32 = u_xlat8.x;
        x_2501 = x_2508;
      }
      let x_2509 : f32 = x_2501;
      u_xlat61 = x_2509;
      let x_2511 : bool = u_xlatb5.x;
      if (x_2511) {
        let x_2515 : vec4<f32> = u_xlat8;
        x_2512 = vec3<f32>(x_2515.x, x_2515.y, x_2515.z);
      } else {
        let x_2518 : f32 = u_xlat61;
        x_2512 = vec3<f32>(x_2518, x_2518, x_2518);
      }
      let x_2520 : vec3<f32> = x_2512;
      let x_2521 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2527 : vec4<f32> = u_xlat8;
    let x_2529 : u32 = u_xlatu59;
    let x_2532 : vec4<f32> = x_2036.x_AdditionalLightsColor[bitcast<i32>(x_2529)];
    let x_2534 : vec3<f32> = (vec3<f32>(x_2527.x, x_2527.y, x_2527.z) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
    let x_2535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
    let x_2537 : f32 = u_xlat57;
    let x_2539 : vec4<f32> = u_xlat8;
    let x_2541 : vec3<f32> = (vec3<f32>(x_2537, x_2537, x_2537) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
    let x_2542 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
    let x_2544 : f32 = u_xlat60;
    let x_2546 : vec4<f32> = u_xlat8;
    let x_2548 : vec3<f32> = (vec3<f32>(x_2544, x_2544, x_2544) * vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
    let x_2549 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
    let x_2551 : vec3<f32> = u_xlat2;
    let x_2552 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(x_2551, vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
    let x_2555 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2555, 0.0f, 1.0f);
    let x_2557 : f32 = u_xlat59;
    let x_2559 : vec4<f32> = u_xlat8;
    let x_2561 : vec3<f32> = (vec3<f32>(x_2557, x_2557, x_2557) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : vec4<f32> = u_xlat7;
    let x_2566 : vec4<f32> = u_xlat1;
    let x_2569 : vec4<f32> = u_xlat6;
    let x_2571 : vec3<f32> = ((vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * vec3<f32>(x_2566.y, x_2566.z, x_2566.w)) + vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
    let x_2572 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);

    continuing {
      let x_2574 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2574 + bitcast<u32>(1i));
    }
  }
  let x_2576 : vec4<f32> = u_xlat4;
  let x_2578 : vec4<f32> = u_xlat1;
  let x_2581 : vec4<f32> = u_xlat3;
  let x_2583 : vec3<f32> = ((vec3<f32>(x_2576.x, x_2576.y, x_2576.z) * vec3<f32>(x_2578.y, x_2578.z, x_2578.w)) + vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2588 : vec4<f32> = u_xlat6;
  let x_2590 : vec4<f32> = u_xlat1;
  let x_2592 : vec3<f32> = (vec3<f32>(x_2588.x, x_2588.y, x_2588.z) + vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2596 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2596 == 1.0f);
  let x_2598 : bool = u_xlatb19;
  let x_2599 : bool = u_xlatb38;
  u_xlatb19 = (x_2598 | x_2599);
  let x_2601 : bool = u_xlatb19;
  if (x_2601) {
    let x_2606 : f32 = u_xlat0.x;
    x_2602 = x_2606;
  } else {
    x_2602 = 1.0f;
  }
  let x_2608 : f32 = x_2602;
  SV_Target0.w = x_2608;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

