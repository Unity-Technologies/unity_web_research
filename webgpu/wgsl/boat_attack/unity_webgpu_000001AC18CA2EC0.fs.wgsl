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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlatb12 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_284 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(1) @binding(2) var<uniform> x_472 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(1) @binding(5) var<uniform> x_636 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_938 : AdditionalLights;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb43 : bool;

var<private> u_xlati42 : i32;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb33 : vec2<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb40 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_720 : f32;
  var x_731 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1067 : f32;
  var x_1077 : f32;
  var txVec1 : vec3<f32>;
  var x_1501 : f32;
  var x_1514 : f32;
  var x_1562 : f32;
  var x_1573 : vec3<f32>;
  var x_1697 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_41.x_BaseColor.w;
  let x_78 : f32 = x_41.x_Cutoff;
  u_xlat12.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat36;
  let x_92 : f32 = u_xlat24;
  u_xlat24 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat24;
  u_xlat24 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat12.x;
  let x_100 : f32 = u_xlat24;
  u_xlat12.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat12.x;
  u_xlat12.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb24;
  if (x_117) {
    let x_122 : f32 = u_xlat12.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat12.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat12.x;
  u_xlatb12 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb12;
  if (((select(0i, 1i, x_137) * -1i) != 0i)) {
    discard;
  }
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  let x_153 : f32 = x_27.x_GlobalMipBias.x;
  let x_154 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_151, x_153);
  let x_155 : vec3<f32> = vec3<f32>(x_154.x, x_154.y, x_154.w);
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : f32 = u_xlat2.x;
  let x_162 : f32 = u_xlat2.z;
  u_xlat2.x = (x_159 * x_162);
  let x_165 : vec4<f32> = u_xlat2;
  let x_172 : vec2<f32> = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_173 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_172.x, x_173.y, x_172.y);
  let x_175 : vec3<f32> = u_xlat12;
  let x_177 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_175.x, x_175.z), vec2<f32>(x_177.x, x_177.z));
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_195, 0.0000000000000001f);
  let x_199 : vec3<f32> = u_xlat12;
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec3<f32> = (vec3<f32>(x_199.z, x_199.z, x_199.z) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec3<f32> = u_xlat12;
  let x_211 : vec4<f32> = vs_TEXCOORD3;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.x, x_208.x) * vec3<f32>(x_211.x, x_211.y, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = vs_TEXCOORD2;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat12;
  let x_242 : vec4<f32> = u_xlat2;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_250 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_250;
  let x_253 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_253;
  let x_257 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_257;
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_259, x_260);
  let x_264 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_264, 0.00006103515625f);
  let x_269 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_269);
  let x_275 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres0;
  let x_289 : vec3<f32> = (x_275 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres1;
  let x_299 : vec3<f32> = (x_293 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres2;
  let x_309 : vec3<f32> = (x_303 + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_313 + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat5;
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec3<f32> = u_xlat7;
  let x_338 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_337, x_338);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_284.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_344 < x_347);
  let x_350 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_366);
  let x_371 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_371);
  let x_375 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_375);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec4<f32> = u_xlat5;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_380.y, x_380.z, x_380.w));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = max(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_391, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_396 : f32 = u_xlat36;
  u_xlat36 = (-(x_396) + 4.0f);
  let x_401 : f32 = u_xlat36;
  u_xlatu36 = u32(x_401);
  let x_405 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_405) << bitcast<u32>(2i));
  let x_408 : vec3<f32> = vs_TEXCOORD1;
  let x_410 : i32 = u_xlati36;
  let x_413 : i32 = u_xlati36;
  let x_417 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_410 + 1i) / 4i)][((x_413 + 1i) % 4i)];
  let x_419 : vec3<f32> = (vec3<f32>(x_408.y, x_408.y, x_408.y) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati36;
  let x_424 : i32 = u_xlati36;
  let x_427 : vec4<f32> = x_284.x_MainLightWorldToShadow[(x_422 / 4i)][(x_424 % 4i)];
  let x_429 : vec3<f32> = vs_TEXCOORD1;
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : i32 = u_xlati36;
  let x_440 : i32 = u_xlati36;
  let x_444 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_437 + 2i) / 4i)][((x_440 + 2i) % 4i)];
  let x_446 : vec3<f32> = vs_TEXCOORD1;
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.z, x_446.z, x_446.z)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat4;
  let x_456 : i32 = u_xlati36;
  let x_459 : i32 = u_xlati36;
  let x_463 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_456 + 3i) / 4i)][((x_459 + 3i) % 4i)];
  let x_465 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  u_xlat2.w = 1.0f;
  let x_475 : vec4<f32> = x_472.unity_SHAr;
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_475, x_476);
  let x_481 : vec4<f32> = x_472.unity_SHAg;
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_481, x_482);
  let x_487 : vec4<f32> = x_472.unity_SHAb;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_487, x_488);
  let x_491 : vec4<f32> = u_xlat2;
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_491.y, x_491.z, x_491.z, x_491.x) * vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.z));
  let x_498 : vec4<f32> = x_472.unity_SHBr;
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_498, x_499);
  let x_504 : vec4<f32> = x_472.unity_SHBg;
  let x_505 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_504, x_505);
  let x_510 : vec4<f32> = x_472.unity_SHBb;
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_510, x_511);
  let x_515 : f32 = u_xlat2.y;
  let x_517 : f32 = u_xlat2.y;
  u_xlat36 = (x_515 * x_517);
  let x_520 : f32 = u_xlat2.x;
  let x_522 : f32 = u_xlat2.x;
  let x_524 : f32 = u_xlat36;
  u_xlat36 = ((x_520 * x_522) + -(x_524));
  let x_529 : vec4<f32> = x_472.unity_SHC;
  let x_531 : f32 = u_xlat36;
  let x_534 : vec3<f32> = u_xlat7;
  let x_535 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531, x_531, x_531)) + x_534);
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat5;
  let x_540 : vec4<f32> = u_xlat6;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat5;
  let x_547 : vec3<f32> = max(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_548 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_552 : vec4<f32> = u_xlat4;
  let x_553 : vec2<f32> = vec2<f32>(x_552.x, x_552.y);
  let x_555 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_553.x, x_553.y, x_555);
  let x_567 : vec3<f32> = txVec0;
  let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_567.xy, x_567.z);
  u_xlat36 = x_569;
  let x_572 : f32 = x_284.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_572) + 1.0f);
  let x_576 : f32 = u_xlat36;
  let x_578 : f32 = x_284.x_MainLightShadowParams.x;
  let x_581 : f32 = u_xlat1.x;
  u_xlat36 = ((x_576 * x_578) + x_581);
  let x_585 : f32 = u_xlat4.z;
  u_xlatb1 = (0.0f >= x_585);
  let x_589 : f32 = u_xlat4.z;
  u_xlatb38 = (x_589 >= 1.0f);
  let x_591 : bool = u_xlatb1;
  let x_592 : bool = u_xlatb38;
  u_xlatb1 = (x_591 | x_592);
  let x_594 : bool = u_xlatb1;
  let x_595 : f32 = u_xlat36;
  u_xlat36 = select(x_595, 1.0f, x_594);
  let x_597 : vec3<f32> = vs_TEXCOORD1;
  let x_600 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_602 : vec3<f32> = (x_597 + -(x_600));
  let x_603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat4;
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_613 : f32 = u_xlat1.x;
  let x_615 : f32 = x_284.x_MainLightShadowParams.z;
  let x_618 : f32 = x_284.x_MainLightShadowParams.w;
  u_xlat38 = ((x_613 * x_615) + x_618);
  let x_620 : f32 = u_xlat38;
  u_xlat38 = clamp(x_620, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat36;
  u_xlat39 = (-(x_623) + 1.0f);
  let x_626 : f32 = u_xlat38;
  let x_627 : f32 = u_xlat39;
  let x_629 : f32 = u_xlat36;
  u_xlat36 = ((x_626 * x_627) + x_629);
  let x_638 : f32 = x_636.x_MainLightCookieTextureFormat;
  u_xlatb38 = !((x_638 == -1.0f));
  let x_640 : bool = u_xlatb38;
  if (x_640) {
    let x_643 : vec3<f32> = vs_TEXCOORD1;
    let x_646 : vec4<f32> = x_636.x_MainLightWorldToLight[1i];
    let x_648 : vec2<f32> = (vec2<f32>(x_643.y, x_643.y) * vec2<f32>(x_646.x, x_646.y));
    let x_649 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
    let x_652 : vec4<f32> = x_636.x_MainLightWorldToLight[0i];
    let x_654 : vec3<f32> = vs_TEXCOORD1;
    let x_657 : vec4<f32> = u_xlat4;
    let x_659 : vec2<f32> = ((vec2<f32>(x_652.x, x_652.y) * vec2<f32>(x_654.x, x_654.x)) + vec2<f32>(x_657.x, x_657.y));
    let x_660 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
    let x_663 : vec4<f32> = x_636.x_MainLightWorldToLight[2i];
    let x_665 : vec3<f32> = vs_TEXCOORD1;
    let x_668 : vec4<f32> = u_xlat4;
    let x_670 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_665.z, x_665.z)) + vec2<f32>(x_668.x, x_668.y));
    let x_671 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat4;
    let x_676 : vec4<f32> = x_636.x_MainLightWorldToLight[3i];
    let x_678 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) + vec2<f32>(x_676.x, x_676.y));
    let x_679 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
    let x_681 : vec4<f32> = u_xlat4;
    let x_685 : vec2<f32> = ((vec2<f32>(x_681.x, x_681.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_686 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
    let x_693 : vec4<f32> = u_xlat4;
    let x_696 : f32 = x_27.x_GlobalMipBias.x;
    let x_697 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_693.x, x_693.y), x_696);
    u_xlat4 = x_697;
    let x_702 : f32 = x_636.x_MainLightCookieTextureFormat;
    let x_704 : f32 = x_636.x_MainLightCookieTextureFormat;
    let x_706 : f32 = x_636.x_MainLightCookieTextureFormat;
    let x_708 : f32 = x_636.x_MainLightCookieTextureFormat;
    let x_709 : vec4<f32> = vec4<f32>(x_702, x_704, x_706, x_708);
    let x_716 : vec4<bool> = (vec4<f32>(x_709.x, x_709.y, x_709.z, x_709.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_716.x, x_716.y);
    let x_719 : bool = u_xlatb6.y;
    if (x_719) {
      let x_724 : f32 = u_xlat4.w;
      x_720 = x_724;
    } else {
      let x_727 : f32 = u_xlat4.x;
      x_720 = x_727;
    }
    let x_728 : f32 = x_720;
    u_xlat38 = x_728;
    let x_730 : bool = u_xlatb6.x;
    if (x_730) {
      let x_734 : vec4<f32> = u_xlat4;
      x_731 = vec3<f32>(x_734.x, x_734.y, x_734.z);
    } else {
      let x_737 : f32 = u_xlat38;
      x_731 = vec3<f32>(x_737, x_737, x_737);
    }
    let x_739 : vec3<f32> = x_731;
    let x_740 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_746 : vec4<f32> = u_xlat4;
  let x_749 : vec4<f32> = x_27.x_MainLightColor;
  let x_751 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : f32 = u_xlat36;
  let x_756 : f32 = x_472.unity_LightData.z;
  u_xlat36 = (x_754 * x_756);
  let x_758 : f32 = u_xlat36;
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec3<f32> = (vec3<f32>(x_758, x_758, x_758) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_768 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat36;
  u_xlat36 = clamp(x_771, 0.0f, 1.0f);
  let x_773 : f32 = u_xlat36;
  let x_775 : vec4<f32> = u_xlat4;
  let x_777 : vec3<f32> = (vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_781 : f32 = x_41.x_SpecColor.w;
  u_xlat36 = ((x_781 * 10.0f) + 1.0f);
  let x_785 : f32 = u_xlat36;
  u_xlat36 = exp2(x_785);
  let x_787 : vec3<f32> = u_xlat3;
  let x_788 : vec3<f32> = u_xlat12;
  let x_792 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat7 = ((x_787 * vec3<f32>(x_788.x, x_788.x, x_788.x)) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec3<f32> = u_xlat7;
  let x_796 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_795, x_796);
  let x_798 : f32 = u_xlat38;
  u_xlat38 = max(x_798, 1.17549435e-38f);
  let x_801 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_801);
  let x_803 : f32 = u_xlat38;
  let x_805 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_803, x_803, x_803) * x_805);
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), x_809);
  let x_811 : f32 = u_xlat38;
  u_xlat38 = clamp(x_811, 0.0f, 1.0f);
  let x_813 : f32 = u_xlat38;
  u_xlat38 = log2(x_813);
  let x_815 : f32 = u_xlat36;
  let x_816 : f32 = u_xlat38;
  u_xlat38 = (x_815 * x_816);
  let x_818 : f32 = u_xlat38;
  u_xlat38 = exp2(x_818);
  let x_820 : f32 = u_xlat38;
  let x_823 : vec4<f32> = x_41.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat4;
  let x_828 : vec3<f32> = u_xlat7;
  let x_829 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * x_828);
  let x_830 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_834 : vec4<f32> = u_xlat1;
  let x_837 : vec4<f32> = u_xlat4;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834.y, x_834.z, x_834.w)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_845 : f32 = x_472.unity_LightData.y;
  u_xlat38 = min(x_843, x_845);
  let x_848 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_848));
  let x_852 : f32 = u_xlat1.x;
  let x_855 : f32 = x_284.x_AdditionalShadowFadeParams.x;
  let x_858 : f32 = x_284.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_852 * x_855) + x_858);
  let x_862 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_862, 0.0f, 1.0f);
  let x_866 : f32 = x_636.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_868 : f32 = x_636.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_870 : f32 = x_636.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_872 : f32 = x_636.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_873 : vec4<f32> = vec4<f32>(x_866, x_868, x_870, x_872);
  let x_879 : vec4<bool> = (vec4<f32>(x_873.x, x_873.y, x_873.z, x_873.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_879.x, x_879.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_891 : u32 = u_xlatu_loop_1;
    let x_892 : u32 = u_xlatu38;
    if ((x_891 < x_892)) {
    } else {
      break;
    }
    let x_895 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_895 >> 2u);
    let x_898 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_898 & 3u));
    let x_903 : u32 = u_xlatu40;
    let x_906 : vec4<f32> = x_472.unity_LightIndices[bitcast<i32>(x_903)];
    let x_916 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_921 : vec4<u32> = indexable[x_916];
    u_xlat40 = dot(x_906, bitcast<vec4<f32>>(x_921));
    let x_925 : f32 = u_xlat40;
    u_xlati40 = i32(x_925);
    let x_928 : vec3<f32> = vs_TEXCOORD1;
    let x_939 : i32 = u_xlati40;
    let x_941 : vec4<f32> = x_938.x_AdditionalLightsPosition[x_939];
    let x_944 : i32 = u_xlati40;
    let x_946 : vec4<f32> = x_938.x_AdditionalLightsPosition[x_944];
    u_xlat8 = ((-(x_928) * vec3<f32>(x_941.w, x_941.w, x_941.w)) + vec3<f32>(x_946.x, x_946.y, x_946.z));
    let x_950 : vec3<f32> = u_xlat8;
    let x_951 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_950, x_951);
    let x_953 : f32 = u_xlat41;
    u_xlat41 = max(x_953, 0.00006103515625f);
    let x_956 : f32 = u_xlat41;
    u_xlat30 = inverseSqrt(x_956);
    let x_958 : f32 = u_xlat30;
    let x_960 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_958, x_958, x_958) * x_960);
    let x_962 : f32 = u_xlat41;
    u_xlat30 = (1.0f / x_962);
    let x_964 : f32 = u_xlat41;
    let x_965 : i32 = u_xlati40;
    let x_967 : f32 = x_938.x_AdditionalLightsAttenuation[x_965].x;
    u_xlat41 = (x_964 * x_967);
    let x_969 : f32 = u_xlat41;
    let x_971 : f32 = u_xlat41;
    u_xlat41 = ((-(x_969) * x_971) + 1.0f);
    let x_974 : f32 = u_xlat41;
    u_xlat41 = max(x_974, 0.0f);
    let x_976 : f32 = u_xlat41;
    let x_977 : f32 = u_xlat41;
    u_xlat41 = (x_976 * x_977);
    let x_979 : f32 = u_xlat41;
    let x_980 : f32 = u_xlat30;
    u_xlat41 = (x_979 * x_980);
    let x_982 : i32 = u_xlati40;
    let x_984 : vec4<f32> = x_938.x_AdditionalLightsSpotDir[x_982];
    let x_986 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), x_986);
    let x_988 : f32 = u_xlat30;
    let x_989 : i32 = u_xlati40;
    let x_991 : f32 = x_938.x_AdditionalLightsAttenuation[x_989].z;
    let x_993 : i32 = u_xlati40;
    let x_995 : f32 = x_938.x_AdditionalLightsAttenuation[x_993].w;
    u_xlat30 = ((x_988 * x_991) + x_995);
    let x_997 : f32 = u_xlat30;
    u_xlat30 = clamp(x_997, 0.0f, 1.0f);
    let x_999 : f32 = u_xlat30;
    let x_1000 : f32 = u_xlat30;
    u_xlat30 = (x_999 * x_1000);
    let x_1002 : f32 = u_xlat41;
    let x_1003 : f32 = u_xlat30;
    u_xlat41 = (x_1002 * x_1003);
    let x_1007 : i32 = u_xlati40;
    let x_1009 : f32 = x_284.x_AdditionalShadowParams[x_1007].w;
    u_xlati30 = i32(x_1009);
    let x_1012 : i32 = u_xlati30;
    u_xlatb42 = (x_1012 >= 0i);
    let x_1014 : bool = u_xlatb42;
    if (x_1014) {
      let x_1018 : i32 = u_xlati40;
      let x_1020 : f32 = x_284.x_AdditionalShadowParams[x_1018].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1020, x_1020, x_1020, x_1020))));
      let x_1024 : bool = u_xlatb42;
      if (x_1024) {
        let x_1028 : vec3<f32> = u_xlat8;
        let x_1031 : vec3<f32> = u_xlat8;
        let x_1034 : vec4<bool> = (abs(vec4<f32>(x_1028.z, x_1028.z, x_1028.y, x_1028.z)) >= abs(vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.x)));
        let x_1036 : vec3<bool> = vec3<bool>(x_1034.x, x_1034.y, x_1034.z);
        let x_1037 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1040 : bool = u_xlatb9.y;
        let x_1042 : bool = u_xlatb9.x;
        u_xlatb42 = (x_1040 & x_1042);
        let x_1044 : vec3<f32> = u_xlat8;
        let x_1047 : vec4<bool> = (-(vec4<f32>(x_1044.z, x_1044.y, x_1044.z, x_1044.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1048 : vec3<bool> = vec3<bool>(x_1047.x, x_1047.y, x_1047.w);
        let x_1049 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_1048.x, x_1048.y, x_1049.z, x_1048.z);
        let x_1053 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_1053);
        let x_1058 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_1058);
        let x_1063 : bool = u_xlatb9.w;
        u_xlat43 = select(0.0f, 1.0f, x_1063);
        let x_1066 : bool = u_xlatb9.z;
        if (x_1066) {
          let x_1071 : f32 = u_xlat9.y;
          x_1067 = x_1071;
        } else {
          let x_1073 : f32 = u_xlat43;
          x_1067 = x_1073;
        }
        let x_1074 : f32 = x_1067;
        u_xlat43 = x_1074;
        let x_1076 : bool = u_xlatb42;
        if (x_1076) {
          let x_1081 : f32 = u_xlat9.x;
          x_1077 = x_1081;
        } else {
          let x_1083 : f32 = u_xlat43;
          x_1077 = x_1083;
        }
        let x_1084 : f32 = x_1077;
        u_xlat42 = x_1084;
        let x_1085 : i32 = u_xlati40;
        let x_1087 : f32 = x_284.x_AdditionalShadowParams[x_1085].w;
        u_xlat43 = trunc(x_1087);
        let x_1089 : f32 = u_xlat42;
        let x_1090 : f32 = u_xlat43;
        u_xlat42 = (x_1089 + x_1090);
        let x_1092 : f32 = u_xlat42;
        u_xlati30 = i32(x_1092);
      }
      let x_1094 : i32 = u_xlati30;
      u_xlati30 = (x_1094 << bitcast<u32>(2i));
      let x_1096 : vec3<f32> = vs_TEXCOORD1;
      let x_1099 : i32 = u_xlati30;
      let x_1102 : i32 = u_xlati30;
      let x_1106 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1099 + 1i) / 4i)][((x_1102 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_1096.y, x_1096.y, x_1096.y, x_1096.y) * x_1106);
      let x_1108 : i32 = u_xlati30;
      let x_1110 : i32 = u_xlati30;
      let x_1113 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[(x_1108 / 4i)][(x_1110 % 4i)];
      let x_1114 : vec3<f32> = vs_TEXCOORD1;
      let x_1117 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1113 * vec4<f32>(x_1114.x, x_1114.x, x_1114.x, x_1114.x)) + x_1117);
      let x_1119 : i32 = u_xlati30;
      let x_1122 : i32 = u_xlati30;
      let x_1126 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1119 + 2i) / 4i)][((x_1122 + 2i) % 4i)];
      let x_1127 : vec3<f32> = vs_TEXCOORD1;
      let x_1130 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1126 * vec4<f32>(x_1127.z, x_1127.z, x_1127.z, x_1127.z)) + x_1130);
      let x_1132 : vec4<f32> = u_xlat9;
      let x_1133 : i32 = u_xlati30;
      let x_1136 : i32 = u_xlati30;
      let x_1140 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1133 + 3i) / 4i)][((x_1136 + 3i) % 4i)];
      u_xlat9 = (x_1132 + x_1140);
      let x_1142 : vec4<f32> = u_xlat9;
      let x_1144 : vec4<f32> = u_xlat9;
      let x_1146 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) / vec3<f32>(x_1144.w, x_1144.w, x_1144.w));
      let x_1147 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
      let x_1150 : vec4<f32> = u_xlat9;
      let x_1151 : vec2<f32> = vec2<f32>(x_1150.x, x_1150.y);
      let x_1153 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
      let x_1161 : vec3<f32> = txVec1;
      let x_1163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
      u_xlat30 = x_1163;
      let x_1164 : i32 = u_xlati40;
      let x_1166 : f32 = x_284.x_AdditionalShadowParams[x_1164].x;
      u_xlat42 = (1.0f + -(x_1166));
      let x_1169 : f32 = u_xlat30;
      let x_1170 : i32 = u_xlati40;
      let x_1172 : f32 = x_284.x_AdditionalShadowParams[x_1170].x;
      let x_1174 : f32 = u_xlat42;
      u_xlat30 = ((x_1169 * x_1172) + x_1174);
      let x_1177 : f32 = u_xlat9.z;
      u_xlatb42 = (0.0f >= x_1177);
      let x_1181 : f32 = u_xlat9.z;
      u_xlatb43 = (x_1181 >= 1.0f);
      let x_1183 : bool = u_xlatb42;
      let x_1184 : bool = u_xlatb43;
      u_xlatb42 = (x_1183 | x_1184);
      let x_1186 : bool = u_xlatb42;
      let x_1187 : f32 = u_xlat30;
      u_xlat30 = select(x_1187, 1.0f, x_1186);
    } else {
      u_xlat30 = 1.0f;
    }
    let x_1190 : f32 = u_xlat30;
    u_xlat42 = (-(x_1190) + 1.0f);
    let x_1194 : f32 = u_xlat1.x;
    let x_1195 : f32 = u_xlat42;
    let x_1197 : f32 = u_xlat30;
    u_xlat30 = ((x_1194 * x_1195) + x_1197);
    let x_1200 : i32 = u_xlati40;
    u_xlati42 = (1i << bitcast<u32>((x_1200 & 31i)));
    let x_1204 : i32 = u_xlati42;
    let x_1207 : f32 = x_636.x_AdditionalLightsCookieEnableBits;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1204) & bitcast<u32>(x_1207)));
    let x_1211 : i32 = u_xlati42;
    if ((x_1211 != 0i)) {
      let x_1215 : i32 = u_xlati40;
      let x_1217 : f32 = x_636.x_AdditionalLightsLightTypes[x_1215].el;
      u_xlati42 = i32(x_1217);
      let x_1220 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1220 != 0i));
      let x_1224 : i32 = u_xlati40;
      u_xlati44 = (x_1224 << bitcast<u32>(2i));
      let x_1226 : i32 = u_xlati43;
      if ((x_1226 != 0i)) {
        let x_1230 : vec3<f32> = vs_TEXCOORD1;
        let x_1232 : i32 = u_xlati44;
        let x_1235 : i32 = u_xlati44;
        let x_1239 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1232 + 1i) / 4i)][((x_1235 + 1i) % 4i)];
        let x_1241 : vec3<f32> = (vec3<f32>(x_1230.y, x_1230.y, x_1230.y) * vec3<f32>(x_1239.x, x_1239.y, x_1239.w));
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : i32 = u_xlati44;
        let x_1246 : i32 = u_xlati44;
        let x_1249 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[(x_1244 / 4i)][(x_1246 % 4i)];
        let x_1251 : vec3<f32> = vs_TEXCOORD1;
        let x_1254 : vec4<f32> = u_xlat9;
        let x_1256 : vec3<f32> = ((vec3<f32>(x_1249.x, x_1249.y, x_1249.w) * vec3<f32>(x_1251.x, x_1251.x, x_1251.x)) + vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1259 : i32 = u_xlati44;
        let x_1262 : i32 = u_xlati44;
        let x_1266 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1259 + 2i) / 4i)][((x_1262 + 2i) % 4i)];
        let x_1268 : vec3<f32> = vs_TEXCOORD1;
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1273 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.y, x_1266.w) * vec3<f32>(x_1268.z, x_1268.z, x_1268.z)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1278 : i32 = u_xlati44;
        let x_1281 : i32 = u_xlati44;
        let x_1285 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1278 + 3i) / 4i)][((x_1281 + 3i) % 4i)];
        let x_1287 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) + vec3<f32>(x_1285.x, x_1285.y, x_1285.w));
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat9;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1294 : vec2<f32> = (vec2<f32>(x_1290.x, x_1290.y) / vec2<f32>(x_1292.z, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1300 : vec2<f32> = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1301 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        let x_1303 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = clamp(vec2<f32>(x_1303.x, x_1303.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : i32 = u_xlati40;
        let x_1312 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1310];
        let x_1314 : vec4<f32> = u_xlat9;
        let x_1317 : i32 = u_xlati40;
        let x_1319 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1317];
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1314.x, x_1314.y)) + vec2<f32>(x_1319.z, x_1319.w));
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
      } else {
        let x_1325 : i32 = u_xlati42;
        u_xlatb42 = (x_1325 == 1i);
        let x_1327 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1327);
        let x_1329 : i32 = u_xlati42;
        if ((x_1329 != 0i)) {
          let x_1335 : vec3<f32> = vs_TEXCOORD1;
          let x_1337 : i32 = u_xlati44;
          let x_1340 : i32 = u_xlati44;
          let x_1344 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1337 + 1i) / 4i)][((x_1340 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1335.y, x_1335.y) * vec2<f32>(x_1344.x, x_1344.y));
          let x_1347 : i32 = u_xlati44;
          let x_1349 : i32 = u_xlati44;
          let x_1352 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[(x_1347 / 4i)][(x_1349 % 4i)];
          let x_1354 : vec3<f32> = vs_TEXCOORD1;
          let x_1357 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1354.x, x_1354.x)) + x_1357);
          let x_1359 : i32 = u_xlati44;
          let x_1362 : i32 = u_xlati44;
          let x_1366 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1359 + 2i) / 4i)][((x_1362 + 2i) % 4i)];
          let x_1368 : vec3<f32> = vs_TEXCOORD1;
          let x_1371 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1366.x, x_1366.y) * vec2<f32>(x_1368.z, x_1368.z)) + x_1371);
          let x_1373 : vec2<f32> = u_xlat33;
          let x_1374 : i32 = u_xlati44;
          let x_1377 : i32 = u_xlati44;
          let x_1381 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1374 + 3i) / 4i)][((x_1377 + 3i) % 4i)];
          u_xlat33 = (x_1373 + vec2<f32>(x_1381.x, x_1381.y));
          let x_1384 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1384 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1387 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1387);
          let x_1389 : i32 = u_xlati40;
          let x_1391 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1389];
          let x_1393 : vec2<f32> = u_xlat33;
          let x_1395 : i32 = u_xlati40;
          let x_1397 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1395];
          let x_1399 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * x_1393) + vec2<f32>(x_1397.z, x_1397.w));
          let x_1400 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        } else {
          let x_1404 : vec3<f32> = vs_TEXCOORD1;
          let x_1406 : i32 = u_xlati44;
          let x_1409 : i32 = u_xlati44;
          let x_1413 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1406 + 1i) / 4i)][((x_1409 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1404.y, x_1404.y, x_1404.y, x_1404.y) * x_1413);
          let x_1415 : i32 = u_xlati44;
          let x_1417 : i32 = u_xlati44;
          let x_1420 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[(x_1415 / 4i)][(x_1417 % 4i)];
          let x_1421 : vec3<f32> = vs_TEXCOORD1;
          let x_1424 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1420 * vec4<f32>(x_1421.x, x_1421.x, x_1421.x, x_1421.x)) + x_1424);
          let x_1426 : i32 = u_xlati44;
          let x_1429 : i32 = u_xlati44;
          let x_1433 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1426 + 2i) / 4i)][((x_1429 + 2i) % 4i)];
          let x_1434 : vec3<f32> = vs_TEXCOORD1;
          let x_1437 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1433 * vec4<f32>(x_1434.z, x_1434.z, x_1434.z, x_1434.z)) + x_1437);
          let x_1439 : vec4<f32> = u_xlat10;
          let x_1440 : i32 = u_xlati44;
          let x_1443 : i32 = u_xlati44;
          let x_1447 : vec4<f32> = x_636.x_AdditionalLightsWorldToLights[((x_1440 + 3i) / 4i)][((x_1443 + 3i) % 4i)];
          u_xlat10 = (x_1439 + x_1447);
          let x_1449 : vec4<f32> = u_xlat10;
          let x_1451 : vec4<f32> = u_xlat10;
          let x_1453 : vec3<f32> = (vec3<f32>(x_1449.x, x_1449.y, x_1449.z) / vec3<f32>(x_1451.w, x_1451.w, x_1451.w));
          let x_1454 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
          let x_1456 : vec4<f32> = u_xlat10;
          let x_1458 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1456.x, x_1456.y, x_1456.z), vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
          let x_1461 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1461);
          let x_1463 : f32 = u_xlat42;
          let x_1465 : vec4<f32> = u_xlat10;
          let x_1467 : vec3<f32> = (vec3<f32>(x_1463, x_1463, x_1463) * vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
          let x_1468 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
          let x_1470 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1470.x, x_1470.y, x_1470.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1475 : f32 = u_xlat42;
          u_xlat42 = max(x_1475, 0.00000099999999747524f);
          let x_1478 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1478);
          let x_1481 : f32 = u_xlat42;
          let x_1483 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1481, x_1481, x_1481) * vec3<f32>(x_1483.z, x_1483.x, x_1483.y));
          let x_1487 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1487);
          let x_1491 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1491, 0.0f, 1.0f);
          let x_1495 : vec3<f32> = u_xlat11;
          let x_1497 : vec4<bool> = (vec4<f32>(x_1495.y, x_1495.z, x_1495.y, x_1495.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1497.x, x_1497.y);
          let x_1500 : bool = u_xlatb33.x;
          if (x_1500) {
            let x_1505 : f32 = u_xlat11.x;
            x_1501 = x_1505;
          } else {
            let x_1508 : f32 = u_xlat11.x;
            x_1501 = -(x_1508);
          }
          let x_1510 : f32 = x_1501;
          u_xlat33.x = x_1510;
          let x_1513 : bool = u_xlatb33.y;
          if (x_1513) {
            let x_1518 : f32 = u_xlat11.x;
            x_1514 = x_1518;
          } else {
            let x_1521 : f32 = u_xlat11.x;
            x_1514 = -(x_1521);
          }
          let x_1523 : f32 = x_1514;
          u_xlat33.y = x_1523;
          let x_1525 : vec4<f32> = u_xlat10;
          let x_1527 : f32 = u_xlat42;
          let x_1530 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1527, x_1527)) + x_1530);
          let x_1532 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1532 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1535 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1535, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1539 : i32 = u_xlati40;
          let x_1541 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1539];
          let x_1543 : vec2<f32> = u_xlat33;
          let x_1545 : i32 = u_xlati40;
          let x_1547 : vec4<f32> = x_636.x_AdditionalLightsCookieAtlasUVRects[x_1545];
          let x_1549 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * x_1543) + vec2<f32>(x_1547.z, x_1547.w));
          let x_1550 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
        }
      }
      let x_1557 : vec4<f32> = u_xlat9;
      let x_1559 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1557.x, x_1557.y), 0.0f);
      u_xlat9 = x_1559;
      let x_1561 : bool = u_xlatb6.y;
      if (x_1561) {
        let x_1566 : f32 = u_xlat9.w;
        x_1562 = x_1566;
      } else {
        let x_1569 : f32 = u_xlat9.x;
        x_1562 = x_1569;
      }
      let x_1570 : f32 = x_1562;
      u_xlat42 = x_1570;
      let x_1572 : bool = u_xlatb6.x;
      if (x_1572) {
        let x_1576 : vec4<f32> = u_xlat9;
        x_1573 = vec3<f32>(x_1576.x, x_1576.y, x_1576.z);
      } else {
        let x_1579 : f32 = u_xlat42;
        x_1573 = vec3<f32>(x_1579, x_1579, x_1579);
      }
      let x_1581 : vec3<f32> = x_1573;
      let x_1582 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1588 : vec4<f32> = u_xlat9;
    let x_1590 : i32 = u_xlati40;
    let x_1592 : vec4<f32> = x_938.x_AdditionalLightsColor[x_1590];
    let x_1594 : vec3<f32> = (vec3<f32>(x_1588.x, x_1588.y, x_1588.z) * vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
    let x_1595 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
    let x_1597 : f32 = u_xlat41;
    let x_1598 : f32 = u_xlat30;
    u_xlat40 = (x_1597 * x_1598);
    let x_1600 : f32 = u_xlat40;
    let x_1602 : vec4<f32> = u_xlat9;
    let x_1604 : vec3<f32> = (vec3<f32>(x_1600, x_1600, x_1600) * vec3<f32>(x_1602.x, x_1602.y, x_1602.z));
    let x_1605 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1605.w);
    let x_1607 : vec4<f32> = u_xlat2;
    let x_1609 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1607.x, x_1607.y, x_1607.z), x_1609);
    let x_1611 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1611, 0.0f, 1.0f);
    let x_1613 : f32 = u_xlat40;
    let x_1615 : vec4<f32> = u_xlat9;
    let x_1617 : vec3<f32> = (vec3<f32>(x_1613, x_1613, x_1613) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
    let x_1620 : vec3<f32> = u_xlat3;
    let x_1621 : vec3<f32> = u_xlat12;
    let x_1624 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1620 * vec3<f32>(x_1621.x, x_1621.x, x_1621.x)) + x_1624);
    let x_1626 : vec3<f32> = u_xlat8;
    let x_1627 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1626, x_1627);
    let x_1629 : f32 = u_xlat40;
    u_xlat40 = max(x_1629, 1.17549435e-38f);
    let x_1631 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1631);
    let x_1633 : f32 = u_xlat40;
    let x_1635 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1633, x_1633, x_1633) * x_1635);
    let x_1637 : vec4<f32> = u_xlat2;
    let x_1639 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1637.x, x_1637.y, x_1637.z), x_1639);
    let x_1641 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1641, 0.0f, 1.0f);
    let x_1643 : f32 = u_xlat40;
    u_xlat40 = log2(x_1643);
    let x_1645 : f32 = u_xlat36;
    let x_1646 : f32 = u_xlat40;
    u_xlat40 = (x_1645 * x_1646);
    let x_1648 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1648);
    let x_1650 : f32 = u_xlat40;
    let x_1653 : vec4<f32> = x_41.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1650, x_1650, x_1650) * vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec3<f32> = u_xlat8;
    let x_1657 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1656 * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
    let x_1660 : vec4<f32> = u_xlat10;
    let x_1662 : vec4<f32> = u_xlat1;
    let x_1665 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1660.x, x_1660.y, x_1660.z) * vec3<f32>(x_1662.y, x_1662.z, x_1662.w)) + x_1665);
    let x_1667 : vec3<f32> = u_xlat7;
    let x_1668 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1667 + x_1668);

    continuing {
      let x_1670 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1670 + bitcast<u32>(1i));
    }
  }
  let x_1672 : vec4<f32> = u_xlat5;
  let x_1674 : vec4<f32> = u_xlat1;
  let x_1677 : vec4<f32> = u_xlat4;
  let x_1679 : vec3<f32> = ((vec3<f32>(x_1672.x, x_1672.y, x_1672.z) * vec3<f32>(x_1674.y, x_1674.z, x_1674.w)) + vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
  let x_1680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1679.x, x_1679.y, x_1679.z, x_1680.w);
  let x_1684 : vec3<f32> = u_xlat7;
  let x_1685 : vec4<f32> = u_xlat1;
  let x_1687 : vec3<f32> = (x_1684 + vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
  let x_1688 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
  let x_1691 : f32 = x_41.x_Surface;
  u_xlatb12 = (x_1691 == 1.0f);
  let x_1693 : bool = u_xlatb12;
  let x_1694 : bool = u_xlatb24;
  u_xlatb12 = (x_1693 | x_1694);
  let x_1696 : bool = u_xlatb12;
  if (x_1696) {
    let x_1701 : f32 = u_xlat0.x;
    x_1697 = x_1701;
  } else {
    x_1697 = 1.0f;
  }
  let x_1703 : f32 = x_1697;
  SV_Target0.w = x_1703;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


