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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_181 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1729 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1865 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1981 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2089 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1682 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1812 : f32;
  var x_1823 : vec3<f32>;
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
  var x_2381 : f32;
  var x_2394 : f32;
  var x_2446 : f32;
  var x_2457 : vec3<f32>;
  var x_2547 : f32;
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
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat19;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_181.x_CascadeShadowSplitSpheres0;
  let x_186 : vec3<f32> = (x_175 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec3<f32> = vs_TEXCOORD1;
  let x_192 : vec4<f32> = x_181.x_CascadeShadowSplitSpheres1;
  let x_195 : vec3<f32> = (x_190 + -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec3<f32> = vs_TEXCOORD1;
  let x_202 : vec4<f32> = x_181.x_CascadeShadowSplitSpheres2;
  let x_205 : vec3<f32> = (x_199 + -(vec3<f32>(x_202.x, x_202.y, x_202.z)));
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec3<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_181.x_CascadeShadowSplitSpheres3;
  let x_214 : vec3<f32> = (x_209 + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat3;
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : vec4<f32> = u_xlat6;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_246 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = x_181.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_246 < x_249);
  let x_252 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_256);
  let x_260 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_268);
  let x_274 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_274);
  let x_278 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_278);
  let x_281 : vec4<f32> = u_xlat3;
  let x_283 : vec4<f32> = u_xlat4;
  let x_285 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) + vec3<f32>(x_283.y, x_283.z, x_283.w));
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat3;
  let x_291 : vec3<f32> = max(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_294, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_302 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_302) + 4.0f);
  let x_309 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_309);
  let x_313 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_313) << bitcast<u32>(2i));
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : i32 = u_xlati19;
  let x_321 : i32 = u_xlati19;
  let x_325 : vec4<f32> = x_181.x_MainLightWorldToShadow[((x_318 + 1i) / 4i)][((x_321 + 1i) % 4i)];
  let x_327 : vec3<f32> = (vec3<f32>(x_316.y, x_316.y, x_316.y) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : i32 = u_xlati19;
  let x_332 : i32 = u_xlati19;
  let x_335 : vec4<f32> = x_181.x_MainLightWorldToShadow[(x_330 / 4i)][(x_332 % 4i)];
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.x, x_337.x, x_337.x)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : i32 = u_xlati19;
  let x_348 : i32 = u_xlati19;
  let x_352 : vec4<f32> = x_181.x_MainLightWorldToShadow[((x_345 + 2i) / 4i)][((x_348 + 2i) % 4i)];
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec4<f32> = u_xlat3;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.z, x_354.z, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat3;
  let x_364 : i32 = u_xlati19;
  let x_367 : i32 = u_xlati19;
  let x_371 : vec4<f32> = x_181.x_MainLightWorldToShadow[((x_364 + 3i) / 4i)][((x_367 + 3i) % 4i)];
  let x_373 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_382 : vec2<f32> = vs_TEXCOORD7;
  let x_384 : f32 = x_43.x_GlobalMipBias.x;
  let x_385 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_382, x_384);
  let x_386 : vec3<f32> = vec3<f32>(x_385.x, x_385.y, x_385.z);
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_396 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_392.x, x_392.y));
  let x_397 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_396.x, x_397.y, x_396.y);
  let x_399 : vec3<f32> = u_xlat19;
  let x_401 : vec4<f32> = hlslcc_FragCoord;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.z) * vec2<f32>(x_401.x, x_401.y));
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_407 : f32 = u_xlat5.y;
  let x_410 : f32 = x_43.x_ScaleBiasRt.x;
  let x_413 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat19.x = ((x_407 * x_410) + x_413);
  let x_417 : f32 = u_xlat19.x;
  u_xlat5.z = (-(x_417) + 1.0f);
  let x_426 : vec4<f32> = u_xlat5;
  let x_429 : f32 = x_43.x_GlobalMipBias.x;
  let x_430 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_426.x, x_426.z), x_429);
  u_xlat19.x = x_430.x;
  let x_434 : f32 = u_xlat19.x;
  u_xlat57 = (x_434 + -1.0f);
  let x_437 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_438 : f32 = u_xlat57;
  u_xlat57 = ((x_437 * x_438) + 1.0f);
  let x_442 : f32 = u_xlat19.x;
  u_xlat19.x = min(x_442, 1.0f);
  let x_447 : f32 = x_181.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_447);
  let x_449 : bool = u_xlatb1;
  if (x_449) {
    let x_453 : f32 = x_181.x_MainLightShadowParams.y;
    u_xlatb1 = (x_453 == 1.0f);
    let x_455 : bool = u_xlatb1;
    if (x_455) {
      let x_458 : vec4<f32> = u_xlat3;
      let x_462 : vec4<f32> = x_181.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) + x_462);
      let x_465 : vec4<f32> = u_xlat5;
      let x_466 : vec2<f32> = vec2<f32>(x_465.x, x_465.y);
      let x_468 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_466.x, x_466.y, x_468);
      let x_480 : vec3<f32> = txVec0;
      let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_480.xy, x_480.z);
      u_xlat6.x = x_482;
      let x_485 : vec4<f32> = u_xlat5;
      let x_486 : vec2<f32> = vec2<f32>(x_485.z, x_485.w);
      let x_488 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_486.x, x_486.y, x_488);
      let x_495 : vec3<f32> = txVec1;
      let x_497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_495.xy, x_495.z);
      u_xlat6.y = x_497;
      let x_499 : vec4<f32> = u_xlat3;
      let x_503 : vec4<f32> = x_181.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_499.x, x_499.y, x_499.x, x_499.y) + x_503);
      let x_506 : vec4<f32> = u_xlat5;
      let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
      let x_509 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_507.x, x_507.y, x_509);
      let x_516 : vec3<f32> = txVec2;
      let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_516.xy, x_516.z);
      u_xlat6.z = x_518;
      let x_521 : vec4<f32> = u_xlat5;
      let x_522 : vec2<f32> = vec2<f32>(x_521.z, x_521.w);
      let x_524 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec3;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
      u_xlat6.w = x_533;
      let x_535 : vec4<f32> = u_xlat6;
      u_xlat1.x = dot(x_535, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_543 : f32 = x_181.x_MainLightShadowParams.y;
      u_xlatb59 = (x_543 == 2.0f);
      let x_545 : bool = u_xlatb59;
      if (x_545) {
        let x_548 : vec4<f32> = u_xlat3;
        let x_552 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_556 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_552.z, x_552.w)) + vec2<f32>(0.5f, 0.5f));
        let x_557 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat5;
        let x_561 : vec2<f32> = floor(vec2<f32>(x_559.x, x_559.y));
        let x_562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_566 : vec4<f32> = u_xlat3;
        let x_569 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_572 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.z, x_569.w)) + -(vec2<f32>(x_572.x, x_572.y)));
        let x_576 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_576.x, x_576.x, x_576.y, x_576.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_581 : vec4<f32> = u_xlat6;
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_581.x, x_581.x, x_581.z, x_581.z) * vec4<f32>(x_583.x, x_583.x, x_583.z, x_583.z));
        let x_586 : vec4<f32> = u_xlat7;
        let x_590 : vec2<f32> = (vec2<f32>(x_586.y, x_586.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_591 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_590.x, x_591.y, x_590.y, x_591.w);
        let x_593 : vec4<f32> = u_xlat7;
        let x_596 : vec2<f32> = u_xlat43;
        let x_598 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.z) * vec2<f32>(0.5f, 0.5f)) + -(x_596));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_602) + vec2<f32>(1.0f, 1.0f));
        let x_606 : vec2<f32> = u_xlat43;
        let x_608 : vec2<f32> = min(x_606, vec2<f32>(0.0f, 0.0f));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat8;
        let x_614 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = u_xlat45;
        let x_618 : vec2<f32> = ((-(vec2<f32>(x_611.x, x_611.y)) * vec2<f32>(x_614.x, x_614.y)) + x_617);
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_621, vec2<f32>(0.0f, 0.0f));
        let x_623 : vec2<f32> = u_xlat43;
        let x_625 : vec2<f32> = u_xlat43;
        let x_627 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_623) * x_625) + vec2<f32>(x_627.y, x_627.w));
        let x_630 : vec4<f32> = u_xlat8;
        let x_632 : vec2<f32> = (vec2<f32>(x_630.x, x_630.y) + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_635 + vec2<f32>(1.0f, 1.0f));
        let x_638 : vec4<f32> = u_xlat7;
        let x_642 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_645 : vec2<f32> = u_xlat45;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_651 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec2<f32> = u_xlat43;
        let x_656 : vec2<f32> = (x_655 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_657 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_659.y, x_659.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_663 : f32 = u_xlat8.x;
        u_xlat9.z = x_663;
        let x_666 : f32 = u_xlat43.x;
        u_xlat9.w = x_666;
        let x_669 : f32 = u_xlat10.x;
        u_xlat7.z = x_669;
        let x_672 : f32 = u_xlat6.x;
        u_xlat7.w = x_672;
        let x_675 : vec4<f32> = u_xlat7;
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_675.z, x_675.w, x_675.x, x_675.z) + vec4<f32>(x_677.z, x_677.w, x_677.x, x_677.z));
        let x_681 : f32 = u_xlat9.y;
        u_xlat8.z = x_681;
        let x_684 : f32 = u_xlat43.y;
        u_xlat8.w = x_684;
        let x_687 : f32 = u_xlat7.y;
        u_xlat10.z = x_687;
        let x_690 : f32 = u_xlat6.z;
        u_xlat10.w = x_690;
        let x_692 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = u_xlat10;
        let x_696 : vec3<f32> = (vec3<f32>(x_692.z, x_692.y, x_692.w) + vec3<f32>(x_694.z, x_694.y, x_694.w));
        let x_697 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat7;
        let x_701 : vec4<f32> = u_xlat11;
        let x_703 : vec3<f32> = (vec3<f32>(x_699.x, x_699.z, x_699.w) / vec3<f32>(x_701.z, x_701.w, x_701.y));
        let x_704 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat7;
        let x_712 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_713 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat10;
        let x_717 : vec4<f32> = u_xlat6;
        let x_719 : vec3<f32> = (vec3<f32>(x_715.z, x_715.y, x_715.w) / vec3<f32>(x_717.x, x_717.y, x_717.z));
        let x_720 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat8;
        let x_724 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat7;
        let x_730 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.y, x_727.x, x_727.z) * vec3<f32>(x_730.x, x_730.x, x_730.x));
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat8;
        let x_738 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_740 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_738.y, x_738.y, x_738.y));
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_744 : f32 = u_xlat8.x;
        u_xlat7.w = x_744;
        let x_746 : vec4<f32> = u_xlat5;
        let x_749 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y) * vec4<f32>(x_749.x, x_749.y, x_749.x, x_749.y)) + vec4<f32>(x_752.y, x_752.w, x_752.x, x_752.w));
        let x_755 : vec4<f32> = u_xlat5;
        let x_758 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_761 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_755.x, x_755.y) * vec2<f32>(x_758.x, x_758.y)) + vec2<f32>(x_761.z, x_761.w));
        let x_765 : f32 = u_xlat7.y;
        u_xlat8.w = x_765;
        let x_767 : vec4<f32> = u_xlat8;
        let x_768 : vec2<f32> = vec2<f32>(x_767.y, x_767.z);
        let x_769 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_769.x, x_768.x, x_769.z, x_768.y);
        let x_771 : vec4<f32> = u_xlat5;
        let x_774 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) * vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y)) + vec4<f32>(x_777.x, x_777.y, x_777.z, x_777.y));
        let x_780 : vec4<f32> = u_xlat5;
        let x_783 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y) * vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y)) + vec4<f32>(x_786.w, x_786.y, x_786.w, x_786.z));
        let x_789 : vec4<f32> = u_xlat5;
        let x_792 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) * vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y)) + vec4<f32>(x_795.x, x_795.w, x_795.z, x_795.w));
        let x_799 : vec4<f32> = u_xlat6;
        let x_801 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_799.x, x_799.x, x_799.x, x_799.y) * vec4<f32>(x_801.z, x_801.w, x_801.y, x_801.z));
        let x_805 : vec4<f32> = u_xlat6;
        let x_807 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_805.y, x_805.y, x_805.z, x_805.z) * x_807);
        let x_811 : f32 = u_xlat6.z;
        let x_813 : f32 = u_xlat11.y;
        u_xlat59 = (x_811 * x_813);
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_827 : vec3<f32> = txVec4;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat60 = x_829;
        let x_831 : vec4<f32> = u_xlat9;
        let x_832 : vec2<f32> = vec2<f32>(x_831.z, x_831.w);
        let x_834 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_832.x, x_832.y, x_834);
        let x_842 : vec3<f32> = txVec5;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_842.xy, x_842.z);
        u_xlat61 = x_844;
        let x_845 : f32 = u_xlat61;
        let x_847 : f32 = u_xlat12.y;
        u_xlat61 = (x_845 * x_847);
        let x_850 : f32 = u_xlat12.x;
        let x_851 : f32 = u_xlat60;
        let x_853 : f32 = u_xlat61;
        u_xlat60 = ((x_850 * x_851) + x_853);
        let x_856 : vec2<f32> = u_xlat43;
        let x_858 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec6;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_865.xy, x_865.z);
        u_xlat61 = x_867;
        let x_869 : f32 = u_xlat12.z;
        let x_870 : f32 = u_xlat61;
        let x_872 : f32 = u_xlat60;
        u_xlat60 = ((x_869 * x_870) + x_872);
        let x_875 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
        let x_878 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec7;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_885.xy, x_885.z);
        u_xlat61 = x_887;
        let x_889 : f32 = u_xlat12.w;
        let x_890 : f32 = u_xlat61;
        let x_892 : f32 = u_xlat60;
        u_xlat60 = ((x_889 * x_890) + x_892);
        let x_895 : vec4<f32> = u_xlat10;
        let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
        let x_898 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec8;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_905.xy, x_905.z);
        u_xlat61 = x_907;
        let x_909 : f32 = u_xlat13.x;
        let x_910 : f32 = u_xlat61;
        let x_912 : f32 = u_xlat60;
        u_xlat60 = ((x_909 * x_910) + x_912);
        let x_915 : vec4<f32> = u_xlat10;
        let x_916 : vec2<f32> = vec2<f32>(x_915.z, x_915.w);
        let x_918 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_916.x, x_916.y, x_918);
        let x_925 : vec3<f32> = txVec9;
        let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_925.xy, x_925.z);
        u_xlat61 = x_927;
        let x_929 : f32 = u_xlat13.y;
        let x_930 : f32 = u_xlat61;
        let x_932 : f32 = u_xlat60;
        u_xlat60 = ((x_929 * x_930) + x_932);
        let x_935 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = vec2<f32>(x_935.z, x_935.w);
        let x_938 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec10;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_945.xy, x_945.z);
        u_xlat61 = x_947;
        let x_949 : f32 = u_xlat13.z;
        let x_950 : f32 = u_xlat61;
        let x_952 : f32 = u_xlat60;
        u_xlat60 = ((x_949 * x_950) + x_952);
        let x_955 : vec4<f32> = u_xlat7;
        let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
        let x_958 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_956.x, x_956.y, x_958);
        let x_965 : vec3<f32> = txVec11;
        let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_965.xy, x_965.z);
        u_xlat61 = x_967;
        let x_969 : f32 = u_xlat13.w;
        let x_970 : f32 = u_xlat61;
        let x_972 : f32 = u_xlat60;
        u_xlat60 = ((x_969 * x_970) + x_972);
        let x_975 : vec4<f32> = u_xlat7;
        let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
        let x_978 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec12;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_985.xy, x_985.z);
        u_xlat61 = x_987;
        let x_988 : f32 = u_xlat59;
        let x_989 : f32 = u_xlat61;
        let x_991 : f32 = u_xlat60;
        u_xlat1.x = ((x_988 * x_989) + x_991);
      } else {
        let x_995 : vec4<f32> = u_xlat3;
        let x_998 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.y) * vec2<f32>(x_998.z, x_998.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1002 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat5;
        let x_1006 : vec2<f32> = floor(vec2<f32>(x_1004.x, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat3;
        let x_1012 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1009.x, x_1009.y) * vec2<f32>(x_1012.z, x_1012.w)) + -(vec2<f32>(x_1015.x, x_1015.y)));
        let x_1019 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1019.x, x_1019.x, x_1019.y, x_1019.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1022 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1022.x, x_1022.x, x_1022.z, x_1022.z) * vec4<f32>(x_1024.x, x_1024.x, x_1024.z, x_1024.z));
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1031 : vec2<f32> = (vec2<f32>(x_1027.y, x_1027.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1032.x, x_1031.x, x_1032.z, x_1031.y);
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1037 : vec2<f32> = u_xlat43;
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1037));
        let x_1040 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1039.x, x_1040.y, x_1039.y, x_1040.w);
        let x_1042 : vec2<f32> = u_xlat43;
        let x_1044 : vec2<f32> = (-(x_1042) + vec2<f32>(1.0f, 1.0f));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1047, vec2<f32>(0.0f, 0.0f));
        let x_1049 : vec2<f32> = u_xlat45;
        let x_1051 : vec2<f32> = u_xlat45;
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1055 : vec2<f32> = ((-(x_1049) * x_1051) + vec2<f32>(x_1053.x, x_1053.y));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1058, vec2<f32>(0.0f, 0.0f));
        let x_1061 : vec2<f32> = u_xlat45;
        let x_1063 : vec2<f32> = u_xlat45;
        let x_1065 : vec4<f32> = u_xlat6;
        let x_1067 : vec2<f32> = ((-(x_1061) * x_1063) + vec2<f32>(x_1065.y, x_1065.w));
        let x_1068 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1067.x, x_1068.y, x_1067.y);
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1073 : vec2<f32> = (vec2<f32>(x_1070.x, x_1070.y) + vec2<f32>(2.0f, 2.0f));
        let x_1074 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : vec3<f32> = u_xlat25;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1076.x, x_1076.z) + vec2<f32>(2.0f, 2.0f));
        let x_1079 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1079.x, x_1078.x, x_1079.z, x_1078.y);
        let x_1082 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1082 * 0.081632003f);
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1089 : vec3<f32> = (vec3<f32>(x_1086.z, x_1086.x, x_1086.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1096 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1099 : f32 = u_xlat10.y;
        u_xlat9.x = x_1099;
        let x_1101 : vec2<f32> = u_xlat43;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1109.x, x_1108.x, x_1109.z, x_1108.y);
        let x_1111 : vec2<f32> = u_xlat43;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1115.x, x_1116.y, x_1115.y, x_1116.w);
        let x_1119 : f32 = u_xlat6.x;
        u_xlat7.y = x_1119;
        let x_1122 : f32 = u_xlat8.y;
        u_xlat7.w = x_1122;
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1124 + x_1125);
        let x_1127 : vec2<f32> = u_xlat43;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1127.y, x_1127.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1131.x, x_1130.x, x_1131.z, x_1130.y);
        let x_1133 : vec2<f32> = u_xlat43;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1133.y, x_1133.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1136.x, x_1137.y, x_1136.y, x_1137.w);
        let x_1140 : f32 = u_xlat6.y;
        u_xlat8.y = x_1140;
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1142 + x_1143);
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1145 / x_1146);
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1148 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1154 / x_1155);
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1157 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1159.w, x_1159.x, x_1159.y, x_1159.z) * vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.x));
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1168 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1165.x, x_1165.w, x_1165.y, x_1165.z) * vec4<f32>(x_1168.y, x_1168.y, x_1168.y, x_1168.y));
        let x_1171 : vec4<f32> = u_xlat7;
        let x_1172 : vec3<f32> = vec3<f32>(x_1171.y, x_1171.z, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1173.y, x_1172.y, x_1172.z);
        let x_1176 : f32 = u_xlat8.x;
        u_xlat10.y = x_1176;
        let x_1178 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat5;
        let x_1190 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1190.x, x_1190.y)) + vec2<f32>(x_1193.w, x_1193.y));
        let x_1197 : f32 = u_xlat10.y;
        u_xlat7.y = x_1197;
        let x_1200 : f32 = u_xlat8.z;
        u_xlat10.y = x_1200;
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1205 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y) * vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y)) + vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.w, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1223 : f32 = u_xlat10.y;
        u_xlat7.z = x_1223;
        let x_1226 : vec4<f32> = u_xlat5;
        let x_1229 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.z));
        let x_1236 : f32 = u_xlat8.w;
        u_xlat10.y = x_1236;
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1245.y));
        let x_1249 : vec4<f32> = u_xlat5;
        let x_1252 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1255.w, x_1255.y));
        let x_1259 : f32 = u_xlat10.y;
        u_xlat7.w = x_1259;
        let x_1262 : vec4<f32> = u_xlat5;
        let x_1265 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.x, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec3<f32> = vec3<f32>(x_1271.x, x_1271.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1273.y, x_1272.y, x_1272.z);
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1281.y));
        let x_1285 : vec4<f32> = u_xlat5;
        let x_1288 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(x_1288.x, x_1288.y)) + vec2<f32>(x_1291.w, x_1291.y));
        let x_1295 : f32 = u_xlat7.x;
        u_xlat8.x = x_1295;
        let x_1297 : vec4<f32> = u_xlat5;
        let x_1300 : vec4<f32> = x_181.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.x, x_1303.y));
        let x_1306 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1309.x, x_1309.x, x_1309.x, x_1309.x) * x_1311);
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1314.y, x_1314.y, x_1314.y, x_1314.y) * x_1316);
        let x_1319 : vec4<f32> = u_xlat6;
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1319.z, x_1319.z, x_1319.z, x_1319.z) * x_1321);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1323.w, x_1323.w, x_1323.w, x_1323.w) * x_1325);
        let x_1328 : vec4<f32> = u_xlat11;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec13;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1338.xy, x_1338.z);
        u_xlat59 = x_1340;
        let x_1342 : vec4<f32> = u_xlat11;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec14;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat60 = x_1354;
        let x_1355 : f32 = u_xlat60;
        let x_1357 : f32 = u_xlat16.y;
        u_xlat60 = (x_1355 * x_1357);
        let x_1360 : f32 = u_xlat16.x;
        let x_1361 : f32 = u_xlat59;
        let x_1363 : f32 = u_xlat60;
        u_xlat59 = ((x_1360 * x_1361) + x_1363);
        let x_1366 : vec2<f32> = u_xlat43;
        let x_1368 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec15;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat60 = x_1377;
        let x_1379 : f32 = u_xlat16.z;
        let x_1380 : f32 = u_xlat60;
        let x_1382 : f32 = u_xlat59;
        u_xlat59 = ((x_1379 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat14;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec16;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat60 = x_1397;
        let x_1399 : f32 = u_xlat16.w;
        let x_1400 : f32 = u_xlat60;
        let x_1402 : f32 = u_xlat59;
        u_xlat59 = ((x_1399 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat12;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec17;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat60 = x_1417;
        let x_1419 : f32 = u_xlat17.x;
        let x_1420 : f32 = u_xlat60;
        let x_1422 : f32 = u_xlat59;
        u_xlat59 = ((x_1419 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat12;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec18;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat60 = x_1437;
        let x_1439 : f32 = u_xlat17.y;
        let x_1440 : f32 = u_xlat60;
        let x_1442 : f32 = u_xlat59;
        u_xlat59 = ((x_1439 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat13;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec19;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat60 = x_1457;
        let x_1459 : f32 = u_xlat17.z;
        let x_1460 : f32 = u_xlat60;
        let x_1462 : f32 = u_xlat59;
        u_xlat59 = ((x_1459 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat14;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.z, x_1465.w);
        let x_1468 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec20;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat60 = x_1477;
        let x_1479 : f32 = u_xlat17.w;
        let x_1480 : f32 = u_xlat60;
        let x_1482 : f32 = u_xlat59;
        u_xlat59 = ((x_1479 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec21;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat60 = x_1497;
        let x_1499 : f32 = u_xlat18.x;
        let x_1500 : f32 = u_xlat60;
        let x_1502 : f32 = u_xlat59;
        u_xlat59 = ((x_1499 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.z, x_1505.w);
        let x_1508 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec22;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat60 = x_1517;
        let x_1519 : f32 = u_xlat18.y;
        let x_1520 : f32 = u_xlat60;
        let x_1522 : f32 = u_xlat59;
        u_xlat59 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec2<f32> = u_xlat26;
        let x_1527 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec23;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat60 = x_1536;
        let x_1538 : f32 = u_xlat18.z;
        let x_1539 : f32 = u_xlat60;
        let x_1541 : f32 = u_xlat59;
        u_xlat59 = ((x_1538 * x_1539) + x_1541);
        let x_1544 : vec2<f32> = u_xlat51;
        let x_1546 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec24;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat60 = x_1555;
        let x_1557 : f32 = u_xlat18.w;
        let x_1558 : f32 = u_xlat60;
        let x_1560 : f32 = u_xlat59;
        u_xlat59 = ((x_1557 * x_1558) + x_1560);
        let x_1563 : vec4<f32> = u_xlat10;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec25;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat60 = x_1575;
        let x_1577 : f32 = u_xlat6.x;
        let x_1578 : f32 = u_xlat60;
        let x_1580 : f32 = u_xlat59;
        u_xlat59 = ((x_1577 * x_1578) + x_1580);
        let x_1583 : vec4<f32> = u_xlat10;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.z, x_1583.w);
        let x_1586 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec26;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat60 = x_1595;
        let x_1597 : f32 = u_xlat6.y;
        let x_1598 : f32 = u_xlat60;
        let x_1600 : f32 = u_xlat59;
        u_xlat59 = ((x_1597 * x_1598) + x_1600);
        let x_1603 : vec2<f32> = u_xlat46;
        let x_1605 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec27;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat60 = x_1614;
        let x_1616 : f32 = u_xlat6.z;
        let x_1617 : f32 = u_xlat60;
        let x_1619 : f32 = u_xlat59;
        u_xlat59 = ((x_1616 * x_1617) + x_1619);
        let x_1622 : vec4<f32> = u_xlat5;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
        let x_1625 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec28;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat60 = x_1634;
        let x_1636 : f32 = u_xlat6.w;
        let x_1637 : f32 = u_xlat60;
        let x_1639 : f32 = u_xlat59;
        u_xlat1.x = ((x_1636 * x_1637) + x_1639);
      }
    }
  } else {
    let x_1644 : vec4<f32> = u_xlat3;
    let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
    let x_1647 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
    let x_1654 : vec3<f32> = txVec29;
    let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
    u_xlat1.x = x_1656;
  }
  let x_1659 : f32 = x_181.x_MainLightShadowParams.x;
  u_xlat59 = (-(x_1659) + 1.0f);
  let x_1663 : f32 = u_xlat1.x;
  let x_1665 : f32 = x_181.x_MainLightShadowParams.x;
  let x_1667 : f32 = u_xlat59;
  u_xlat1.x = ((x_1663 * x_1665) + x_1667);
  let x_1671 : f32 = u_xlat3.z;
  u_xlatb59 = (0.0f >= x_1671);
  let x_1674 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_1674 >= 1.0f);
  let x_1677 : bool = u_xlatb59;
  let x_1679 : bool = u_xlatb3.x;
  u_xlatb59 = (x_1677 | x_1679);
  let x_1681 : bool = u_xlatb59;
  if (x_1681) {
    x_1682 = 1.0f;
  } else {
    let x_1687 : f32 = u_xlat1.x;
    x_1682 = x_1687;
  }
  let x_1688 : f32 = x_1682;
  u_xlat1.x = x_1688;
  let x_1690 : vec3<f32> = vs_TEXCOORD1;
  let x_1693 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1695 : vec3<f32> = (x_1690 + -(x_1693));
  let x_1696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat3;
  let x_1700 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(vec3<f32>(x_1698.x, x_1698.y, x_1698.z), vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : f32 = u_xlat59;
  let x_1705 : f32 = x_181.x_MainLightShadowParams.z;
  let x_1708 : f32 = x_181.x_MainLightShadowParams.w;
  u_xlat59 = ((x_1703 * x_1705) + x_1708);
  let x_1710 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1710, 0.0f, 1.0f);
  let x_1713 : f32 = u_xlat1.x;
  u_xlat3.x = (-(x_1713) + 1.0f);
  let x_1717 : f32 = u_xlat59;
  let x_1719 : f32 = u_xlat3.x;
  let x_1722 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1717 * x_1719) + x_1722);
  let x_1731 : f32 = x_1729.x_MainLightCookieTextureFormat;
  u_xlatb59 = !((x_1731 == -1.0f));
  let x_1733 : bool = u_xlatb59;
  if (x_1733) {
    let x_1736 : vec3<f32> = vs_TEXCOORD1;
    let x_1739 : vec4<f32> = x_1729.x_MainLightWorldToLight[1i];
    let x_1741 : vec2<f32> = (vec2<f32>(x_1736.y, x_1736.y) * vec2<f32>(x_1739.x, x_1739.y));
    let x_1742 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
    let x_1745 : vec4<f32> = x_1729.x_MainLightWorldToLight[0i];
    let x_1747 : vec3<f32> = vs_TEXCOORD1;
    let x_1750 : vec4<f32> = u_xlat3;
    let x_1752 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(x_1747.x, x_1747.x)) + vec2<f32>(x_1750.x, x_1750.y));
    let x_1753 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1752.x, x_1752.y, x_1753.z, x_1753.w);
    let x_1756 : vec4<f32> = x_1729.x_MainLightWorldToLight[2i];
    let x_1758 : vec3<f32> = vs_TEXCOORD1;
    let x_1761 : vec4<f32> = u_xlat3;
    let x_1763 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1758.z, x_1758.z)) + vec2<f32>(x_1761.x, x_1761.y));
    let x_1764 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
    let x_1766 : vec4<f32> = u_xlat3;
    let x_1769 : vec4<f32> = x_1729.x_MainLightWorldToLight[3i];
    let x_1771 : vec2<f32> = (vec2<f32>(x_1766.x, x_1766.y) + vec2<f32>(x_1769.x, x_1769.y));
    let x_1772 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
    let x_1774 : vec4<f32> = u_xlat3;
    let x_1777 : vec2<f32> = ((vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1778 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
    let x_1785 : vec4<f32> = u_xlat3;
    let x_1788 : f32 = x_43.x_GlobalMipBias.x;
    let x_1789 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1785.x, x_1785.y), x_1788);
    u_xlat3 = x_1789;
    let x_1794 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1796 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1798 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1800 : f32 = x_1729.x_MainLightCookieTextureFormat;
    let x_1801 : vec4<f32> = vec4<f32>(x_1794, x_1796, x_1798, x_1800);
    let x_1808 : vec4<bool> = (vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1801.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1808.x, x_1808.y);
    let x_1811 : bool = u_xlatb5.y;
    if (x_1811) {
      let x_1816 : f32 = u_xlat3.w;
      x_1812 = x_1816;
    } else {
      let x_1819 : f32 = u_xlat3.x;
      x_1812 = x_1819;
    }
    let x_1820 : f32 = x_1812;
    u_xlat59 = x_1820;
    let x_1822 : bool = u_xlatb5.x;
    if (x_1822) {
      let x_1826 : vec4<f32> = u_xlat3;
      x_1823 = vec3<f32>(x_1826.x, x_1826.y, x_1826.z);
    } else {
      let x_1829 : f32 = u_xlat59;
      x_1823 = vec3<f32>(x_1829, x_1829, x_1829);
    }
    let x_1831 : vec3<f32> = x_1823;
    let x_1832 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1838 : vec4<f32> = u_xlat3;
  let x_1841 : vec4<f32> = x_43.x_MainLightColor;
  let x_1843 : vec3<f32> = (vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
  let x_1846 : f32 = u_xlat57;
  let x_1848 : vec4<f32> = u_xlat3;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1846, x_1846, x_1846) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1853 : vec3<f32> = u_xlat19;
  let x_1855 : vec4<f32> = u_xlat4;
  let x_1857 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.x, x_1853.x) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  let x_1861 : f32 = u_xlat1.x;
  let x_1867 : f32 = x_1865.unity_LightData.z;
  u_xlat19.x = (x_1861 * x_1867);
  let x_1870 : vec3<f32> = u_xlat19;
  let x_1872 : vec4<f32> = u_xlat3;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.x, x_1870.x) * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1875 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : vec3<f32> = u_xlat2;
  let x_1879 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat19.x = dot(x_1877, vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1884 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1884, 0.0f, 1.0f);
  let x_1887 : vec3<f32> = u_xlat19;
  let x_1889 : vec4<f32> = u_xlat3;
  let x_1891 : vec3<f32> = (vec3<f32>(x_1887.x, x_1887.x, x_1887.x) * vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
  let x_1894 : vec4<f32> = u_xlat1;
  let x_1896 : vec4<f32> = u_xlat3;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1894.y, x_1894.z, x_1894.w) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1902 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1904 : f32 = x_1865.unity_LightData.y;
  u_xlat19.x = min(x_1902, x_1904);
  let x_1908 : f32 = u_xlat19.x;
  u_xlatu19 = bitcast<u32>(i32(x_1908));
  let x_1912 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1914 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1916 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1918 : f32 = x_1729.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1919 : vec4<f32> = vec4<f32>(x_1912, x_1914, x_1916, x_1918);
  let x_1925 : vec4<bool> = (vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1919.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1925.x, x_1925.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1936 : u32 = u_xlatu_loop_1;
    let x_1937 : u32 = u_xlatu19;
    if ((x_1936 < x_1937)) {
    } else {
      break;
    }
    let x_1940 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1940 >> 2u);
    let x_1943 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1943 & 3u));
    let x_1946 : u32 = u_xlatu59;
    let x_1949 : vec4<f32> = x_1865.unity_LightIndices[bitcast<i32>(x_1946)];
    let x_1959 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1964 : vec4<u32> = indexable[x_1959];
    u_xlat59 = dot(x_1949, bitcast<vec4<f32>>(x_1964));
    let x_1967 : f32 = u_xlat59;
    u_xlatu59 = bitcast<u32>(i32(x_1967));
    let x_1970 : vec3<f32> = vs_TEXCOORD1;
    let x_1982 : u32 = u_xlatu59;
    let x_1985 : vec4<f32> = x_1981.x_AdditionalLightsPosition[bitcast<i32>(x_1982)];
    let x_1988 : u32 = u_xlatu59;
    let x_1991 : vec4<f32> = x_1981.x_AdditionalLightsPosition[bitcast<i32>(x_1988)];
    let x_1993 : vec3<f32> = ((-(x_1970) * vec3<f32>(x_1985.w, x_1985.w, x_1985.w)) + vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
    let x_1994 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
    let x_1996 : vec4<f32> = u_xlat7;
    let x_1998 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
    let x_2001 : f32 = u_xlat60;
    u_xlat60 = max(x_2001, 6.10351562e-05f);
    let x_2004 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_2004);
    let x_2006 : f32 = u_xlat61;
    let x_2008 : vec4<f32> = u_xlat7;
    let x_2010 : vec3<f32> = (vec3<f32>(x_2006, x_2006, x_2006) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
    let x_2011 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
    let x_2013 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_2013);
    let x_2015 : f32 = u_xlat60;
    let x_2016 : u32 = u_xlatu59;
    let x_2019 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2016)].x;
    u_xlat60 = (x_2015 * x_2019);
    let x_2021 : f32 = u_xlat60;
    let x_2023 : f32 = u_xlat60;
    u_xlat60 = ((-(x_2021) * x_2023) + 1.0f);
    let x_2026 : f32 = u_xlat60;
    u_xlat60 = max(x_2026, 0.0f);
    let x_2028 : f32 = u_xlat60;
    let x_2029 : f32 = u_xlat60;
    u_xlat60 = (x_2028 * x_2029);
    let x_2031 : f32 = u_xlat60;
    let x_2032 : f32 = u_xlat61;
    u_xlat60 = (x_2031 * x_2032);
    let x_2034 : u32 = u_xlatu59;
    let x_2037 : vec4<f32> = x_1981.x_AdditionalLightsSpotDir[bitcast<i32>(x_2034)];
    let x_2039 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2037.x, x_2037.y, x_2037.z), vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : f32 = u_xlat61;
    let x_2043 : u32 = u_xlatu59;
    let x_2046 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2043)].z;
    let x_2048 : u32 = u_xlatu59;
    let x_2051 : f32 = x_1981.x_AdditionalLightsAttenuation[bitcast<i32>(x_2048)].w;
    u_xlat61 = ((x_2042 * x_2046) + x_2051);
    let x_2053 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2053, 0.0f, 1.0f);
    let x_2055 : f32 = u_xlat61;
    let x_2056 : f32 = u_xlat61;
    u_xlat61 = (x_2055 * x_2056);
    let x_2058 : f32 = u_xlat60;
    let x_2059 : f32 = u_xlat61;
    u_xlat60 = (x_2058 * x_2059);
    let x_2062 : u32 = u_xlatu59;
    u_xlatu61 = (x_2062 >> 5u);
    let x_2065 : u32 = u_xlatu59;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_2065) & 31i)));
    let x_2071 : i32 = u_xlati43;
    let x_2073 : u32 = u_xlatu61;
    let x_2076 : f32 = x_1729.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2073)].el;
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_2071) & bitcast<u32>(x_2076)));
    let x_2080 : i32 = u_xlati61;
    if ((x_2080 != 0i)) {
      let x_2090 : u32 = u_xlatu59;
      let x_2093 : f32 = x_2089.x_AdditionalLightsLightTypes[bitcast<i32>(x_2090)].el;
      u_xlati61 = i32(x_2093);
      let x_2095 : i32 = u_xlati61;
      u_xlati43 = select(1i, 0i, (x_2095 != 0i));
      let x_2099 : u32 = u_xlatu59;
      u_xlati62 = (bitcast<i32>(x_2099) << bitcast<u32>(2i));
      let x_2102 : i32 = u_xlati43;
      if ((x_2102 != 0i)) {
        let x_2106 : vec3<f32> = vs_TEXCOORD1;
        let x_2108 : i32 = u_xlati62;
        let x_2111 : i32 = u_xlati62;
        let x_2115 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2108 + 1i) / 4i)][((x_2111 + 1i) % 4i)];
        let x_2117 : vec3<f32> = (vec3<f32>(x_2106.y, x_2106.y, x_2106.y) * vec3<f32>(x_2115.x, x_2115.y, x_2115.w));
        let x_2118 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2117.x, x_2117.y, x_2117.z, x_2118.w);
        let x_2120 : i32 = u_xlati62;
        let x_2122 : i32 = u_xlati62;
        let x_2125 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[(x_2120 / 4i)][(x_2122 % 4i)];
        let x_2127 : vec3<f32> = vs_TEXCOORD1;
        let x_2130 : vec4<f32> = u_xlat8;
        let x_2132 : vec3<f32> = ((vec3<f32>(x_2125.x, x_2125.y, x_2125.w) * vec3<f32>(x_2127.x, x_2127.x, x_2127.x)) + vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
        let x_2133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
        let x_2135 : i32 = u_xlati62;
        let x_2138 : i32 = u_xlati62;
        let x_2142 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2135 + 2i) / 4i)][((x_2138 + 2i) % 4i)];
        let x_2144 : vec3<f32> = vs_TEXCOORD1;
        let x_2147 : vec4<f32> = u_xlat8;
        let x_2149 : vec3<f32> = ((vec3<f32>(x_2142.x, x_2142.y, x_2142.w) * vec3<f32>(x_2144.z, x_2144.z, x_2144.z)) + vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
        let x_2150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
        let x_2152 : vec4<f32> = u_xlat8;
        let x_2154 : i32 = u_xlati62;
        let x_2157 : i32 = u_xlati62;
        let x_2161 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2154 + 3i) / 4i)][((x_2157 + 3i) % 4i)];
        let x_2163 : vec3<f32> = (vec3<f32>(x_2152.x, x_2152.y, x_2152.z) + vec3<f32>(x_2161.x, x_2161.y, x_2161.w));
        let x_2164 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
        let x_2166 : vec4<f32> = u_xlat8;
        let x_2168 : vec4<f32> = u_xlat8;
        let x_2170 : vec2<f32> = (vec2<f32>(x_2166.x, x_2166.y) / vec2<f32>(x_2168.z, x_2168.z));
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2170.x, x_2170.y, x_2171.z, x_2171.w);
        let x_2173 : vec4<f32> = u_xlat8;
        let x_2176 : vec2<f32> = ((vec2<f32>(x_2173.x, x_2173.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
        let x_2179 : vec4<f32> = u_xlat8;
        let x_2183 : vec2<f32> = clamp(vec2<f32>(x_2179.x, x_2179.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
        let x_2186 : u32 = u_xlatu59;
        let x_2189 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2186)];
        let x_2191 : vec4<f32> = u_xlat8;
        let x_2194 : u32 = u_xlatu59;
        let x_2197 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2194)];
        let x_2199 : vec2<f32> = ((vec2<f32>(x_2189.x, x_2189.y) * vec2<f32>(x_2191.x, x_2191.y)) + vec2<f32>(x_2197.z, x_2197.w));
        let x_2200 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
      } else {
        let x_2204 : i32 = u_xlati61;
        u_xlatb61 = (x_2204 == 1i);
        let x_2206 : bool = u_xlatb61;
        u_xlati61 = select(0i, 1i, x_2206);
        let x_2208 : i32 = u_xlati61;
        if ((x_2208 != 0i)) {
          let x_2212 : vec3<f32> = vs_TEXCOORD1;
          let x_2214 : i32 = u_xlati62;
          let x_2217 : i32 = u_xlati62;
          let x_2221 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2214 + 1i) / 4i)][((x_2217 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2212.y, x_2212.y) * vec2<f32>(x_2221.x, x_2221.y));
          let x_2224 : i32 = u_xlati62;
          let x_2226 : i32 = u_xlati62;
          let x_2229 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[(x_2224 / 4i)][(x_2226 % 4i)];
          let x_2231 : vec3<f32> = vs_TEXCOORD1;
          let x_2234 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(x_2231.x, x_2231.x)) + x_2234);
          let x_2236 : i32 = u_xlati62;
          let x_2239 : i32 = u_xlati62;
          let x_2243 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2236 + 2i) / 4i)][((x_2239 + 2i) % 4i)];
          let x_2245 : vec3<f32> = vs_TEXCOORD1;
          let x_2248 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2243.x, x_2243.y) * vec2<f32>(x_2245.z, x_2245.z)) + x_2248);
          let x_2250 : vec2<f32> = u_xlat46;
          let x_2251 : i32 = u_xlati62;
          let x_2254 : i32 = u_xlati62;
          let x_2258 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2251 + 3i) / 4i)][((x_2254 + 3i) % 4i)];
          u_xlat46 = (x_2250 + vec2<f32>(x_2258.x, x_2258.y));
          let x_2261 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2261 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2264 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2264);
          let x_2266 : u32 = u_xlatu59;
          let x_2269 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2266)];
          let x_2271 : vec2<f32> = u_xlat46;
          let x_2273 : u32 = u_xlatu59;
          let x_2276 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2273)];
          let x_2278 : vec2<f32> = ((vec2<f32>(x_2269.x, x_2269.y) * x_2271) + vec2<f32>(x_2276.z, x_2276.w));
          let x_2279 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2278.x, x_2278.y, x_2279.z, x_2279.w);
        } else {
          let x_2282 : vec3<f32> = vs_TEXCOORD1;
          let x_2284 : i32 = u_xlati62;
          let x_2287 : i32 = u_xlati62;
          let x_2291 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2284 + 1i) / 4i)][((x_2287 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2282.y, x_2282.y, x_2282.y, x_2282.y) * x_2291);
          let x_2293 : i32 = u_xlati62;
          let x_2295 : i32 = u_xlati62;
          let x_2298 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[(x_2293 / 4i)][(x_2295 % 4i)];
          let x_2299 : vec3<f32> = vs_TEXCOORD1;
          let x_2302 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2298 * vec4<f32>(x_2299.x, x_2299.x, x_2299.x, x_2299.x)) + x_2302);
          let x_2304 : i32 = u_xlati62;
          let x_2307 : i32 = u_xlati62;
          let x_2311 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2304 + 2i) / 4i)][((x_2307 + 2i) % 4i)];
          let x_2312 : vec3<f32> = vs_TEXCOORD1;
          let x_2315 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2311 * vec4<f32>(x_2312.z, x_2312.z, x_2312.z, x_2312.z)) + x_2315);
          let x_2317 : vec4<f32> = u_xlat9;
          let x_2318 : i32 = u_xlati62;
          let x_2321 : i32 = u_xlati62;
          let x_2325 : vec4<f32> = x_2089.x_AdditionalLightsWorldToLights[((x_2318 + 3i) / 4i)][((x_2321 + 3i) % 4i)];
          u_xlat9 = (x_2317 + x_2325);
          let x_2327 : vec4<f32> = u_xlat9;
          let x_2329 : vec4<f32> = u_xlat9;
          let x_2331 : vec3<f32> = (vec3<f32>(x_2327.x, x_2327.y, x_2327.z) / vec3<f32>(x_2329.w, x_2329.w, x_2329.w));
          let x_2332 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
          let x_2334 : vec4<f32> = u_xlat9;
          let x_2336 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(vec3<f32>(x_2334.x, x_2334.y, x_2334.z), vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
          let x_2339 : f32 = u_xlat61;
          u_xlat61 = inverseSqrt(x_2339);
          let x_2341 : f32 = u_xlat61;
          let x_2343 : vec4<f32> = u_xlat9;
          let x_2345 : vec3<f32> = (vec3<f32>(x_2341, x_2341, x_2341) * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
          let x_2346 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
          let x_2348 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(abs(vec3<f32>(x_2348.x, x_2348.y, x_2348.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2353 : f32 = u_xlat61;
          u_xlat61 = max(x_2353, 0.000001f);
          let x_2356 : f32 = u_xlat61;
          u_xlat61 = (1.0f / x_2356);
          let x_2358 : f32 = u_xlat61;
          let x_2360 : vec4<f32> = u_xlat9;
          let x_2362 : vec3<f32> = (vec3<f32>(x_2358, x_2358, x_2358) * vec3<f32>(x_2360.z, x_2360.x, x_2360.y));
          let x_2363 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
          let x_2366 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2366);
          let x_2370 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2370, 0.0f, 1.0f);
          let x_2374 : vec4<f32> = u_xlat10;
          let x_2377 : vec4<bool> = (vec4<f32>(x_2374.y, x_2374.z, x_2374.y, x_2374.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2377.x, x_2377.y);
          let x_2380 : bool = u_xlatb43.x;
          if (x_2380) {
            let x_2385 : f32 = u_xlat10.x;
            x_2381 = x_2385;
          } else {
            let x_2388 : f32 = u_xlat10.x;
            x_2381 = -(x_2388);
          }
          let x_2390 : f32 = x_2381;
          u_xlat43.x = x_2390;
          let x_2393 : bool = u_xlatb43.y;
          if (x_2393) {
            let x_2398 : f32 = u_xlat10.x;
            x_2394 = x_2398;
          } else {
            let x_2401 : f32 = u_xlat10.x;
            x_2394 = -(x_2401);
          }
          let x_2403 : f32 = x_2394;
          u_xlat43.y = x_2403;
          let x_2405 : vec4<f32> = u_xlat9;
          let x_2407 : f32 = u_xlat61;
          let x_2410 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2405.x, x_2405.y) * vec2<f32>(x_2407, x_2407)) + x_2410);
          let x_2412 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2412 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2415 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2415, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2419 : u32 = u_xlatu59;
          let x_2422 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2419)];
          let x_2424 : vec2<f32> = u_xlat43;
          let x_2426 : u32 = u_xlatu59;
          let x_2429 : vec4<f32> = x_2089.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2426)];
          let x_2431 : vec2<f32> = ((vec2<f32>(x_2422.x, x_2422.y) * x_2424) + vec2<f32>(x_2429.z, x_2429.w));
          let x_2432 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
        }
      }
      let x_2439 : vec4<f32> = u_xlat8;
      let x_2442 : f32 = x_43.x_GlobalMipBias.x;
      let x_2443 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2439.x, x_2439.y), x_2442);
      u_xlat8 = x_2443;
      let x_2445 : bool = u_xlatb5.y;
      if (x_2445) {
        let x_2450 : f32 = u_xlat8.w;
        x_2446 = x_2450;
      } else {
        let x_2453 : f32 = u_xlat8.x;
        x_2446 = x_2453;
      }
      let x_2454 : f32 = x_2446;
      u_xlat61 = x_2454;
      let x_2456 : bool = u_xlatb5.x;
      if (x_2456) {
        let x_2460 : vec4<f32> = u_xlat8;
        x_2457 = vec3<f32>(x_2460.x, x_2460.y, x_2460.z);
      } else {
        let x_2463 : f32 = u_xlat61;
        x_2457 = vec3<f32>(x_2463, x_2463, x_2463);
      }
      let x_2465 : vec3<f32> = x_2457;
      let x_2466 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2472 : vec4<f32> = u_xlat8;
    let x_2474 : u32 = u_xlatu59;
    let x_2477 : vec4<f32> = x_1981.x_AdditionalLightsColor[bitcast<i32>(x_2474)];
    let x_2479 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.y, x_2472.z) * vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
    let x_2480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
    let x_2482 : f32 = u_xlat57;
    let x_2484 : vec4<f32> = u_xlat8;
    let x_2486 : vec3<f32> = (vec3<f32>(x_2482, x_2482, x_2482) * vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
    let x_2489 : f32 = u_xlat60;
    let x_2491 : vec4<f32> = u_xlat8;
    let x_2493 : vec3<f32> = (vec3<f32>(x_2489, x_2489, x_2489) * vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
    let x_2494 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
    let x_2496 : vec3<f32> = u_xlat2;
    let x_2497 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(x_2496, vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
    let x_2500 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2500, 0.0f, 1.0f);
    let x_2502 : f32 = u_xlat59;
    let x_2504 : vec4<f32> = u_xlat8;
    let x_2506 : vec3<f32> = (vec3<f32>(x_2502, x_2502, x_2502) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
    let x_2507 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
    let x_2509 : vec4<f32> = u_xlat7;
    let x_2511 : vec4<f32> = u_xlat1;
    let x_2514 : vec4<f32> = u_xlat6;
    let x_2516 : vec3<f32> = ((vec3<f32>(x_2509.x, x_2509.y, x_2509.z) * vec3<f32>(x_2511.y, x_2511.z, x_2511.w)) + vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
    let x_2517 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);

    continuing {
      let x_2519 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2519 + bitcast<u32>(1i));
    }
  }
  let x_2521 : vec4<f32> = u_xlat4;
  let x_2523 : vec4<f32> = u_xlat1;
  let x_2526 : vec4<f32> = u_xlat3;
  let x_2528 : vec3<f32> = ((vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * vec3<f32>(x_2523.y, x_2523.z, x_2523.w)) + vec3<f32>(x_2526.x, x_2526.y, x_2526.z));
  let x_2529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
  let x_2533 : vec4<f32> = u_xlat6;
  let x_2535 : vec4<f32> = u_xlat1;
  let x_2537 : vec3<f32> = (vec3<f32>(x_2533.x, x_2533.y, x_2533.z) + vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
  let x_2538 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
  let x_2541 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2541 == 1.0f);
  let x_2543 : bool = u_xlatb19;
  let x_2544 : bool = u_xlatb38;
  u_xlatb19 = (x_2543 | x_2544);
  let x_2546 : bool = u_xlatb19;
  if (x_2546) {
    let x_2551 : f32 = u_xlat0.x;
    x_2547 = x_2551;
  } else {
    x_2547 = 1.0f;
  }
  let x_2553 : f32 = x_2547;
  SV_Target0.w = x_2553;
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

