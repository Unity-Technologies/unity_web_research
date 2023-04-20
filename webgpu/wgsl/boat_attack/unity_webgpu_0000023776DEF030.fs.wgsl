diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_5,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_175 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_411 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat34 : f32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_574 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_817 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var x_658 : f32;
  var x_669 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_947 : f32;
  var x_957 : f32;
  var txVec1 : vec3<f32>;
  var x_1380 : f32;
  var x_1393 : f32;
  var x_1441 : f32;
  var x_1452 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat11 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat33;
  let x_101 : f32 = u_xlat22;
  u_xlat22 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat22;
  u_xlat22 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat11;
  let x_108 : f32 = u_xlat22;
  u_xlat11 = (x_107 / x_108);
  let x_110 : f32 = u_xlat11;
  u_xlat11 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat11;
  u_xlat11 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb22;
  if (x_120) {
    let x_124 : f32 = u_xlat11;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres0;
  let x_181 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec4<f32> = vs_TEXCOORD2;
  let x_189 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres1;
  let x_192 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres2;
  let x_203 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = vs_TEXCOORD2;
  let x_211 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_208.x, x_208.y, x_208.z) + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_221.x, x_221.y, x_221.z), vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_235 : vec3<f32> = u_xlat6;
  let x_236 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_235, x_236);
  let x_242 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = x_175.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_242 < x_245);
  let x_248 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_256);
  let x_260 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_264);
  let x_270 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_270);
  let x_274 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_274);
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + vec3<f32>(x_279.y, x_279.z, x_279.w));
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = max(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_287.x, x_287.y, x_287.z);
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_290, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_298 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_298) + 4.0f);
  let x_305 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_305);
  let x_309 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_309) << bitcast<u32>(2i));
  let x_312 : vec4<f32> = vs_TEXCOORD2;
  let x_314 : i32 = u_xlati0;
  let x_317 : i32 = u_xlati0;
  let x_321 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_314 + 1i) / 4i)][((x_317 + 1i) % 4i)];
  let x_323 : vec3<f32> = (vec3<f32>(x_312.y, x_312.y, x_312.y) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : i32 = u_xlati0;
  let x_328 : i32 = u_xlati0;
  let x_331 : vec4<f32> = x_175.x_MainLightWorldToShadow[(x_326 / 4i)][(x_328 % 4i)];
  let x_333 : vec4<f32> = vs_TEXCOORD2;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.x, x_333.x)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : i32 = u_xlati0;
  let x_344 : i32 = u_xlati0;
  let x_348 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_341 + 2i) / 4i)][((x_344 + 2i) % 4i)];
  let x_350 : vec4<f32> = vs_TEXCOORD2;
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.z, x_350.z, x_350.z)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : i32 = u_xlati0;
  let x_363 : i32 = u_xlati0;
  let x_367 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_360 + 3i) / 4i)][((x_363 + 3i) % 4i)];
  let x_369 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = hlslcc_FragCoord.w;
  let x_375 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_373 * x_375);
  let x_379 : f32 = u_xlat0.x;
  let x_382 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_379 / x_382);
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_386) + 1.0f);
  let x_391 : f32 = u_xlat0.x;
  let x_393 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_391 * x_393);
  let x_397 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_397, 0.0f);
  let x_401 : f32 = u_xlat0.x;
  let x_404 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_401 * x_404);
  u_xlat2.w = 1.0f;
  let x_414 : vec4<f32> = x_411.unity_SHAr;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_411.unity_SHAg;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_411.unity_SHAb;
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_426, x_427);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_430.y, x_430.z, x_430.z, x_430.x) * vec4<f32>(x_432.x, x_432.y, x_432.z, x_432.z));
  let x_437 : vec4<f32> = x_411.unity_SHBr;
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_411.unity_SHBg;
  let x_444 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_411.unity_SHBb;
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_449, x_450);
  let x_454 : f32 = u_xlat2.y;
  let x_456 : f32 = u_xlat2.y;
  u_xlat33 = (x_454 * x_456);
  let x_459 : f32 = u_xlat2.x;
  let x_461 : f32 = u_xlat2.x;
  let x_463 : f32 = u_xlat33;
  u_xlat33 = ((x_459 * x_461) + -(x_463));
  let x_468 : vec4<f32> = x_411.unity_SHC;
  let x_470 : f32 = u_xlat33;
  let x_473 : vec3<f32> = u_xlat6;
  let x_474 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470, x_470, x_470)) + x_473);
  let x_475 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec3<f32> = max(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = u_xlat3;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  let x_494 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_492.x, x_492.y, x_494);
  let x_506 : vec3<f32> = txVec0;
  let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
  u_xlat33 = x_508;
  let x_512 : f32 = x_175.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_512) + 1.0f);
  let x_515 : f32 = u_xlat33;
  let x_517 : f32 = x_175.x_MainLightShadowParams.x;
  let x_519 : f32 = u_xlat34;
  u_xlat33 = ((x_515 * x_517) + x_519);
  let x_523 : f32 = u_xlat3.z;
  u_xlatb34 = (0.0f >= x_523);
  let x_527 : f32 = u_xlat3.z;
  u_xlatb35 = (x_527 >= 1.0f);
  let x_529 : bool = u_xlatb34;
  let x_530 : bool = u_xlatb35;
  u_xlatb34 = (x_529 | x_530);
  let x_532 : bool = u_xlatb34;
  let x_533 : f32 = u_xlat33;
  u_xlat33 = select(x_533, 1.0f, x_532);
  let x_535 : vec4<f32> = vs_TEXCOORD2;
  let x_539 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_541 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + -(x_539));
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : f32 = u_xlat34;
  let x_552 : f32 = x_175.x_MainLightShadowParams.z;
  let x_555 : f32 = x_175.x_MainLightShadowParams.w;
  u_xlat35 = ((x_550 * x_552) + x_555);
  let x_557 : f32 = u_xlat35;
  u_xlat35 = clamp(x_557, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat33;
  u_xlat3.x = (-(x_559) + 1.0f);
  let x_563 : f32 = u_xlat35;
  let x_565 : f32 = u_xlat3.x;
  let x_567 : f32 = u_xlat33;
  u_xlat33 = ((x_563 * x_565) + x_567);
  let x_576 : f32 = x_574.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_576 == -1.0f));
  let x_578 : bool = u_xlatb35;
  if (x_578) {
    let x_581 : vec4<f32> = vs_TEXCOORD2;
    let x_584 : vec4<f32> = x_574.x_MainLightWorldToLight[1i];
    let x_586 : vec2<f32> = (vec2<f32>(x_581.y, x_581.y) * vec2<f32>(x_584.x, x_584.y));
    let x_587 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_590 : vec4<f32> = x_574.x_MainLightWorldToLight[0i];
    let x_592 : vec4<f32> = vs_TEXCOORD2;
    let x_595 : vec4<f32> = u_xlat3;
    let x_597 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_592.x, x_592.x)) + vec2<f32>(x_595.x, x_595.y));
    let x_598 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
    let x_601 : vec4<f32> = x_574.x_MainLightWorldToLight[2i];
    let x_603 : vec4<f32> = vs_TEXCOORD2;
    let x_606 : vec4<f32> = u_xlat3;
    let x_608 : vec2<f32> = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_603.z, x_603.z)) + vec2<f32>(x_606.x, x_606.y));
    let x_609 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
    let x_611 : vec4<f32> = u_xlat3;
    let x_614 : vec4<f32> = x_574.x_MainLightWorldToLight[3i];
    let x_616 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) + vec2<f32>(x_614.x, x_614.y));
    let x_617 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
    let x_619 : vec4<f32> = u_xlat3;
    let x_623 : vec2<f32> = ((vec2<f32>(x_619.x, x_619.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_624 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
    let x_631 : vec4<f32> = u_xlat3;
    let x_634 : f32 = x_44.x_GlobalMipBias.x;
    let x_635 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_631.x, x_631.y), x_634);
    u_xlat3 = x_635;
    let x_640 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_644 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_646 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_647 : vec4<f32> = vec4<f32>(x_640, x_642, x_644, x_646);
    let x_654 : vec4<bool> = (vec4<f32>(x_647.x, x_647.y, x_647.z, x_647.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_654.x, x_654.y);
    let x_657 : bool = u_xlatb5.y;
    if (x_657) {
      let x_662 : f32 = u_xlat3.w;
      x_658 = x_662;
    } else {
      let x_665 : f32 = u_xlat3.x;
      x_658 = x_665;
    }
    let x_666 : f32 = x_658;
    u_xlat35 = x_666;
    let x_668 : bool = u_xlatb5.x;
    if (x_668) {
      let x_672 : vec4<f32> = u_xlat3;
      x_669 = vec3<f32>(x_672.x, x_672.y, x_672.z);
    } else {
      let x_675 : f32 = u_xlat35;
      x_669 = vec3<f32>(x_675, x_675, x_675);
    }
    let x_677 : vec3<f32> = x_669;
    let x_678 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_684 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = x_44.x_MainLightColor;
  let x_689 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : f32 = u_xlat33;
  let x_694 : f32 = x_411.unity_LightData.z;
  u_xlat33 = (x_692 * x_694);
  let x_696 : f32 = u_xlat33;
  let x_698 : vec4<f32> = u_xlat3;
  let x_700 : vec3<f32> = (vec3<f32>(x_696, x_696, x_696) * vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat2;
  let x_706 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : f32 = u_xlat33;
  u_xlat33 = clamp(x_709, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat33;
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_726 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_728 : f32 = x_411.unity_LightData.y;
  u_xlat33 = min(x_726, x_728);
  let x_731 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_731));
  let x_734 : f32 = u_xlat34;
  let x_737 : f32 = x_175.x_AdditionalShadowFadeParams.x;
  let x_740 : f32 = x_175.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_734 * x_737) + x_740);
  let x_742 : f32 = u_xlat34;
  u_xlat34 = clamp(x_742, 0.0f, 1.0f);
  let x_745 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_747 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_749 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_751 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_752 : vec4<f32> = vec4<f32>(x_745, x_747, x_749, x_751);
  let x_758 : vec4<bool> = (vec4<f32>(x_752.x, x_752.y, x_752.z, x_752.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_758.x, x_758.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_770 : u32 = u_xlatu_loop_1;
    let x_771 : u32 = u_xlatu33;
    if ((x_770 < x_771)) {
    } else {
      break;
    }
    let x_774 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_774 >> 2u);
    let x_777 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_777 & 3u));
    let x_781 : u32 = u_xlatu36;
    let x_784 : vec4<f32> = x_411.unity_LightIndices[bitcast<i32>(x_781)];
    let x_794 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_799 : vec4<u32> = indexable[x_794];
    u_xlat36 = dot(x_784, bitcast<vec4<f32>>(x_799));
    let x_803 : f32 = u_xlat36;
    u_xlati36 = i32(x_803);
    let x_806 : vec4<f32> = vs_TEXCOORD2;
    let x_818 : i32 = u_xlati36;
    let x_820 : vec4<f32> = x_817.x_AdditionalLightsPosition[x_818];
    let x_823 : i32 = u_xlati36;
    let x_825 : vec4<f32> = x_817.x_AdditionalLightsPosition[x_823];
    u_xlat7 = ((-(vec3<f32>(x_806.x, x_806.y, x_806.z)) * vec3<f32>(x_820.w, x_820.w, x_820.w)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
    let x_829 : vec3<f32> = u_xlat7;
    let x_830 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_829, x_830);
    let x_832 : f32 = u_xlat37;
    u_xlat37 = max(x_832, 0.00006103515625f);
    let x_836 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_836);
    let x_838 : f32 = u_xlat27;
    let x_840 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_838, x_838, x_838) * x_840);
    let x_842 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_842);
    let x_844 : f32 = u_xlat37;
    let x_845 : i32 = u_xlati36;
    let x_847 : f32 = x_817.x_AdditionalLightsAttenuation[x_845].x;
    u_xlat37 = (x_844 * x_847);
    let x_849 : f32 = u_xlat37;
    let x_851 : f32 = u_xlat37;
    u_xlat37 = ((-(x_849) * x_851) + 1.0f);
    let x_854 : f32 = u_xlat37;
    u_xlat37 = max(x_854, 0.0f);
    let x_856 : f32 = u_xlat37;
    let x_857 : f32 = u_xlat37;
    u_xlat37 = (x_856 * x_857);
    let x_859 : f32 = u_xlat37;
    let x_860 : f32 = u_xlat27;
    u_xlat37 = (x_859 * x_860);
    let x_862 : i32 = u_xlati36;
    let x_864 : vec4<f32> = x_817.x_AdditionalLightsSpotDir[x_862];
    let x_866 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), x_866);
    let x_868 : f32 = u_xlat27;
    let x_869 : i32 = u_xlati36;
    let x_871 : f32 = x_817.x_AdditionalLightsAttenuation[x_869].z;
    let x_873 : i32 = u_xlati36;
    let x_875 : f32 = x_817.x_AdditionalLightsAttenuation[x_873].w;
    u_xlat27 = ((x_868 * x_871) + x_875);
    let x_877 : f32 = u_xlat27;
    u_xlat27 = clamp(x_877, 0.0f, 1.0f);
    let x_879 : f32 = u_xlat27;
    let x_880 : f32 = u_xlat27;
    u_xlat27 = (x_879 * x_880);
    let x_882 : f32 = u_xlat37;
    let x_883 : f32 = u_xlat27;
    u_xlat37 = (x_882 * x_883);
    let x_887 : i32 = u_xlati36;
    let x_889 : f32 = x_175.x_AdditionalShadowParams[x_887].w;
    u_xlati27 = i32(x_889);
    let x_892 : i32 = u_xlati27;
    u_xlatb38 = (x_892 >= 0i);
    let x_894 : bool = u_xlatb38;
    if (x_894) {
      let x_898 : i32 = u_xlati36;
      let x_900 : f32 = x_175.x_AdditionalShadowParams[x_898].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_900, x_900, x_900, x_900))));
      let x_904 : bool = u_xlatb38;
      if (x_904) {
        let x_908 : vec3<f32> = u_xlat7;
        let x_911 : vec3<f32> = u_xlat7;
        let x_914 : vec4<bool> = (abs(vec4<f32>(x_908.z, x_908.z, x_908.y, x_908.z)) >= abs(vec4<f32>(x_911.x, x_911.y, x_911.x, x_911.x)));
        let x_916 : vec3<bool> = vec3<bool>(x_914.x, x_914.y, x_914.z);
        let x_917 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_916.x, x_916.y, x_916.z, x_917.w);
        let x_920 : bool = u_xlatb8.y;
        let x_922 : bool = u_xlatb8.x;
        u_xlatb38 = (x_920 & x_922);
        let x_924 : vec3<f32> = u_xlat7;
        let x_927 : vec4<bool> = (-(vec4<f32>(x_924.z, x_924.y, x_924.z, x_924.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_928 : vec3<bool> = vec3<bool>(x_927.x, x_927.y, x_927.w);
        let x_929 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_928.x, x_928.y, x_929.z, x_928.z);
        let x_933 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_933);
        let x_938 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_938);
        let x_943 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_943);
        let x_946 : bool = u_xlatb8.z;
        if (x_946) {
          let x_951 : f32 = u_xlat8.y;
          x_947 = x_951;
        } else {
          let x_953 : f32 = u_xlat39;
          x_947 = x_953;
        }
        let x_954 : f32 = x_947;
        u_xlat39 = x_954;
        let x_956 : bool = u_xlatb38;
        if (x_956) {
          let x_961 : f32 = u_xlat8.x;
          x_957 = x_961;
        } else {
          let x_963 : f32 = u_xlat39;
          x_957 = x_963;
        }
        let x_964 : f32 = x_957;
        u_xlat38 = x_964;
        let x_965 : i32 = u_xlati36;
        let x_967 : f32 = x_175.x_AdditionalShadowParams[x_965].w;
        u_xlat39 = trunc(x_967);
        let x_969 : f32 = u_xlat38;
        let x_970 : f32 = u_xlat39;
        u_xlat38 = (x_969 + x_970);
        let x_972 : f32 = u_xlat38;
        u_xlati27 = i32(x_972);
      }
      let x_974 : i32 = u_xlati27;
      u_xlati27 = (x_974 << bitcast<u32>(2i));
      let x_976 : vec4<f32> = vs_TEXCOORD2;
      let x_979 : i32 = u_xlati27;
      let x_982 : i32 = u_xlati27;
      let x_986 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_979 + 1i) / 4i)][((x_982 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_976.y, x_976.y, x_976.y, x_976.y) * x_986);
      let x_988 : i32 = u_xlati27;
      let x_990 : i32 = u_xlati27;
      let x_993 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
      let x_994 : vec4<f32> = vs_TEXCOORD2;
      let x_997 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_993 * vec4<f32>(x_994.x, x_994.x, x_994.x, x_994.x)) + x_997);
      let x_999 : i32 = u_xlati27;
      let x_1002 : i32 = u_xlati27;
      let x_1006 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_999 + 2i) / 4i)][((x_1002 + 2i) % 4i)];
      let x_1007 : vec4<f32> = vs_TEXCOORD2;
      let x_1010 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1006 * vec4<f32>(x_1007.z, x_1007.z, x_1007.z, x_1007.z)) + x_1010);
      let x_1012 : vec4<f32> = u_xlat8;
      let x_1013 : i32 = u_xlati27;
      let x_1016 : i32 = u_xlati27;
      let x_1020 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
      u_xlat8 = (x_1012 + x_1020);
      let x_1022 : vec4<f32> = u_xlat8;
      let x_1024 : vec4<f32> = u_xlat8;
      let x_1026 : vec3<f32> = (vec3<f32>(x_1022.x, x_1022.y, x_1022.z) / vec3<f32>(x_1024.w, x_1024.w, x_1024.w));
      let x_1027 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
      let x_1030 : vec4<f32> = u_xlat8;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
      let x_1033 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1041 : vec3<f32> = txVec1;
      let x_1043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
      u_xlat27 = x_1043;
      let x_1044 : i32 = u_xlati36;
      let x_1046 : f32 = x_175.x_AdditionalShadowParams[x_1044].x;
      u_xlat38 = (1.0f + -(x_1046));
      let x_1049 : f32 = u_xlat27;
      let x_1050 : i32 = u_xlati36;
      let x_1052 : f32 = x_175.x_AdditionalShadowParams[x_1050].x;
      let x_1054 : f32 = u_xlat38;
      u_xlat27 = ((x_1049 * x_1052) + x_1054);
      let x_1057 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1057);
      let x_1061 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1061 >= 1.0f);
      let x_1063 : bool = u_xlatb38;
      let x_1064 : bool = u_xlatb39;
      u_xlatb38 = (x_1063 | x_1064);
      let x_1066 : bool = u_xlatb38;
      let x_1067 : f32 = u_xlat27;
      u_xlat27 = select(x_1067, 1.0f, x_1066);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1070 : f32 = u_xlat27;
    u_xlat38 = (-(x_1070) + 1.0f);
    let x_1073 : f32 = u_xlat34;
    let x_1074 : f32 = u_xlat38;
    let x_1076 : f32 = u_xlat27;
    u_xlat27 = ((x_1073 * x_1074) + x_1076);
    let x_1079 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1079 & 31i)));
    let x_1083 : i32 = u_xlati38;
    let x_1086 : f32 = x_574.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1083) & bitcast<u32>(x_1086)));
    let x_1090 : i32 = u_xlati38;
    if ((x_1090 != 0i)) {
      let x_1094 : i32 = u_xlati36;
      let x_1096 : f32 = x_574.x_AdditionalLightsLightTypes[x_1094].el;
      u_xlati38 = i32(x_1096);
      let x_1099 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1099 != 0i));
      let x_1103 : i32 = u_xlati36;
      u_xlati40 = (x_1103 << bitcast<u32>(2i));
      let x_1105 : i32 = u_xlati39;
      if ((x_1105 != 0i)) {
        let x_1109 : vec4<f32> = vs_TEXCOORD2;
        let x_1111 : i32 = u_xlati40;
        let x_1114 : i32 = u_xlati40;
        let x_1118 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1111 + 1i) / 4i)][((x_1114 + 1i) % 4i)];
        let x_1120 : vec3<f32> = (vec3<f32>(x_1109.y, x_1109.y, x_1109.y) * vec3<f32>(x_1118.x, x_1118.y, x_1118.w));
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : i32 = u_xlati40;
        let x_1125 : i32 = u_xlati40;
        let x_1128 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[(x_1123 / 4i)][(x_1125 % 4i)];
        let x_1130 : vec4<f32> = vs_TEXCOORD2;
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1135 : vec3<f32> = ((vec3<f32>(x_1128.x, x_1128.y, x_1128.w) * vec3<f32>(x_1130.x, x_1130.x, x_1130.x)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
        let x_1138 : i32 = u_xlati40;
        let x_1141 : i32 = u_xlati40;
        let x_1145 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1138 + 2i) / 4i)][((x_1141 + 2i) % 4i)];
        let x_1147 : vec4<f32> = vs_TEXCOORD2;
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.y, x_1145.w) * vec3<f32>(x_1147.z, x_1147.z, x_1147.z)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1157 : i32 = u_xlati40;
        let x_1160 : i32 = u_xlati40;
        let x_1164 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1157 + 3i) / 4i)][((x_1160 + 3i) % 4i)];
        let x_1166 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(x_1164.x, x_1164.y, x_1164.w));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1173 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) / vec2<f32>(x_1171.z, x_1171.z));
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat8;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1186 : vec2<f32> = clamp(vec2<f32>(x_1182.x, x_1182.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : i32 = u_xlati36;
        let x_1191 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1189];
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1196 : i32 = u_xlati36;
        let x_1198 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1196];
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1198.z, x_1198.w));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
      } else {
        let x_1204 : i32 = u_xlati38;
        u_xlatb38 = (x_1204 == 1i);
        let x_1206 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1206);
        let x_1208 : i32 = u_xlati38;
        if ((x_1208 != 0i)) {
          let x_1214 : vec4<f32> = vs_TEXCOORD2;
          let x_1216 : i32 = u_xlati40;
          let x_1219 : i32 = u_xlati40;
          let x_1223 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1216 + 1i) / 4i)][((x_1219 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1214.y, x_1214.y) * vec2<f32>(x_1223.x, x_1223.y));
          let x_1226 : i32 = u_xlati40;
          let x_1228 : i32 = u_xlati40;
          let x_1231 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[(x_1226 / 4i)][(x_1228 % 4i)];
          let x_1233 : vec4<f32> = vs_TEXCOORD2;
          let x_1236 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1233.x, x_1233.x)) + x_1236);
          let x_1238 : i32 = u_xlati40;
          let x_1241 : i32 = u_xlati40;
          let x_1245 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1238 + 2i) / 4i)][((x_1241 + 2i) % 4i)];
          let x_1247 : vec4<f32> = vs_TEXCOORD2;
          let x_1250 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1245.x, x_1245.y) * vec2<f32>(x_1247.z, x_1247.z)) + x_1250);
          let x_1252 : vec2<f32> = u_xlat30;
          let x_1253 : i32 = u_xlati40;
          let x_1256 : i32 = u_xlati40;
          let x_1260 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1253 + 3i) / 4i)][((x_1256 + 3i) % 4i)];
          u_xlat30 = (x_1252 + vec2<f32>(x_1260.x, x_1260.y));
          let x_1263 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1263 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1266 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1266);
          let x_1268 : i32 = u_xlati36;
          let x_1270 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1268];
          let x_1272 : vec2<f32> = u_xlat30;
          let x_1274 : i32 = u_xlati36;
          let x_1276 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1274];
          let x_1278 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * x_1272) + vec2<f32>(x_1276.z, x_1276.w));
          let x_1279 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        } else {
          let x_1283 : vec4<f32> = vs_TEXCOORD2;
          let x_1285 : i32 = u_xlati40;
          let x_1288 : i32 = u_xlati40;
          let x_1292 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1285 + 1i) / 4i)][((x_1288 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1292);
          let x_1294 : i32 = u_xlati40;
          let x_1296 : i32 = u_xlati40;
          let x_1299 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[(x_1294 / 4i)][(x_1296 % 4i)];
          let x_1300 : vec4<f32> = vs_TEXCOORD2;
          let x_1303 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1299 * vec4<f32>(x_1300.x, x_1300.x, x_1300.x, x_1300.x)) + x_1303);
          let x_1305 : i32 = u_xlati40;
          let x_1308 : i32 = u_xlati40;
          let x_1312 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1305 + 2i) / 4i)][((x_1308 + 2i) % 4i)];
          let x_1313 : vec4<f32> = vs_TEXCOORD2;
          let x_1316 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1312 * vec4<f32>(x_1313.z, x_1313.z, x_1313.z, x_1313.z)) + x_1316);
          let x_1318 : vec4<f32> = u_xlat9;
          let x_1319 : i32 = u_xlati40;
          let x_1322 : i32 = u_xlati40;
          let x_1326 : vec4<f32> = x_574.x_AdditionalLightsWorldToLights[((x_1319 + 3i) / 4i)][((x_1322 + 3i) % 4i)];
          u_xlat9 = (x_1318 + x_1326);
          let x_1328 : vec4<f32> = u_xlat9;
          let x_1330 : vec4<f32> = u_xlat9;
          let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) / vec3<f32>(x_1330.w, x_1330.w, x_1330.w));
          let x_1333 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
          let x_1335 : vec4<f32> = u_xlat9;
          let x_1337 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1335.x, x_1335.y, x_1335.z), vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
          let x_1340 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1340);
          let x_1342 : f32 = u_xlat38;
          let x_1344 : vec4<f32> = u_xlat9;
          let x_1346 : vec3<f32> = (vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
          let x_1347 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
          let x_1349 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1354 : f32 = u_xlat38;
          u_xlat38 = max(x_1354, 0.00000099999999747524f);
          let x_1357 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1357);
          let x_1360 : f32 = u_xlat38;
          let x_1362 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1362.z, x_1362.x, x_1362.y));
          let x_1366 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1366);
          let x_1370 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1370, 0.0f, 1.0f);
          let x_1374 : vec3<f32> = u_xlat10;
          let x_1376 : vec4<bool> = (vec4<f32>(x_1374.y, x_1374.z, x_1374.y, x_1374.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1376.x, x_1376.y);
          let x_1379 : bool = u_xlatb30.x;
          if (x_1379) {
            let x_1384 : f32 = u_xlat10.x;
            x_1380 = x_1384;
          } else {
            let x_1387 : f32 = u_xlat10.x;
            x_1380 = -(x_1387);
          }
          let x_1389 : f32 = x_1380;
          u_xlat30.x = x_1389;
          let x_1392 : bool = u_xlatb30.y;
          if (x_1392) {
            let x_1397 : f32 = u_xlat10.x;
            x_1393 = x_1397;
          } else {
            let x_1400 : f32 = u_xlat10.x;
            x_1393 = -(x_1400);
          }
          let x_1402 : f32 = x_1393;
          u_xlat30.y = x_1402;
          let x_1404 : vec4<f32> = u_xlat9;
          let x_1406 : f32 = u_xlat38;
          let x_1409 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1404.x, x_1404.y) * vec2<f32>(x_1406, x_1406)) + x_1409);
          let x_1411 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1411 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1414 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1414, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1418 : i32 = u_xlati36;
          let x_1420 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1418];
          let x_1422 : vec2<f32> = u_xlat30;
          let x_1424 : i32 = u_xlati36;
          let x_1426 : vec4<f32> = x_574.x_AdditionalLightsCookieAtlasUVRects[x_1424];
          let x_1428 : vec2<f32> = ((vec2<f32>(x_1420.x, x_1420.y) * x_1422) + vec2<f32>(x_1426.z, x_1426.w));
          let x_1429 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        }
      }
      let x_1436 : vec4<f32> = u_xlat8;
      let x_1438 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1436.x, x_1436.y), 0.0f);
      u_xlat8 = x_1438;
      let x_1440 : bool = u_xlatb5.y;
      if (x_1440) {
        let x_1445 : f32 = u_xlat8.w;
        x_1441 = x_1445;
      } else {
        let x_1448 : f32 = u_xlat8.x;
        x_1441 = x_1448;
      }
      let x_1449 : f32 = x_1441;
      u_xlat38 = x_1449;
      let x_1451 : bool = u_xlatb5.x;
      if (x_1451) {
        let x_1455 : vec4<f32> = u_xlat8;
        x_1452 = vec3<f32>(x_1455.x, x_1455.y, x_1455.z);
      } else {
        let x_1458 : f32 = u_xlat38;
        x_1452 = vec3<f32>(x_1458, x_1458, x_1458);
      }
      let x_1460 : vec3<f32> = x_1452;
      let x_1461 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1467 : vec4<f32> = u_xlat8;
    let x_1469 : i32 = u_xlati36;
    let x_1471 : vec4<f32> = x_817.x_AdditionalLightsColor[x_1469];
    let x_1473 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1474 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
    let x_1476 : f32 = u_xlat37;
    let x_1477 : f32 = u_xlat27;
    u_xlat36 = (x_1476 * x_1477);
    let x_1479 : f32 = u_xlat36;
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec3<f32> = (vec3<f32>(x_1479, x_1479, x_1479) * vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
    let x_1486 : vec4<f32> = u_xlat2;
    let x_1488 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1486.x, x_1486.y, x_1486.z), x_1488);
    let x_1490 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1490, 0.0f, 1.0f);
    let x_1492 : f32 = u_xlat36;
    let x_1494 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1492, x_1492, x_1492) * vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
    let x_1497 : vec3<f32> = u_xlat7;
    let x_1498 : vec4<f32> = u_xlat1;
    let x_1501 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1497 * vec3<f32>(x_1498.x, x_1498.y, x_1498.z)) + x_1501);

    continuing {
      let x_1503 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1503 + bitcast<u32>(1i));
    }
  }
  let x_1505 : vec4<f32> = u_xlat4;
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1510 : vec4<f32> = u_xlat3;
  let x_1512 : vec3<f32> = ((vec3<f32>(x_1505.x, x_1505.y, x_1505.z) * vec3<f32>(x_1507.x, x_1507.y, x_1507.z)) + vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
  let x_1515 : vec3<f32> = u_xlat6;
  let x_1516 : vec4<f32> = u_xlat1;
  let x_1518 : vec3<f32> = (x_1515 + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
  let x_1522 : f32 = u_xlat0.x;
  let x_1524 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1522 * -(x_1524));
  let x_1529 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1529);
  let x_1532 : vec4<f32> = u_xlat1;
  let x_1535 : vec4<f32> = x_44.unity_FogColor;
  let x_1538 : vec3<f32> = (vec3<f32>(x_1532.x, x_1532.y, x_1532.z) + -(vec3<f32>(x_1535.x, x_1535.y, x_1535.z)));
  let x_1539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
  let x_1543 : vec4<f32> = u_xlat0;
  let x_1545 : vec4<f32> = u_xlat1;
  let x_1549 : vec4<f32> = x_44.unity_FogColor;
  let x_1551 : vec3<f32> = ((vec3<f32>(x_1543.x, x_1543.x, x_1543.x) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z)) + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1554 : bool = u_xlatb22;
  let x_1555 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1555, x_1554);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


