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

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlatb24 : bool;

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

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu72 : u32;

var<private> u_xlati72 : i32;

@group(1) @binding(2) var<uniform> x_476 : UnityPerDraw;

var<private> u_xlatb72 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat74 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb74 : bool;

@group(1) @binding(5) var<uniform> x_1859 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu74 : u32;

var<private> u_xlatu76 : u32;

var<private> u_xlati77 : i32;

var<private> u_xlat76 : f32;

var<private> u_xlati76 : i32;

@group(1) @binding(1) var<uniform> x_2169 : AdditionalLights;

var<private> u_xlat77 : f32;

var<private> u_xlati54 : i32;

var<private> u_xlatb78 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat79 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb54 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlati78 : i32;

var<private> u_xlati79 : i32;

var<private> u_xlati80 : i32;

var<private> u_xlatb57 : vec2<bool>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatb76 : bool;

fn main_1() {
  var x_60 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
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
  var x_1942 : f32;
  var x_1953 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2316 : f32;
  var x_2326 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3595 : f32;
  var x_3917 : f32;
  var x_3930 : f32;
  var x_3978 : f32;
  var x_3989 : vec3<f32>;
  var x_4137 : f32;
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
  u_xlat24.x = ((x_73 * x_75) + -(x_78));
  let x_84 : f32 = u_xlat1.x;
  u_xlat48 = dpdxCoarse(x_84);
  let x_88 : f32 = u_xlat1.x;
  u_xlat72 = dpdyCoarse(x_88);
  let x_90 : f32 = u_xlat72;
  let x_92 : f32 = u_xlat48;
  u_xlat48 = (abs(x_90) + abs(x_92));
  let x_95 : f32 = u_xlat48;
  u_xlat48 = max(x_95, 0.00009999999747378752f);
  let x_99 : f32 = u_xlat24.x;
  let x_100 : f32 = u_xlat48;
  u_xlat24.x = (x_99 / x_100);
  let x_104 : f32 = u_xlat24.x;
  u_xlat24.x = (x_104 + 0.5f);
  let x_109 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_109, 0.0f, 1.0f);
  let x_115 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb48 = !((x_115 == 0.0f));
  let x_117 : bool = u_xlatb48;
  if (x_117) {
    let x_122 : f32 = u_xlat24.x;
    x_118 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_118 = x_125;
  }
  let x_126 : f32 = x_118;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat24.x = (x_129 + -0.00009999999747378752f);
  let x_135 : f32 = u_xlat24.x;
  u_xlatb24 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb24;
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
  let x_173 : vec3<f32> = u_xlat24;
  u_xlat24 = vec3<f32>(x_172.x, x_173.y, x_172.y);
  let x_175 : vec3<f32> = u_xlat24;
  let x_177 : vec3<f32> = u_xlat24;
  u_xlat1.x = dot(vec2<f32>(x_175.x, x_175.z), vec2<f32>(x_177.x, x_177.z));
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_182, 1.0f);
  let x_186 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_186) + 1.0f);
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_195, 0.0000000000000001f);
  let x_199 : vec3<f32> = u_xlat24;
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec3<f32> = (vec3<f32>(x_199.z, x_199.z, x_199.z) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec3<f32> = u_xlat24;
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
  u_xlat24.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat24;
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
  u_xlat24.x = dot(x_259, x_260);
  let x_264 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_264, 0.00006103515625f);
  let x_269 : f32 = u_xlat24.x;
  u_xlat24.x = inverseSqrt(x_269);
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
  let x_318 : vec3<f32> = (x_313 + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_333 : vec4<f32> = u_xlat6;
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_284.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_348 < x_351);
  let x_354 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_370);
  let x_375 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_375);
  let x_379 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_379);
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(x_384.y, x_384.z, x_384.w));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat4;
  let x_392 : vec3<f32> = max(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_392.x, x_392.y, x_392.z);
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat72 = dot(x_395, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_400 : f32 = u_xlat72;
  u_xlat72 = (-(x_400) + 4.0f);
  let x_405 : f32 = u_xlat72;
  u_xlatu72 = u32(x_405);
  let x_409 : u32 = u_xlatu72;
  u_xlati72 = (bitcast<i32>(x_409) << bitcast<u32>(2i));
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_414 : i32 = u_xlati72;
  let x_417 : i32 = u_xlati72;
  let x_421 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_414 + 1i) / 4i)][((x_417 + 1i) % 4i)];
  let x_423 : vec3<f32> = (vec3<f32>(x_412.y, x_412.y, x_412.y) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : i32 = u_xlati72;
  let x_428 : i32 = u_xlati72;
  let x_431 : vec4<f32> = x_284.x_MainLightWorldToShadow[(x_426 / 4i)][(x_428 % 4i)];
  let x_433 : vec3<f32> = vs_TEXCOORD1;
  let x_436 : vec4<f32> = u_xlat4;
  let x_438 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_433.x, x_433.x, x_433.x)) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : i32 = u_xlati72;
  let x_444 : i32 = u_xlati72;
  let x_448 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_441 + 2i) / 4i)][((x_444 + 2i) % 4i)];
  let x_450 : vec3<f32> = vs_TEXCOORD1;
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : vec3<f32> = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450.z, x_450.z, x_450.z)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : i32 = u_xlati72;
  let x_463 : i32 = u_xlati72;
  let x_467 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_460 + 3i) / 4i)][((x_463 + 3i) % 4i)];
  let x_469 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  u_xlat2.w = 1.0f;
  let x_479 : vec4<f32> = x_476.unity_SHAr;
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_479, x_480);
  let x_485 : vec4<f32> = x_476.unity_SHAg;
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_485, x_486);
  let x_491 : vec4<f32> = x_476.unity_SHAb;
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_491, x_492);
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_495.y, x_495.z, x_495.z, x_495.x) * vec4<f32>(x_497.x, x_497.y, x_497.z, x_497.z));
  let x_502 : vec4<f32> = x_476.unity_SHBr;
  let x_503 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_502, x_503);
  let x_508 : vec4<f32> = x_476.unity_SHBg;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_508, x_509);
  let x_514 : vec4<f32> = x_476.unity_SHBb;
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_514, x_515);
  let x_519 : f32 = u_xlat2.y;
  let x_521 : f32 = u_xlat2.y;
  u_xlat72 = (x_519 * x_521);
  let x_524 : f32 = u_xlat2.x;
  let x_526 : f32 = u_xlat2.x;
  let x_528 : f32 = u_xlat72;
  u_xlat72 = ((x_524 * x_526) + -(x_528));
  let x_533 : vec4<f32> = x_476.unity_SHC;
  let x_535 : f32 = u_xlat72;
  let x_538 : vec4<f32> = u_xlat7;
  let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_535, x_535, x_535)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat5;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec3<f32> = max(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_558 : f32 = x_284.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_558);
  let x_560 : bool = u_xlatb72;
  if (x_560) {
    let x_564 : f32 = x_284.x_MainLightShadowParams.y;
    u_xlatb72 = (x_564 == 1.0f);
    let x_566 : bool = u_xlatb72;
    if (x_566) {
      let x_569 : vec4<f32> = u_xlat4;
      let x_573 : vec4<f32> = x_284.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y) + x_573);
      let x_577 : vec4<f32> = u_xlat6;
      let x_578 : vec2<f32> = vec2<f32>(x_577.x, x_577.y);
      let x_580 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_578.x, x_578.y, x_580);
      let x_592 : vec3<f32> = txVec0;
      let x_594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_592.xy, x_592.z);
      u_xlat7.x = x_594;
      let x_597 : vec4<f32> = u_xlat6;
      let x_598 : vec2<f32> = vec2<f32>(x_597.z, x_597.w);
      let x_600 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_598.x, x_598.y, x_600);
      let x_607 : vec3<f32> = txVec1;
      let x_609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_607.xy, x_607.z);
      u_xlat7.y = x_609;
      let x_611 : vec4<f32> = u_xlat4;
      let x_615 : vec4<f32> = x_284.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) + x_615);
      let x_618 : vec4<f32> = u_xlat6;
      let x_619 : vec2<f32> = vec2<f32>(x_618.x, x_618.y);
      let x_621 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec2;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_628.xy, x_628.z);
      u_xlat7.z = x_630;
      let x_633 : vec4<f32> = u_xlat6;
      let x_634 : vec2<f32> = vec2<f32>(x_633.z, x_633.w);
      let x_636 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_634.x, x_634.y, x_636);
      let x_643 : vec3<f32> = txVec3;
      let x_645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_643.xy, x_643.z);
      u_xlat7.w = x_645;
      let x_647 : vec4<f32> = u_xlat7;
      u_xlat72 = dot(x_647, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_654 : f32 = x_284.x_MainLightShadowParams.y;
      u_xlatb1 = (x_654 == 2.0f);
      let x_656 : bool = u_xlatb1;
      if (x_656) {
        let x_659 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_667 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_663.z, x_663.w)) + vec2<f32>(0.5f, 0.5f));
        let x_668 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat6;
        let x_672 : vec2<f32> = floor(vec2<f32>(x_670.x, x_670.y));
        let x_673 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_677 : vec4<f32> = u_xlat4;
        let x_680 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_683 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_680.z, x_680.w)) + -(vec2<f32>(x_683.x, x_683.y)));
        let x_687 : vec2<f32> = u_xlat54;
        u_xlat7 = (vec4<f32>(x_687.x, x_687.x, x_687.y, x_687.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_692 : vec4<f32> = u_xlat7;
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_692.x, x_692.x, x_692.z, x_692.z) * vec4<f32>(x_694.x, x_694.x, x_694.z, x_694.z));
        let x_697 : vec4<f32> = u_xlat8;
        let x_701 : vec2<f32> = (vec2<f32>(x_697.y, x_697.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_701.x, x_702.y, x_701.y, x_702.w);
        let x_704 : vec4<f32> = u_xlat8;
        let x_707 : vec2<f32> = u_xlat54;
        let x_709 : vec2<f32> = ((vec2<f32>(x_704.x, x_704.z) * vec2<f32>(0.5f, 0.5f)) + -(x_707));
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_710.z, x_710.w);
        let x_713 : vec2<f32> = u_xlat54;
        u_xlat56 = (-(x_713) + vec2<f32>(1.0f, 1.0f));
        let x_718 : vec2<f32> = u_xlat54;
        let x_720 : vec2<f32> = min(x_718, vec2<f32>(0.0f, 0.0f));
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec2<f32> = u_xlat56;
        let x_730 : vec2<f32> = ((-(vec2<f32>(x_723.x, x_723.y)) * vec2<f32>(x_726.x, x_726.y)) + x_729);
        let x_731 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec2<f32> = u_xlat54;
        u_xlat54 = max(x_733, vec2<f32>(0.0f, 0.0f));
        let x_735 : vec2<f32> = u_xlat54;
        let x_737 : vec2<f32> = u_xlat54;
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat54 = ((-(x_735) * x_737) + vec2<f32>(x_739.y, x_739.w));
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec2<f32> = (vec2<f32>(x_742.x, x_742.y) + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_747 + vec2<f32>(1.0f, 1.0f));
        let x_750 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = (vec2<f32>(x_750.x, x_750.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_755 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec2<f32> = u_xlat56;
        let x_758 : vec2<f32> = (x_757 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_759.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_767 : vec2<f32> = u_xlat54;
        let x_768 : vec2<f32> = (x_767 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat54 = (vec2<f32>(x_771.y, x_771.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_775 : f32 = u_xlat9.x;
        u_xlat10.z = x_775;
        let x_778 : f32 = u_xlat54.x;
        u_xlat10.w = x_778;
        let x_781 : f32 = u_xlat11.x;
        u_xlat8.z = x_781;
        let x_784 : f32 = u_xlat7.x;
        u_xlat8.w = x_784;
        let x_787 : vec4<f32> = u_xlat8;
        let x_789 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_787.z, x_787.w, x_787.x, x_787.z) + vec4<f32>(x_789.z, x_789.w, x_789.x, x_789.z));
        let x_793 : f32 = u_xlat10.y;
        u_xlat9.z = x_793;
        let x_796 : f32 = u_xlat54.y;
        u_xlat9.w = x_796;
        let x_799 : f32 = u_xlat8.y;
        u_xlat11.z = x_799;
        let x_802 : f32 = u_xlat7.z;
        u_xlat11.w = x_802;
        let x_804 : vec4<f32> = u_xlat9;
        let x_806 : vec4<f32> = u_xlat11;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) + vec3<f32>(x_806.z, x_806.y, x_806.w));
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec4<f32> = u_xlat12;
        let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.z, x_811.w) / vec3<f32>(x_813.z, x_813.w, x_813.y));
        let x_816 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat8;
        let x_824 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat11;
        let x_829 : vec4<f32> = u_xlat7;
        let x_831 : vec3<f32> = (vec3<f32>(x_827.z, x_827.y, x_827.w) / vec3<f32>(x_829.x, x_829.y, x_829.z));
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat9;
        let x_836 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_837 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat8;
        let x_842 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_844 : vec3<f32> = (vec3<f32>(x_839.y, x_839.x, x_839.z) * vec3<f32>(x_842.x, x_842.x, x_842.x));
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat9;
        let x_850 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_852 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_850.y, x_850.y, x_850.y));
        let x_853 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_856 : f32 = u_xlat9.x;
        u_xlat8.w = x_856;
        let x_858 : vec4<f32> = u_xlat6;
        let x_861 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_864 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_858.x, x_858.y, x_858.x, x_858.y) * vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y)) + vec4<f32>(x_864.y, x_864.w, x_864.x, x_864.w));
        let x_867 : vec4<f32> = u_xlat6;
        let x_870 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_870.x, x_870.y)) + vec2<f32>(x_873.z, x_873.w));
        let x_877 : f32 = u_xlat8.y;
        u_xlat9.w = x_877;
        let x_879 : vec4<f32> = u_xlat9;
        let x_880 : vec2<f32> = vec2<f32>(x_879.y, x_879.z);
        let x_881 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_881.x, x_880.x, x_881.z, x_880.y);
        let x_883 : vec4<f32> = u_xlat6;
        let x_886 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.x, x_889.y, x_889.z, x_889.y));
        let x_892 : vec4<f32> = u_xlat6;
        let x_895 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) * vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y)) + vec4<f32>(x_898.w, x_898.y, x_898.w, x_898.z));
        let x_901 : vec4<f32> = u_xlat6;
        let x_904 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y) * vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y)) + vec4<f32>(x_907.x, x_907.w, x_907.z, x_907.w));
        let x_911 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_911.x, x_911.x, x_911.x, x_911.y) * vec4<f32>(x_913.z, x_913.w, x_913.y, x_913.z));
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_917.y, x_917.y, x_917.z, x_917.z) * x_919);
        let x_922 : f32 = u_xlat7.z;
        let x_924 : f32 = u_xlat12.y;
        u_xlat1.x = (x_922 * x_924);
        let x_928 : vec4<f32> = u_xlat10;
        let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
        let x_931 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_939 : vec3<f32> = txVec4;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat74 = x_941;
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.z, x_943.w);
        let x_946 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_954 : vec3<f32> = txVec5;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat75 = x_956;
        let x_957 : f32 = u_xlat75;
        let x_959 : f32 = u_xlat13.y;
        u_xlat75 = (x_957 * x_959);
        let x_962 : f32 = u_xlat13.x;
        let x_963 : f32 = u_xlat74;
        let x_965 : f32 = u_xlat75;
        u_xlat74 = ((x_962 * x_963) + x_965);
        let x_968 : vec2<f32> = u_xlat54;
        let x_970 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_968.x, x_968.y, x_970);
        let x_977 : vec3<f32> = txVec6;
        let x_979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_977.xy, x_977.z);
        u_xlat75 = x_979;
        let x_981 : f32 = u_xlat13.z;
        let x_982 : f32 = u_xlat75;
        let x_984 : f32 = u_xlat74;
        u_xlat74 = ((x_981 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat9;
        let x_988 : vec2<f32> = vec2<f32>(x_987.x, x_987.y);
        let x_990 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec7;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
        u_xlat75 = x_999;
        let x_1001 : f32 = u_xlat13.w;
        let x_1002 : f32 = u_xlat75;
        let x_1004 : f32 = u_xlat74;
        u_xlat74 = ((x_1001 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat11;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec8;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat75 = x_1019;
        let x_1021 : f32 = u_xlat14.x;
        let x_1022 : f32 = u_xlat75;
        let x_1024 : f32 = u_xlat74;
        u_xlat74 = ((x_1021 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat11;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec9;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1037.xy, x_1037.z);
        u_xlat75 = x_1039;
        let x_1041 : f32 = u_xlat14.y;
        let x_1042 : f32 = u_xlat75;
        let x_1044 : f32 = u_xlat74;
        u_xlat74 = ((x_1041 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec10;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat75 = x_1059;
        let x_1061 : f32 = u_xlat14.z;
        let x_1062 : f32 = u_xlat75;
        let x_1064 : f32 = u_xlat74;
        u_xlat74 = ((x_1061 * x_1062) + x_1064);
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = vec2<f32>(x_1067.x, x_1067.y);
        let x_1070 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
        let x_1077 : vec3<f32> = txVec11;
        let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
        u_xlat75 = x_1079;
        let x_1081 : f32 = u_xlat14.w;
        let x_1082 : f32 = u_xlat75;
        let x_1084 : f32 = u_xlat74;
        u_xlat74 = ((x_1081 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec12;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat75 = x_1099;
        let x_1101 : f32 = u_xlat1.x;
        let x_1102 : f32 = u_xlat75;
        let x_1104 : f32 = u_xlat74;
        u_xlat72 = ((x_1101 * x_1102) + x_1104);
      } else {
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.z, x_1110.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1118 : vec2<f32> = floor(vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.z, x_1124.w)) + -(vec2<f32>(x_1127.x, x_1127.y)));
        let x_1131 : vec2<f32> = u_xlat54;
        u_xlat7 = (vec4<f32>(x_1131.x, x_1131.x, x_1131.y, x_1131.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1136 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.z, x_1134.z) * vec4<f32>(x_1136.x, x_1136.x, x_1136.z, x_1136.z));
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1139.y, x_1139.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = u_xlat54;
        let x_1151 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1149));
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat54;
        let x_1156 : vec2<f32> = (-(x_1154) + vec2<f32>(1.0f, 1.0f));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1159 : vec2<f32> = u_xlat54;
        u_xlat56 = min(x_1159, vec2<f32>(0.0f, 0.0f));
        let x_1161 : vec2<f32> = u_xlat56;
        let x_1163 : vec2<f32> = u_xlat56;
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1167 : vec2<f32> = ((-(x_1161) * x_1163) + vec2<f32>(x_1165.x, x_1165.y));
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec2<f32> = u_xlat54;
        u_xlat56 = max(x_1170, vec2<f32>(0.0f, 0.0f));
        let x_1173 : vec2<f32> = u_xlat56;
        let x_1175 : vec2<f32> = u_xlat56;
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1179 : vec2<f32> = ((-(x_1173) * x_1175) + vec2<f32>(x_1177.y, x_1177.w));
        let x_1180 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1179.x, x_1180.y, x_1179.y);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) + vec2<f32>(2.0f, 2.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec3<f32> = u_xlat31;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.z) + vec2<f32>(2.0f, 2.0f));
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1193 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1193 * 0.08163200318813323975f);
        let x_1197 : vec4<f32> = u_xlat7;
        let x_1200 : vec3<f32> = (vec3<f32>(x_1197.z, x_1197.x, x_1197.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1210 : f32 = u_xlat11.y;
        u_xlat10.x = x_1210;
        let x_1212 : vec2<f32> = u_xlat54;
        let x_1219 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1219.x, x_1220.z, x_1219.y);
        let x_1222 : vec2<f32> = u_xlat54;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1227.w);
        let x_1230 : f32 = u_xlat7.x;
        u_xlat8.y = x_1230;
        let x_1233 : f32 = u_xlat9.y;
        u_xlat8.w = x_1233;
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1235 + x_1236);
        let x_1238 : vec2<f32> = u_xlat54;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1238.y, x_1238.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1242.x, x_1241.x, x_1242.z, x_1241.y);
        let x_1244 : vec2<f32> = u_xlat54;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1244.y, x_1244.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1247.x, x_1248.y, x_1247.y, x_1248.w);
        let x_1251 : f32 = u_xlat7.y;
        u_xlat9.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1253 + x_1254);
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1256 / x_1257);
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1259 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1273 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1270.w, x_1270.x, x_1270.y, x_1270.z) * vec4<f32>(x_1273.x, x_1273.x, x_1273.x, x_1273.x));
        let x_1276 : vec4<f32> = u_xlat9;
        let x_1279 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1276.x, x_1276.w, x_1276.y, x_1276.z) * vec4<f32>(x_1279.y, x_1279.y, x_1279.y, x_1279.y));
        let x_1282 : vec4<f32> = u_xlat8;
        let x_1283 : vec3<f32> = vec3<f32>(x_1282.y, x_1282.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1283.z);
        let x_1287 : f32 = u_xlat9.x;
        u_xlat11.y = x_1287;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat54 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat11.y;
        u_xlat8.y = x_1308;
        let x_1311 : f32 = u_xlat9.z;
        u_xlat11.y = x_1311;
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : f32 = u_xlat11.y;
        u_xlat8.z = x_1334;
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1340 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.z));
        let x_1347 : f32 = u_xlat9.w;
        u_xlat11.y = x_1347;
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1360 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat11;
        u_xlat32 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.w, x_1366.y));
        let x_1370 : f32 = u_xlat11.y;
        u_xlat8.w = x_1370;
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.x, x_1379.w));
        let x_1382 : vec4<f32> = u_xlat11;
        let x_1383 : vec3<f32> = vec3<f32>(x_1382.x, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1383.z);
        let x_1386 : vec4<f32> = u_xlat6;
        let x_1389 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1392 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.y) * vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y)) + vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1392.y));
        let x_1396 : vec4<f32> = u_xlat6;
        let x_1399 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(x_1399.x, x_1399.y)) + vec2<f32>(x_1402.w, x_1402.y));
        let x_1406 : f32 = u_xlat8.x;
        u_xlat9.x = x_1406;
        let x_1408 : vec4<f32> = u_xlat6;
        let x_1411 : vec4<f32> = x_284.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat9;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.x, x_1414.y));
        let x_1417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1422 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1420.x, x_1420.x, x_1420.x, x_1420.x) * x_1422);
        let x_1425 : vec4<f32> = u_xlat7;
        let x_1427 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1425.y, x_1425.y, x_1425.y, x_1425.y) * x_1427);
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1432 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1430.z, x_1430.z, x_1430.z, x_1430.z) * x_1432);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1434.w, x_1434.w, x_1434.w, x_1434.w) * x_1436);
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec13;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : vec4<f32> = u_xlat12;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec14;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat74 = x_1466;
        let x_1467 : f32 = u_xlat74;
        let x_1469 : f32 = u_xlat17.y;
        u_xlat74 = (x_1467 * x_1469);
        let x_1472 : f32 = u_xlat17.x;
        let x_1474 : f32 = u_xlat1.x;
        let x_1476 : f32 = u_xlat74;
        u_xlat1.x = ((x_1472 * x_1474) + x_1476);
        let x_1480 : vec2<f32> = u_xlat54;
        let x_1482 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec15;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat74 = x_1491;
        let x_1493 : f32 = u_xlat17.z;
        let x_1494 : f32 = u_xlat74;
        let x_1497 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat15;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec16;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat74 = x_1513;
        let x_1515 : f32 = u_xlat17.w;
        let x_1516 : f32 = u_xlat74;
        let x_1519 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1515 * x_1516) + x_1519);
        let x_1523 : vec4<f32> = u_xlat13;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec17;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat74 = x_1535;
        let x_1537 : f32 = u_xlat18.x;
        let x_1538 : f32 = u_xlat74;
        let x_1541 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat13;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec18;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat74 = x_1557;
        let x_1559 : f32 = u_xlat18.y;
        let x_1560 : f32 = u_xlat74;
        let x_1563 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec4<f32> = u_xlat14;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.x, x_1567.y);
        let x_1570 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec19;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1577.xy, x_1577.z);
        u_xlat74 = x_1579;
        let x_1581 : f32 = u_xlat18.z;
        let x_1582 : f32 = u_xlat74;
        let x_1585 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1581 * x_1582) + x_1585);
        let x_1589 : vec4<f32> = u_xlat15;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec20;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat74 = x_1601;
        let x_1603 : f32 = u_xlat18.w;
        let x_1604 : f32 = u_xlat74;
        let x_1607 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1603 * x_1604) + x_1607);
        let x_1611 : vec4<f32> = u_xlat16;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec21;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat74 = x_1623;
        let x_1625 : f32 = u_xlat19.x;
        let x_1626 : f32 = u_xlat74;
        let x_1629 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1625 * x_1626) + x_1629);
        let x_1633 : vec4<f32> = u_xlat16;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec22;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
        u_xlat74 = x_1645;
        let x_1647 : f32 = u_xlat19.y;
        let x_1648 : f32 = u_xlat74;
        let x_1651 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1647 * x_1648) + x_1651);
        let x_1655 : vec2<f32> = u_xlat32;
        let x_1657 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec23;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat74 = x_1666;
        let x_1668 : f32 = u_xlat19.z;
        let x_1669 : f32 = u_xlat74;
        let x_1672 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1668 * x_1669) + x_1672);
        let x_1676 : vec2<f32> = u_xlat62;
        let x_1678 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec24;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat74 = x_1687;
        let x_1689 : f32 = u_xlat19.w;
        let x_1690 : f32 = u_xlat74;
        let x_1693 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat11;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec25;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat74 = x_1709;
        let x_1711 : f32 = u_xlat7.x;
        let x_1712 : f32 = u_xlat74;
        let x_1715 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1711 * x_1712) + x_1715);
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.z, x_1719.w);
        let x_1722 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec26;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat74 = x_1731;
        let x_1733 : f32 = u_xlat7.y;
        let x_1734 : f32 = u_xlat74;
        let x_1737 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1733 * x_1734) + x_1737);
        let x_1741 : vec2<f32> = u_xlat57;
        let x_1743 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec27;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat74 = x_1752;
        let x_1754 : f32 = u_xlat7.z;
        let x_1755 : f32 = u_xlat74;
        let x_1758 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1754 * x_1755) + x_1758);
        let x_1762 : vec4<f32> = u_xlat6;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec28;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat74 = x_1774;
        let x_1776 : f32 = u_xlat7.w;
        let x_1777 : f32 = u_xlat74;
        let x_1780 : f32 = u_xlat1.x;
        u_xlat72 = ((x_1776 * x_1777) + x_1780);
      }
    }
  } else {
    let x_1784 : vec4<f32> = u_xlat4;
    let x_1785 : vec2<f32> = vec2<f32>(x_1784.x, x_1784.y);
    let x_1787 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
    let x_1794 : vec3<f32> = txVec29;
    let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1794.xy, x_1794.z);
    u_xlat72 = x_1796;
  }
  let x_1798 : f32 = x_284.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1798) + 1.0f);
  let x_1802 : f32 = u_xlat72;
  let x_1804 : f32 = x_284.x_MainLightShadowParams.x;
  let x_1807 : f32 = u_xlat1.x;
  u_xlat72 = ((x_1802 * x_1804) + x_1807);
  let x_1810 : f32 = u_xlat4.z;
  u_xlatb1 = (0.0f >= x_1810);
  let x_1814 : f32 = u_xlat4.z;
  u_xlatb74 = (x_1814 >= 1.0f);
  let x_1816 : bool = u_xlatb1;
  let x_1817 : bool = u_xlatb74;
  u_xlatb1 = (x_1816 | x_1817);
  let x_1819 : bool = u_xlatb1;
  let x_1820 : f32 = u_xlat72;
  u_xlat72 = select(x_1820, 1.0f, x_1819);
  let x_1822 : vec3<f32> = vs_TEXCOORD1;
  let x_1825 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1827 : vec3<f32> = (x_1822 + -(x_1825));
  let x_1828 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
  let x_1830 : vec4<f32> = u_xlat4;
  let x_1832 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
  let x_1837 : f32 = u_xlat1.x;
  let x_1839 : f32 = x_284.x_MainLightShadowParams.z;
  let x_1842 : f32 = x_284.x_MainLightShadowParams.w;
  u_xlat74 = ((x_1837 * x_1839) + x_1842);
  let x_1844 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1844, 0.0f, 1.0f);
  let x_1846 : f32 = u_xlat72;
  u_xlat75 = (-(x_1846) + 1.0f);
  let x_1849 : f32 = u_xlat74;
  let x_1850 : f32 = u_xlat75;
  let x_1852 : f32 = u_xlat72;
  u_xlat72 = ((x_1849 * x_1850) + x_1852);
  let x_1861 : f32 = x_1859.x_MainLightCookieTextureFormat;
  u_xlatb74 = !((x_1861 == -1.0f));
  let x_1863 : bool = u_xlatb74;
  if (x_1863) {
    let x_1866 : vec3<f32> = vs_TEXCOORD1;
    let x_1869 : vec4<f32> = x_1859.x_MainLightWorldToLight[1i];
    let x_1871 : vec2<f32> = (vec2<f32>(x_1866.y, x_1866.y) * vec2<f32>(x_1869.x, x_1869.y));
    let x_1872 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
    let x_1875 : vec4<f32> = x_1859.x_MainLightWorldToLight[0i];
    let x_1877 : vec3<f32> = vs_TEXCOORD1;
    let x_1880 : vec4<f32> = u_xlat4;
    let x_1882 : vec2<f32> = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1877.x, x_1877.x)) + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
    let x_1886 : vec4<f32> = x_1859.x_MainLightWorldToLight[2i];
    let x_1888 : vec3<f32> = vs_TEXCOORD1;
    let x_1891 : vec4<f32> = u_xlat4;
    let x_1893 : vec2<f32> = ((vec2<f32>(x_1886.x, x_1886.y) * vec2<f32>(x_1888.z, x_1888.z)) + vec2<f32>(x_1891.x, x_1891.y));
    let x_1894 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
    let x_1896 : vec4<f32> = u_xlat4;
    let x_1899 : vec4<f32> = x_1859.x_MainLightWorldToLight[3i];
    let x_1901 : vec2<f32> = (vec2<f32>(x_1896.x, x_1896.y) + vec2<f32>(x_1899.x, x_1899.y));
    let x_1902 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1901.x, x_1901.y, x_1902.z, x_1902.w);
    let x_1904 : vec4<f32> = u_xlat4;
    let x_1907 : vec2<f32> = ((vec2<f32>(x_1904.x, x_1904.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1908 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1907.x, x_1907.y, x_1908.z, x_1908.w);
    let x_1915 : vec4<f32> = u_xlat4;
    let x_1918 : f32 = x_27.x_GlobalMipBias.x;
    let x_1919 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1915.x, x_1915.y), x_1918);
    u_xlat4 = x_1919;
    let x_1924 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1926 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1928 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1930 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1931 : vec4<f32> = vec4<f32>(x_1924, x_1926, x_1928, x_1930);
    let x_1938 : vec4<bool> = (vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1931.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1938.x, x_1938.y);
    let x_1941 : bool = u_xlatb6.y;
    if (x_1941) {
      let x_1946 : f32 = u_xlat4.w;
      x_1942 = x_1946;
    } else {
      let x_1949 : f32 = u_xlat4.x;
      x_1942 = x_1949;
    }
    let x_1950 : f32 = x_1942;
    u_xlat74 = x_1950;
    let x_1952 : bool = u_xlatb6.x;
    if (x_1952) {
      let x_1956 : vec4<f32> = u_xlat4;
      x_1953 = vec3<f32>(x_1956.x, x_1956.y, x_1956.z);
    } else {
      let x_1959 : f32 = u_xlat74;
      x_1953 = vec3<f32>(x_1959, x_1959, x_1959);
    }
    let x_1961 : vec3<f32> = x_1953;
    let x_1962 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1968 : vec4<f32> = u_xlat4;
  let x_1971 : vec4<f32> = x_27.x_MainLightColor;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.y, x_1968.z) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : f32 = u_xlat72;
  let x_1978 : f32 = x_476.unity_LightData.z;
  u_xlat72 = (x_1976 * x_1978);
  let x_1980 : f32 = u_xlat72;
  let x_1982 : vec4<f32> = u_xlat4;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1980, x_1980, x_1980) * vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1987 : vec4<f32> = u_xlat2;
  let x_1990 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat72 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : f32 = u_xlat72;
  u_xlat72 = clamp(x_1993, 0.0f, 1.0f);
  let x_1995 : f32 = u_xlat72;
  let x_1997 : vec4<f32> = u_xlat4;
  let x_1999 : vec3<f32> = (vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
  let x_2000 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2003 : f32 = x_41.x_SpecColor.w;
  u_xlat72 = ((x_2003 * 10.0f) + 1.0f);
  let x_2007 : f32 = u_xlat72;
  u_xlat72 = exp2(x_2007);
  let x_2009 : vec3<f32> = u_xlat3;
  let x_2010 : vec3<f32> = u_xlat24;
  let x_2014 : vec4<f32> = x_27.x_MainLightPosition;
  let x_2016 : vec3<f32> = ((x_2009 * vec3<f32>(x_2010.x, x_2010.x, x_2010.x)) + vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
  let x_2017 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
  let x_2019 : vec4<f32> = u_xlat7;
  let x_2021 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(vec3<f32>(x_2019.x, x_2019.y, x_2019.z), vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2024 : f32 = u_xlat74;
  u_xlat74 = max(x_2024, 1.17549435e-38f);
  let x_2027 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_2027);
  let x_2029 : f32 = u_xlat74;
  let x_2031 : vec4<f32> = u_xlat7;
  let x_2033 : vec3<f32> = (vec3<f32>(x_2029, x_2029, x_2029) * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
  let x_2036 : vec4<f32> = u_xlat2;
  let x_2038 : vec4<f32> = u_xlat7;
  u_xlat74 = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2041 : f32 = u_xlat74;
  u_xlat74 = clamp(x_2041, 0.0f, 1.0f);
  let x_2043 : f32 = u_xlat74;
  u_xlat74 = log2(x_2043);
  let x_2045 : f32 = u_xlat72;
  let x_2046 : f32 = u_xlat74;
  u_xlat74 = (x_2045 * x_2046);
  let x_2048 : f32 = u_xlat74;
  u_xlat74 = exp2(x_2048);
  let x_2050 : f32 = u_xlat74;
  let x_2053 : vec4<f32> = x_41.x_SpecColor;
  let x_2055 : vec3<f32> = (vec3<f32>(x_2050, x_2050, x_2050) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : vec4<f32> = u_xlat4;
  let x_2060 : vec4<f32> = u_xlat7;
  let x_2062 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec4<f32> = u_xlat6;
  let x_2067 : vec4<f32> = u_xlat1;
  let x_2070 : vec4<f32> = u_xlat4;
  let x_2072 : vec3<f32> = ((vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * vec3<f32>(x_2067.y, x_2067.z, x_2067.w)) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2076 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_2078 : f32 = x_476.unity_LightData.y;
  u_xlat74 = min(x_2076, x_2078);
  let x_2081 : f32 = u_xlat74;
  u_xlatu74 = bitcast<u32>(i32(x_2081));
  let x_2085 : f32 = u_xlat1.x;
  let x_2088 : f32 = x_284.x_AdditionalShadowFadeParams.x;
  let x_2091 : f32 = x_284.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2085 * x_2088) + x_2091);
  let x_2095 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2095, 0.0f, 1.0f);
  let x_2099 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2101 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2103 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2105 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2106 : vec4<f32> = vec4<f32>(x_2099, x_2101, x_2103, x_2105);
  let x_2112 : vec4<bool> = (vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2106.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2112.x, x_2112.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2124 : u32 = u_xlatu_loop_1;
    let x_2125 : u32 = u_xlatu74;
    if ((x_2124 < x_2125)) {
    } else {
      break;
    }
    let x_2128 : u32 = u_xlatu_loop_1;
    u_xlatu76 = (x_2128 >> 2u);
    let x_2131 : u32 = u_xlatu_loop_1;
    u_xlati77 = bitcast<i32>((x_2131 & 3u));
    let x_2135 : u32 = u_xlatu76;
    let x_2138 : vec4<f32> = x_476.unity_LightIndices[bitcast<i32>(x_2135)];
    let x_2148 : i32 = u_xlati77;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2153 : vec4<u32> = indexable[x_2148];
    u_xlat76 = dot(x_2138, bitcast<vec4<f32>>(x_2153));
    let x_2157 : f32 = u_xlat76;
    u_xlati76 = i32(x_2157);
    let x_2159 : vec3<f32> = vs_TEXCOORD1;
    let x_2170 : i32 = u_xlati76;
    let x_2172 : vec4<f32> = x_2169.x_AdditionalLightsPosition[x_2170];
    let x_2175 : i32 = u_xlati76;
    let x_2177 : vec4<f32> = x_2169.x_AdditionalLightsPosition[x_2175];
    let x_2179 : vec3<f32> = ((-(x_2159) * vec3<f32>(x_2172.w, x_2172.w, x_2172.w)) + vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
    let x_2180 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
    let x_2183 : vec4<f32> = u_xlat8;
    let x_2185 : vec4<f32> = u_xlat8;
    u_xlat77 = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2188 : f32 = u_xlat77;
    u_xlat77 = max(x_2188, 0.00006103515625f);
    let x_2190 : f32 = u_xlat77;
    u_xlat54.x = inverseSqrt(x_2190);
    let x_2193 : vec2<f32> = u_xlat54;
    let x_2195 : vec4<f32> = u_xlat8;
    let x_2197 : vec3<f32> = (vec3<f32>(x_2193.x, x_2193.x, x_2193.x) * vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
    let x_2198 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
    let x_2200 : f32 = u_xlat77;
    u_xlat54.x = (1.0f / x_2200);
    let x_2203 : f32 = u_xlat77;
    let x_2204 : i32 = u_xlati76;
    let x_2206 : f32 = x_2169.x_AdditionalLightsAttenuation[x_2204].x;
    u_xlat77 = (x_2203 * x_2206);
    let x_2208 : f32 = u_xlat77;
    let x_2210 : f32 = u_xlat77;
    u_xlat77 = ((-(x_2208) * x_2210) + 1.0f);
    let x_2213 : f32 = u_xlat77;
    u_xlat77 = max(x_2213, 0.0f);
    let x_2215 : f32 = u_xlat77;
    let x_2216 : f32 = u_xlat77;
    u_xlat77 = (x_2215 * x_2216);
    let x_2218 : f32 = u_xlat77;
    let x_2220 : f32 = u_xlat54.x;
    u_xlat77 = (x_2218 * x_2220);
    let x_2222 : i32 = u_xlati76;
    let x_2224 : vec4<f32> = x_2169.x_AdditionalLightsSpotDir[x_2222];
    let x_2226 : vec4<f32> = u_xlat8;
    u_xlat54.x = dot(vec3<f32>(x_2224.x, x_2224.y, x_2224.z), vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2231 : f32 = u_xlat54.x;
    let x_2232 : i32 = u_xlati76;
    let x_2234 : f32 = x_2169.x_AdditionalLightsAttenuation[x_2232].z;
    let x_2236 : i32 = u_xlati76;
    let x_2238 : f32 = x_2169.x_AdditionalLightsAttenuation[x_2236].w;
    u_xlat54.x = ((x_2231 * x_2234) + x_2238);
    let x_2242 : f32 = u_xlat54.x;
    u_xlat54.x = clamp(x_2242, 0.0f, 1.0f);
    let x_2246 : f32 = u_xlat54.x;
    let x_2248 : f32 = u_xlat54.x;
    u_xlat54.x = (x_2246 * x_2248);
    let x_2251 : f32 = u_xlat77;
    let x_2253 : f32 = u_xlat54.x;
    u_xlat77 = (x_2251 * x_2253);
    let x_2257 : i32 = u_xlati76;
    let x_2259 : f32 = x_284.x_AdditionalShadowParams[x_2257].w;
    u_xlati54 = i32(x_2259);
    let x_2262 : i32 = u_xlati54;
    u_xlatb78 = (x_2262 >= 0i);
    let x_2264 : bool = u_xlatb78;
    if (x_2264) {
      let x_2268 : i32 = u_xlati76;
      let x_2270 : f32 = x_284.x_AdditionalShadowParams[x_2268].z;
      u_xlatb78 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2270, x_2270, x_2270, x_2270))));
      let x_2274 : bool = u_xlatb78;
      if (x_2274) {
        let x_2278 : vec4<f32> = u_xlat8;
        let x_2281 : vec4<f32> = u_xlat8;
        let x_2284 : vec4<bool> = (abs(vec4<f32>(x_2278.z, x_2278.z, x_2278.y, x_2278.z)) >= abs(vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.x)));
        let x_2286 : vec3<bool> = vec3<bool>(x_2284.x, x_2284.y, x_2284.z);
        let x_2287 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
        let x_2290 : bool = u_xlatb9.y;
        let x_2292 : bool = u_xlatb9.x;
        u_xlatb78 = (x_2290 & x_2292);
        let x_2294 : vec4<f32> = u_xlat8;
        let x_2297 : vec4<bool> = (-(vec4<f32>(x_2294.z, x_2294.y, x_2294.z, x_2294.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2298 : vec3<bool> = vec3<bool>(x_2297.x, x_2297.y, x_2297.w);
        let x_2299 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_2298.x, x_2298.y, x_2299.z, x_2298.z);
        let x_2302 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_2302);
        let x_2307 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_2307);
        let x_2312 : bool = u_xlatb9.w;
        u_xlat79 = select(0.0f, 1.0f, x_2312);
        let x_2315 : bool = u_xlatb9.z;
        if (x_2315) {
          let x_2320 : f32 = u_xlat9.y;
          x_2316 = x_2320;
        } else {
          let x_2322 : f32 = u_xlat79;
          x_2316 = x_2322;
        }
        let x_2323 : f32 = x_2316;
        u_xlat79 = x_2323;
        let x_2325 : bool = u_xlatb78;
        if (x_2325) {
          let x_2330 : f32 = u_xlat9.x;
          x_2326 = x_2330;
        } else {
          let x_2332 : f32 = u_xlat79;
          x_2326 = x_2332;
        }
        let x_2333 : f32 = x_2326;
        u_xlat78 = x_2333;
        let x_2334 : i32 = u_xlati76;
        let x_2336 : f32 = x_284.x_AdditionalShadowParams[x_2334].w;
        u_xlat79 = trunc(x_2336);
        let x_2338 : f32 = u_xlat78;
        let x_2339 : f32 = u_xlat79;
        u_xlat78 = (x_2338 + x_2339);
        let x_2341 : f32 = u_xlat78;
        u_xlati54 = i32(x_2341);
      }
      let x_2343 : i32 = u_xlati54;
      u_xlati54 = (x_2343 << bitcast<u32>(2i));
      let x_2345 : vec3<f32> = vs_TEXCOORD1;
      let x_2348 : i32 = u_xlati54;
      let x_2351 : i32 = u_xlati54;
      let x_2355 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2348 + 1i) / 4i)][((x_2351 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_2345.y, x_2345.y, x_2345.y, x_2345.y) * x_2355);
      let x_2357 : i32 = u_xlati54;
      let x_2359 : i32 = u_xlati54;
      let x_2362 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[(x_2357 / 4i)][(x_2359 % 4i)];
      let x_2363 : vec3<f32> = vs_TEXCOORD1;
      let x_2366 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2362 * vec4<f32>(x_2363.x, x_2363.x, x_2363.x, x_2363.x)) + x_2366);
      let x_2368 : i32 = u_xlati54;
      let x_2371 : i32 = u_xlati54;
      let x_2375 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2368 + 2i) / 4i)][((x_2371 + 2i) % 4i)];
      let x_2376 : vec3<f32> = vs_TEXCOORD1;
      let x_2379 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_2375 * vec4<f32>(x_2376.z, x_2376.z, x_2376.z, x_2376.z)) + x_2379);
      let x_2381 : vec4<f32> = u_xlat9;
      let x_2382 : i32 = u_xlati54;
      let x_2385 : i32 = u_xlati54;
      let x_2389 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_2382 + 3i) / 4i)][((x_2385 + 3i) % 4i)];
      u_xlat9 = (x_2381 + x_2389);
      let x_2391 : vec4<f32> = u_xlat9;
      let x_2393 : vec4<f32> = u_xlat9;
      let x_2395 : vec3<f32> = (vec3<f32>(x_2391.x, x_2391.y, x_2391.z) / vec3<f32>(x_2393.w, x_2393.w, x_2393.w));
      let x_2396 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
      let x_2399 : i32 = u_xlati76;
      let x_2401 : f32 = x_284.x_AdditionalShadowParams[x_2399].y;
      u_xlatb54 = (0.0f < x_2401);
      let x_2403 : bool = u_xlatb54;
      if (x_2403) {
        let x_2406 : i32 = u_xlati76;
        let x_2408 : f32 = x_284.x_AdditionalShadowParams[x_2406].y;
        u_xlatb54 = (1.0f == x_2408);
        let x_2410 : bool = u_xlatb54;
        if (x_2410) {
          let x_2413 : vec4<f32> = u_xlat9;
          let x_2417 : vec4<f32> = x_284.x_AdditionalShadowOffset0;
          u_xlat10 = (vec4<f32>(x_2413.x, x_2413.y, x_2413.x, x_2413.y) + x_2417);
          let x_2420 : vec4<f32> = u_xlat10;
          let x_2421 : vec2<f32> = vec2<f32>(x_2420.x, x_2420.y);
          let x_2423 : f32 = u_xlat9.z;
          txVec30 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
          let x_2431 : vec3<f32> = txVec30;
          let x_2433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2431.xy, x_2431.z);
          u_xlat11.x = x_2433;
          let x_2436 : vec4<f32> = u_xlat10;
          let x_2437 : vec2<f32> = vec2<f32>(x_2436.z, x_2436.w);
          let x_2439 : f32 = u_xlat9.z;
          txVec31 = vec3<f32>(x_2437.x, x_2437.y, x_2439);
          let x_2446 : vec3<f32> = txVec31;
          let x_2448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2446.xy, x_2446.z);
          u_xlat11.y = x_2448;
          let x_2450 : vec4<f32> = u_xlat9;
          let x_2454 : vec4<f32> = x_284.x_AdditionalShadowOffset1;
          u_xlat10 = (vec4<f32>(x_2450.x, x_2450.y, x_2450.x, x_2450.y) + x_2454);
          let x_2457 : vec4<f32> = u_xlat10;
          let x_2458 : vec2<f32> = vec2<f32>(x_2457.x, x_2457.y);
          let x_2460 : f32 = u_xlat9.z;
          txVec32 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
          let x_2467 : vec3<f32> = txVec32;
          let x_2469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
          u_xlat11.z = x_2469;
          let x_2472 : vec4<f32> = u_xlat10;
          let x_2473 : vec2<f32> = vec2<f32>(x_2472.z, x_2472.w);
          let x_2475 : f32 = u_xlat9.z;
          txVec33 = vec3<f32>(x_2473.x, x_2473.y, x_2475);
          let x_2482 : vec3<f32> = txVec33;
          let x_2484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2482.xy, x_2482.z);
          u_xlat11.w = x_2484;
          let x_2486 : vec4<f32> = u_xlat11;
          u_xlat54.x = dot(x_2486, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2490 : i32 = u_xlati76;
          let x_2492 : f32 = x_284.x_AdditionalShadowParams[x_2490].y;
          u_xlatb78 = (2.0f == x_2492);
          let x_2494 : bool = u_xlatb78;
          if (x_2494) {
            let x_2497 : vec4<f32> = u_xlat9;
            let x_2501 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2504 : vec2<f32> = ((vec2<f32>(x_2497.x, x_2497.y) * vec2<f32>(x_2501.z, x_2501.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2505 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2504.x, x_2504.y, x_2505.z, x_2505.w);
            let x_2507 : vec4<f32> = u_xlat10;
            let x_2509 : vec2<f32> = floor(vec2<f32>(x_2507.x, x_2507.y));
            let x_2510 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2509.x, x_2509.y, x_2510.z, x_2510.w);
            let x_2513 : vec4<f32> = u_xlat9;
            let x_2516 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2519 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2513.x, x_2513.y) * vec2<f32>(x_2516.z, x_2516.w)) + -(vec2<f32>(x_2519.x, x_2519.y)));
            let x_2523 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2523.x, x_2523.x, x_2523.y, x_2523.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2526 : vec4<f32> = u_xlat11;
            let x_2528 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2526.x, x_2526.x, x_2526.z, x_2526.z) * vec4<f32>(x_2528.x, x_2528.x, x_2528.z, x_2528.z));
            let x_2531 : vec4<f32> = u_xlat12;
            let x_2533 : vec2<f32> = (vec2<f32>(x_2531.y, x_2531.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2534 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2533.x, x_2534.y, x_2533.y, x_2534.w);
            let x_2536 : vec4<f32> = u_xlat12;
            let x_2539 : vec2<f32> = u_xlat58;
            let x_2541 : vec2<f32> = ((vec2<f32>(x_2536.x, x_2536.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2539));
            let x_2542 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
            let x_2545 : vec2<f32> = u_xlat58;
            u_xlat60 = (-(x_2545) + vec2<f32>(1.0f, 1.0f));
            let x_2548 : vec2<f32> = u_xlat58;
            let x_2549 : vec2<f32> = min(x_2548, vec2<f32>(0.0f, 0.0f));
            let x_2550 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2549.x, x_2549.y, x_2550.z, x_2550.w);
            let x_2552 : vec4<f32> = u_xlat13;
            let x_2555 : vec4<f32> = u_xlat13;
            let x_2558 : vec2<f32> = u_xlat60;
            let x_2559 : vec2<f32> = ((-(vec2<f32>(x_2552.x, x_2552.y)) * vec2<f32>(x_2555.x, x_2555.y)) + x_2558);
            let x_2560 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
            let x_2562 : vec2<f32> = u_xlat58;
            u_xlat58 = max(x_2562, vec2<f32>(0.0f, 0.0f));
            let x_2564 : vec2<f32> = u_xlat58;
            let x_2566 : vec2<f32> = u_xlat58;
            let x_2568 : vec4<f32> = u_xlat11;
            u_xlat58 = ((-(x_2564) * x_2566) + vec2<f32>(x_2568.y, x_2568.w));
            let x_2571 : vec4<f32> = u_xlat13;
            let x_2573 : vec2<f32> = (vec2<f32>(x_2571.x, x_2571.y) + vec2<f32>(1.0f, 1.0f));
            let x_2574 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
            let x_2576 : vec2<f32> = u_xlat58;
            u_xlat58 = (x_2576 + vec2<f32>(1.0f, 1.0f));
            let x_2578 : vec4<f32> = u_xlat12;
            let x_2580 : vec2<f32> = (vec2<f32>(x_2578.x, x_2578.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2581 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
            let x_2583 : vec2<f32> = u_xlat60;
            let x_2584 : vec2<f32> = (x_2583 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2585 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat13;
            let x_2589 : vec2<f32> = (vec2<f32>(x_2587.x, x_2587.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2590 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2592 : vec2<f32> = u_xlat58;
            let x_2593 : vec2<f32> = (x_2592 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2594 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat11;
            u_xlat58 = (vec2<f32>(x_2596.y, x_2596.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2600 : f32 = u_xlat13.x;
            u_xlat14.z = x_2600;
            let x_2603 : f32 = u_xlat58.x;
            u_xlat14.w = x_2603;
            let x_2606 : f32 = u_xlat15.x;
            u_xlat12.z = x_2606;
            let x_2609 : f32 = u_xlat11.x;
            u_xlat12.w = x_2609;
            let x_2611 : vec4<f32> = u_xlat12;
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2611.z, x_2611.w, x_2611.x, x_2611.z) + vec4<f32>(x_2613.z, x_2613.w, x_2613.x, x_2613.z));
            let x_2617 : f32 = u_xlat14.y;
            u_xlat13.z = x_2617;
            let x_2620 : f32 = u_xlat58.y;
            u_xlat13.w = x_2620;
            let x_2623 : f32 = u_xlat12.y;
            u_xlat15.z = x_2623;
            let x_2626 : f32 = u_xlat11.z;
            u_xlat15.w = x_2626;
            let x_2628 : vec4<f32> = u_xlat13;
            let x_2630 : vec4<f32> = u_xlat15;
            let x_2632 : vec3<f32> = (vec3<f32>(x_2628.z, x_2628.y, x_2628.w) + vec3<f32>(x_2630.z, x_2630.y, x_2630.w));
            let x_2633 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2637 : vec4<f32> = u_xlat16;
            let x_2639 : vec3<f32> = (vec3<f32>(x_2635.x, x_2635.z, x_2635.w) / vec3<f32>(x_2637.z, x_2637.w, x_2637.y));
            let x_2640 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
            let x_2642 : vec4<f32> = u_xlat12;
            let x_2644 : vec3<f32> = (vec3<f32>(x_2642.x, x_2642.y, x_2642.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2645 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
            let x_2647 : vec4<f32> = u_xlat15;
            let x_2649 : vec4<f32> = u_xlat11;
            let x_2651 : vec3<f32> = (vec3<f32>(x_2647.z, x_2647.y, x_2647.w) / vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
            let x_2652 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
            let x_2654 : vec4<f32> = u_xlat13;
            let x_2656 : vec3<f32> = (vec3<f32>(x_2654.x, x_2654.y, x_2654.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2657 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat12;
            let x_2662 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2664 : vec3<f32> = (vec3<f32>(x_2659.y, x_2659.x, x_2659.z) * vec3<f32>(x_2662.x, x_2662.x, x_2662.x));
            let x_2665 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2670 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2672 : vec3<f32> = (vec3<f32>(x_2667.x, x_2667.y, x_2667.z) * vec3<f32>(x_2670.y, x_2670.y, x_2670.y));
            let x_2673 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
            let x_2676 : f32 = u_xlat13.x;
            u_xlat12.w = x_2676;
            let x_2678 : vec4<f32> = u_xlat10;
            let x_2681 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2684 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2678.x, x_2678.y, x_2678.x, x_2678.y) * vec4<f32>(x_2681.x, x_2681.y, x_2681.x, x_2681.y)) + vec4<f32>(x_2684.y, x_2684.w, x_2684.x, x_2684.w));
            let x_2687 : vec4<f32> = u_xlat10;
            let x_2690 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2693 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2690.x, x_2690.y)) + vec2<f32>(x_2693.z, x_2693.w));
            let x_2697 : f32 = u_xlat12.y;
            u_xlat13.w = x_2697;
            let x_2699 : vec4<f32> = u_xlat13;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.y, x_2699.z);
            let x_2701 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2701.x, x_2700.x, x_2701.z, x_2700.y);
            let x_2703 : vec4<f32> = u_xlat10;
            let x_2706 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2709 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y) * vec4<f32>(x_2706.x, x_2706.y, x_2706.x, x_2706.y)) + vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2709.y));
            let x_2712 : vec4<f32> = u_xlat10;
            let x_2715 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2718 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2712.x, x_2712.y, x_2712.x, x_2712.y) * vec4<f32>(x_2715.x, x_2715.y, x_2715.x, x_2715.y)) + vec4<f32>(x_2718.w, x_2718.y, x_2718.w, x_2718.z));
            let x_2721 : vec4<f32> = u_xlat10;
            let x_2724 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.x, x_2727.w, x_2727.z, x_2727.w));
            let x_2730 : vec4<f32> = u_xlat11;
            let x_2732 : vec4<f32> = u_xlat16;
            u_xlat17 = (vec4<f32>(x_2730.x, x_2730.x, x_2730.x, x_2730.y) * vec4<f32>(x_2732.z, x_2732.w, x_2732.y, x_2732.z));
            let x_2735 : vec4<f32> = u_xlat11;
            let x_2737 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2735.y, x_2735.y, x_2735.z, x_2735.z) * x_2737);
            let x_2740 : f32 = u_xlat11.z;
            let x_2742 : f32 = u_xlat16.y;
            u_xlat78 = (x_2740 * x_2742);
            let x_2745 : vec4<f32> = u_xlat14;
            let x_2746 : vec2<f32> = vec2<f32>(x_2745.x, x_2745.y);
            let x_2748 : f32 = u_xlat9.z;
            txVec34 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2755 : vec3<f32> = txVec34;
            let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
            u_xlat79 = x_2757;
            let x_2759 : vec4<f32> = u_xlat14;
            let x_2760 : vec2<f32> = vec2<f32>(x_2759.z, x_2759.w);
            let x_2762 : f32 = u_xlat9.z;
            txVec35 = vec3<f32>(x_2760.x, x_2760.y, x_2762);
            let x_2770 : vec3<f32> = txVec35;
            let x_2772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2770.xy, x_2770.z);
            u_xlat80 = x_2772;
            let x_2773 : f32 = u_xlat80;
            let x_2775 : f32 = u_xlat17.y;
            u_xlat80 = (x_2773 * x_2775);
            let x_2778 : f32 = u_xlat17.x;
            let x_2779 : f32 = u_xlat79;
            let x_2781 : f32 = u_xlat80;
            u_xlat79 = ((x_2778 * x_2779) + x_2781);
            let x_2784 : vec2<f32> = u_xlat58;
            let x_2786 : f32 = u_xlat9.z;
            txVec36 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec36;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat80 = x_2795;
            let x_2797 : f32 = u_xlat17.z;
            let x_2798 : f32 = u_xlat80;
            let x_2800 : f32 = u_xlat79;
            u_xlat79 = ((x_2797 * x_2798) + x_2800);
            let x_2803 : vec4<f32> = u_xlat13;
            let x_2804 : vec2<f32> = vec2<f32>(x_2803.x, x_2803.y);
            let x_2806 : f32 = u_xlat9.z;
            txVec37 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
            let x_2813 : vec3<f32> = txVec37;
            let x_2815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
            u_xlat80 = x_2815;
            let x_2817 : f32 = u_xlat17.w;
            let x_2818 : f32 = u_xlat80;
            let x_2820 : f32 = u_xlat79;
            u_xlat79 = ((x_2817 * x_2818) + x_2820);
            let x_2823 : vec4<f32> = u_xlat15;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.x, x_2823.y);
            let x_2826 : f32 = u_xlat9.z;
            txVec38 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec38;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat80 = x_2835;
            let x_2837 : f32 = u_xlat18.x;
            let x_2838 : f32 = u_xlat80;
            let x_2840 : f32 = u_xlat79;
            u_xlat79 = ((x_2837 * x_2838) + x_2840);
            let x_2843 : vec4<f32> = u_xlat15;
            let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
            let x_2846 : f32 = u_xlat9.z;
            txVec39 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
            let x_2853 : vec3<f32> = txVec39;
            let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
            u_xlat80 = x_2855;
            let x_2857 : f32 = u_xlat18.y;
            let x_2858 : f32 = u_xlat80;
            let x_2860 : f32 = u_xlat79;
            u_xlat79 = ((x_2857 * x_2858) + x_2860);
            let x_2863 : vec4<f32> = u_xlat13;
            let x_2864 : vec2<f32> = vec2<f32>(x_2863.z, x_2863.w);
            let x_2866 : f32 = u_xlat9.z;
            txVec40 = vec3<f32>(x_2864.x, x_2864.y, x_2866);
            let x_2873 : vec3<f32> = txVec40;
            let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
            u_xlat80 = x_2875;
            let x_2877 : f32 = u_xlat18.z;
            let x_2878 : f32 = u_xlat80;
            let x_2880 : f32 = u_xlat79;
            u_xlat79 = ((x_2877 * x_2878) + x_2880);
            let x_2883 : vec4<f32> = u_xlat12;
            let x_2884 : vec2<f32> = vec2<f32>(x_2883.x, x_2883.y);
            let x_2886 : f32 = u_xlat9.z;
            txVec41 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec41;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat80 = x_2895;
            let x_2897 : f32 = u_xlat18.w;
            let x_2898 : f32 = u_xlat80;
            let x_2900 : f32 = u_xlat79;
            u_xlat79 = ((x_2897 * x_2898) + x_2900);
            let x_2903 : vec4<f32> = u_xlat12;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.z, x_2903.w);
            let x_2906 : f32 = u_xlat9.z;
            txVec42 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec42;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat80 = x_2915;
            let x_2916 : f32 = u_xlat78;
            let x_2917 : f32 = u_xlat80;
            let x_2919 : f32 = u_xlat79;
            u_xlat54.x = ((x_2916 * x_2917) + x_2919);
          } else {
            let x_2923 : vec4<f32> = u_xlat9;
            let x_2926 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2929 : vec2<f32> = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2926.z, x_2926.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2930 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
            let x_2932 : vec4<f32> = u_xlat10;
            let x_2934 : vec2<f32> = floor(vec2<f32>(x_2932.x, x_2932.y));
            let x_2935 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2940 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat10;
            u_xlat58 = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2940.z, x_2940.w)) + -(vec2<f32>(x_2943.x, x_2943.y)));
            let x_2947 : vec2<f32> = u_xlat58;
            u_xlat11 = (vec4<f32>(x_2947.x, x_2947.x, x_2947.y, x_2947.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2950 : vec4<f32> = u_xlat11;
            let x_2952 : vec4<f32> = u_xlat11;
            u_xlat12 = (vec4<f32>(x_2950.x, x_2950.x, x_2950.z, x_2950.z) * vec4<f32>(x_2952.x, x_2952.x, x_2952.z, x_2952.z));
            let x_2955 : vec4<f32> = u_xlat12;
            let x_2957 : vec2<f32> = (vec2<f32>(x_2955.y, x_2955.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2958 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2958.x, x_2957.x, x_2958.z, x_2957.y);
            let x_2960 : vec4<f32> = u_xlat12;
            let x_2963 : vec2<f32> = u_xlat58;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2960.x, x_2960.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2963));
            let x_2966 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2965.x, x_2966.y, x_2965.y, x_2966.w);
            let x_2968 : vec2<f32> = u_xlat58;
            let x_2970 : vec2<f32> = (-(x_2968) + vec2<f32>(1.0f, 1.0f));
            let x_2971 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2970.x, x_2970.y, x_2971.z, x_2971.w);
            let x_2973 : vec2<f32> = u_xlat58;
            u_xlat60 = min(x_2973, vec2<f32>(0.0f, 0.0f));
            let x_2975 : vec2<f32> = u_xlat60;
            let x_2977 : vec2<f32> = u_xlat60;
            let x_2979 : vec4<f32> = u_xlat12;
            let x_2981 : vec2<f32> = ((-(x_2975) * x_2977) + vec2<f32>(x_2979.x, x_2979.y));
            let x_2982 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
            let x_2984 : vec2<f32> = u_xlat58;
            u_xlat60 = max(x_2984, vec2<f32>(0.0f, 0.0f));
            let x_2987 : vec2<f32> = u_xlat60;
            let x_2989 : vec2<f32> = u_xlat60;
            let x_2991 : vec4<f32> = u_xlat11;
            let x_2993 : vec2<f32> = ((-(x_2987) * x_2989) + vec2<f32>(x_2991.y, x_2991.w));
            let x_2994 : vec3<f32> = u_xlat35;
            u_xlat35 = vec3<f32>(x_2993.x, x_2994.y, x_2993.y);
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2998 : vec2<f32> = (vec2<f32>(x_2996.x, x_2996.y) + vec2<f32>(2.0f, 2.0f));
            let x_2999 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2998.x, x_2998.y, x_2999.z, x_2999.w);
            let x_3001 : vec3<f32> = u_xlat35;
            let x_3003 : vec2<f32> = (vec2<f32>(x_3001.x, x_3001.z) + vec2<f32>(2.0f, 2.0f));
            let x_3004 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3004.x, x_3003.x, x_3004.z, x_3003.y);
            let x_3007 : f32 = u_xlat11.y;
            u_xlat14.z = (x_3007 * 0.08163200318813323975f);
            let x_3010 : vec4<f32> = u_xlat11;
            let x_3012 : vec3<f32> = (vec3<f32>(x_3010.z, x_3010.x, x_3010.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3013 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
            let x_3015 : vec4<f32> = u_xlat12;
            let x_3017 : vec2<f32> = (vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3018 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3017.x, x_3017.y, x_3018.z, x_3018.w);
            let x_3021 : f32 = u_xlat15.y;
            u_xlat14.x = x_3021;
            let x_3023 : vec2<f32> = u_xlat58;
            let x_3026 : vec2<f32> = ((vec2<f32>(x_3023.x, x_3023.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3027 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3027.x, x_3026.x, x_3027.z, x_3026.y);
            let x_3029 : vec2<f32> = u_xlat58;
            let x_3032 : vec2<f32> = ((vec2<f32>(x_3029.x, x_3029.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3033 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3032.x, x_3033.y, x_3032.y, x_3033.w);
            let x_3036 : f32 = u_xlat11.x;
            u_xlat12.y = x_3036;
            let x_3039 : f32 = u_xlat13.y;
            u_xlat12.w = x_3039;
            let x_3041 : vec4<f32> = u_xlat12;
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3041 + x_3042);
            let x_3044 : vec2<f32> = u_xlat58;
            let x_3047 : vec2<f32> = ((vec2<f32>(x_3044.y, x_3044.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3048 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3048.x, x_3047.x, x_3048.z, x_3047.y);
            let x_3050 : vec2<f32> = u_xlat58;
            let x_3053 : vec2<f32> = ((vec2<f32>(x_3050.y, x_3050.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3054 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3053.x, x_3054.y, x_3053.y, x_3054.w);
            let x_3057 : f32 = u_xlat11.y;
            u_xlat13.y = x_3057;
            let x_3059 : vec4<f32> = u_xlat13;
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat11 = (x_3059 + x_3060);
            let x_3062 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = u_xlat14;
            u_xlat12 = (x_3062 / x_3063);
            let x_3065 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_3065 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3067 : vec4<f32> = u_xlat13;
            let x_3068 : vec4<f32> = u_xlat11;
            u_xlat13 = (x_3067 / x_3068);
            let x_3070 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3070 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3075 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_3072.w, x_3072.x, x_3072.y, x_3072.z) * vec4<f32>(x_3075.x, x_3075.x, x_3075.x, x_3075.x));
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3081 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3078.x, x_3078.w, x_3078.y, x_3078.z) * vec4<f32>(x_3081.y, x_3081.y, x_3081.y, x_3081.y));
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3085 : vec3<f32> = vec3<f32>(x_3084.y, x_3084.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3085.x, x_3086.y, x_3085.y, x_3085.z);
            let x_3089 : f32 = u_xlat13.x;
            u_xlat15.y = x_3089;
            let x_3091 : vec4<f32> = u_xlat10;
            let x_3094 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3097 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3091.x, x_3091.y, x_3091.x, x_3091.y) * vec4<f32>(x_3094.x, x_3094.y, x_3094.x, x_3094.y)) + vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3097.y));
            let x_3100 : vec4<f32> = u_xlat10;
            let x_3103 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat15;
            u_xlat58 = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3103.x, x_3103.y)) + vec2<f32>(x_3106.w, x_3106.y));
            let x_3110 : f32 = u_xlat15.y;
            u_xlat12.y = x_3110;
            let x_3113 : f32 = u_xlat13.z;
            u_xlat15.y = x_3113;
            let x_3115 : vec4<f32> = u_xlat10;
            let x_3118 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) * vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y)) + vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3121.y));
            let x_3124 : vec4<f32> = u_xlat10;
            let x_3127 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat15;
            let x_3132 : vec2<f32> = ((vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(x_3127.x, x_3127.y)) + vec2<f32>(x_3130.w, x_3130.y));
            let x_3133 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
            let x_3136 : f32 = u_xlat15.y;
            u_xlat12.z = x_3136;
            let x_3138 : vec4<f32> = u_xlat10;
            let x_3141 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3144 : vec4<f32> = u_xlat12;
            u_xlat19 = ((vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y) * vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y)) + vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.z));
            let x_3148 : f32 = u_xlat13.w;
            u_xlat15.y = x_3148;
            let x_3151 : vec4<f32> = u_xlat10;
            let x_3154 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat15;
            u_xlat20 = ((vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y) * vec4<f32>(x_3154.x, x_3154.y, x_3154.x, x_3154.y)) + vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3157.y));
            let x_3161 : vec4<f32> = u_xlat10;
            let x_3164 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3167 : vec4<f32> = u_xlat15;
            u_xlat36 = ((vec2<f32>(x_3161.x, x_3161.y) * vec2<f32>(x_3164.x, x_3164.y)) + vec2<f32>(x_3167.w, x_3167.y));
            let x_3171 : f32 = u_xlat15.y;
            u_xlat12.w = x_3171;
            let x_3174 : vec4<f32> = u_xlat10;
            let x_3177 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat66 = ((vec2<f32>(x_3174.x, x_3174.y) * vec2<f32>(x_3177.x, x_3177.y)) + vec2<f32>(x_3180.x, x_3180.w));
            let x_3183 : vec4<f32> = u_xlat15;
            let x_3184 : vec3<f32> = vec3<f32>(x_3183.x, x_3183.z, x_3183.w);
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3184.x, x_3185.y, x_3184.y, x_3184.z);
            let x_3187 : vec4<f32> = u_xlat10;
            let x_3190 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3193.y));
            let x_3197 : vec4<f32> = u_xlat10;
            let x_3200 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3203 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3197.x, x_3197.y) * vec2<f32>(x_3200.x, x_3200.y)) + vec2<f32>(x_3203.w, x_3203.y));
            let x_3207 : f32 = u_xlat12.x;
            u_xlat13.x = x_3207;
            let x_3209 : vec4<f32> = u_xlat10;
            let x_3212 : vec4<f32> = x_284.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat13;
            let x_3217 : vec2<f32> = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3212.x, x_3212.y)) + vec2<f32>(x_3215.x, x_3215.y));
            let x_3218 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
            let x_3221 : vec4<f32> = u_xlat11;
            let x_3223 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_3221.x, x_3221.x, x_3221.x, x_3221.x) * x_3223);
            let x_3226 : vec4<f32> = u_xlat11;
            let x_3228 : vec4<f32> = u_xlat14;
            u_xlat22 = (vec4<f32>(x_3226.y, x_3226.y, x_3226.y, x_3226.y) * x_3228);
            let x_3231 : vec4<f32> = u_xlat11;
            let x_3233 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3231.z, x_3231.z, x_3231.z, x_3231.z) * x_3233);
            let x_3235 : vec4<f32> = u_xlat11;
            let x_3237 : vec4<f32> = u_xlat14;
            u_xlat11 = (vec4<f32>(x_3235.w, x_3235.w, x_3235.w, x_3235.w) * x_3237);
            let x_3240 : vec4<f32> = u_xlat16;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat9.z;
            txVec43 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec43;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat78 = x_3252;
            let x_3254 : vec4<f32> = u_xlat16;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.z, x_3254.w);
            let x_3257 : f32 = u_xlat9.z;
            txVec44 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec44;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat79 = x_3266;
            let x_3267 : f32 = u_xlat79;
            let x_3269 : f32 = u_xlat21.y;
            u_xlat79 = (x_3267 * x_3269);
            let x_3272 : f32 = u_xlat21.x;
            let x_3273 : f32 = u_xlat78;
            let x_3275 : f32 = u_xlat79;
            u_xlat78 = ((x_3272 * x_3273) + x_3275);
            let x_3278 : vec2<f32> = u_xlat58;
            let x_3280 : f32 = u_xlat9.z;
            txVec45 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3287 : vec3<f32> = txVec45;
            let x_3289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3287.xy, x_3287.z);
            u_xlat79 = x_3289;
            let x_3291 : f32 = u_xlat21.z;
            let x_3292 : f32 = u_xlat79;
            let x_3294 : f32 = u_xlat78;
            u_xlat78 = ((x_3291 * x_3292) + x_3294);
            let x_3297 : vec4<f32> = u_xlat19;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.x, x_3297.y);
            let x_3300 : f32 = u_xlat9.z;
            txVec46 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec46;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat79 = x_3309;
            let x_3311 : f32 = u_xlat21.w;
            let x_3312 : f32 = u_xlat79;
            let x_3314 : f32 = u_xlat78;
            u_xlat78 = ((x_3311 * x_3312) + x_3314);
            let x_3317 : vec4<f32> = u_xlat17;
            let x_3318 : vec2<f32> = vec2<f32>(x_3317.x, x_3317.y);
            let x_3320 : f32 = u_xlat9.z;
            txVec47 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec47;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat79 = x_3329;
            let x_3331 : f32 = u_xlat22.x;
            let x_3332 : f32 = u_xlat79;
            let x_3334 : f32 = u_xlat78;
            u_xlat78 = ((x_3331 * x_3332) + x_3334);
            let x_3337 : vec4<f32> = u_xlat17;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.z, x_3337.w);
            let x_3340 : f32 = u_xlat9.z;
            txVec48 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec48;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat79 = x_3349;
            let x_3351 : f32 = u_xlat22.y;
            let x_3352 : f32 = u_xlat79;
            let x_3354 : f32 = u_xlat78;
            u_xlat78 = ((x_3351 * x_3352) + x_3354);
            let x_3357 : vec4<f32> = u_xlat18;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.x, x_3357.y);
            let x_3360 : f32 = u_xlat9.z;
            txVec49 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec49;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat79 = x_3369;
            let x_3371 : f32 = u_xlat22.z;
            let x_3372 : f32 = u_xlat79;
            let x_3374 : f32 = u_xlat78;
            u_xlat78 = ((x_3371 * x_3372) + x_3374);
            let x_3377 : vec4<f32> = u_xlat19;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.z, x_3377.w);
            let x_3380 : f32 = u_xlat9.z;
            txVec50 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec50;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat79 = x_3389;
            let x_3391 : f32 = u_xlat22.w;
            let x_3392 : f32 = u_xlat79;
            let x_3394 : f32 = u_xlat78;
            u_xlat78 = ((x_3391 * x_3392) + x_3394);
            let x_3397 : vec4<f32> = u_xlat20;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.x, x_3397.y);
            let x_3400 : f32 = u_xlat9.z;
            txVec51 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec51;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat79 = x_3409;
            let x_3411 : f32 = u_xlat23.x;
            let x_3412 : f32 = u_xlat79;
            let x_3414 : f32 = u_xlat78;
            u_xlat78 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec4<f32> = u_xlat20;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.z, x_3417.w);
            let x_3420 : f32 = u_xlat9.z;
            txVec52 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec52;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat79 = x_3429;
            let x_3431 : f32 = u_xlat23.y;
            let x_3432 : f32 = u_xlat79;
            let x_3434 : f32 = u_xlat78;
            u_xlat78 = ((x_3431 * x_3432) + x_3434);
            let x_3437 : vec2<f32> = u_xlat36;
            let x_3439 : f32 = u_xlat9.z;
            txVec53 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec53;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat79 = x_3448;
            let x_3450 : f32 = u_xlat23.z;
            let x_3451 : f32 = u_xlat79;
            let x_3453 : f32 = u_xlat78;
            u_xlat78 = ((x_3450 * x_3451) + x_3453);
            let x_3456 : vec2<f32> = u_xlat66;
            let x_3458 : f32 = u_xlat9.z;
            txVec54 = vec3<f32>(x_3456.x, x_3456.y, x_3458);
            let x_3465 : vec3<f32> = txVec54;
            let x_3467 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3465.xy, x_3465.z);
            u_xlat79 = x_3467;
            let x_3469 : f32 = u_xlat23.w;
            let x_3470 : f32 = u_xlat79;
            let x_3472 : f32 = u_xlat78;
            u_xlat78 = ((x_3469 * x_3470) + x_3472);
            let x_3475 : vec4<f32> = u_xlat15;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat9.z;
            txVec55 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec55;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat79 = x_3487;
            let x_3489 : f32 = u_xlat11.x;
            let x_3490 : f32 = u_xlat79;
            let x_3492 : f32 = u_xlat78;
            u_xlat78 = ((x_3489 * x_3490) + x_3492);
            let x_3495 : vec4<f32> = u_xlat15;
            let x_3496 : vec2<f32> = vec2<f32>(x_3495.z, x_3495.w);
            let x_3498 : f32 = u_xlat9.z;
            txVec56 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec56;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat79 = x_3507;
            let x_3509 : f32 = u_xlat11.y;
            let x_3510 : f32 = u_xlat79;
            let x_3512 : f32 = u_xlat78;
            u_xlat78 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec2<f32> = u_xlat61;
            let x_3517 : f32 = u_xlat9.z;
            txVec57 = vec3<f32>(x_3515.x, x_3515.y, x_3517);
            let x_3524 : vec3<f32> = txVec57;
            let x_3526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3524.xy, x_3524.z);
            u_xlat79 = x_3526;
            let x_3528 : f32 = u_xlat11.z;
            let x_3529 : f32 = u_xlat79;
            let x_3531 : f32 = u_xlat78;
            u_xlat78 = ((x_3528 * x_3529) + x_3531);
            let x_3534 : vec4<f32> = u_xlat10;
            let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
            let x_3537 : f32 = u_xlat9.z;
            txVec58 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec58;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat79 = x_3546;
            let x_3548 : f32 = u_xlat11.w;
            let x_3549 : f32 = u_xlat79;
            let x_3551 : f32 = u_xlat78;
            u_xlat54.x = ((x_3548 * x_3549) + x_3551);
          }
        }
      } else {
        let x_3556 : vec4<f32> = u_xlat9;
        let x_3557 : vec2<f32> = vec2<f32>(x_3556.x, x_3556.y);
        let x_3559 : f32 = u_xlat9.z;
        txVec59 = vec3<f32>(x_3557.x, x_3557.y, x_3559);
        let x_3566 : vec3<f32> = txVec59;
        let x_3568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3566.xy, x_3566.z);
        u_xlat54.x = x_3568;
      }
      let x_3570 : i32 = u_xlati76;
      let x_3572 : f32 = x_284.x_AdditionalShadowParams[x_3570].x;
      u_xlat78 = (1.0f + -(x_3572));
      let x_3576 : f32 = u_xlat54.x;
      let x_3577 : i32 = u_xlati76;
      let x_3579 : f32 = x_284.x_AdditionalShadowParams[x_3577].x;
      let x_3581 : f32 = u_xlat78;
      u_xlat54.x = ((x_3576 * x_3579) + x_3581);
      let x_3585 : f32 = u_xlat9.z;
      u_xlatb78 = (0.0f >= x_3585);
      let x_3589 : f32 = u_xlat9.z;
      u_xlatb79 = (x_3589 >= 1.0f);
      let x_3591 : bool = u_xlatb78;
      let x_3592 : bool = u_xlatb79;
      u_xlatb78 = (x_3591 | x_3592);
      let x_3594 : bool = u_xlatb78;
      if (x_3594) {
        x_3595 = 1.0f;
      } else {
        let x_3600 : f32 = u_xlat54.x;
        x_3595 = x_3600;
      }
      let x_3601 : f32 = x_3595;
      u_xlat54.x = x_3601;
    } else {
      u_xlat54.x = 1.0f;
    }
    let x_3606 : f32 = u_xlat54.x;
    u_xlat78 = (-(x_3606) + 1.0f);
    let x_3610 : f32 = u_xlat1.x;
    let x_3611 : f32 = u_xlat78;
    let x_3614 : f32 = u_xlat54.x;
    u_xlat54.x = ((x_3610 * x_3611) + x_3614);
    let x_3618 : i32 = u_xlati76;
    u_xlati78 = (1i << bitcast<u32>((x_3618 & 31i)));
    let x_3622 : i32 = u_xlati78;
    let x_3625 : f32 = x_1859.x_AdditionalLightsCookieEnableBits;
    u_xlati78 = bitcast<i32>((bitcast<u32>(x_3622) & bitcast<u32>(x_3625)));
    let x_3629 : i32 = u_xlati78;
    if ((x_3629 != 0i)) {
      let x_3633 : i32 = u_xlati76;
      let x_3635 : f32 = x_1859.x_AdditionalLightsLightTypes[x_3633].el;
      u_xlati78 = i32(x_3635);
      let x_3638 : i32 = u_xlati78;
      u_xlati79 = select(1i, 0i, (x_3638 != 0i));
      let x_3642 : i32 = u_xlati76;
      u_xlati80 = (x_3642 << bitcast<u32>(2i));
      let x_3644 : i32 = u_xlati79;
      if ((x_3644 != 0i)) {
        let x_3648 : vec3<f32> = vs_TEXCOORD1;
        let x_3650 : i32 = u_xlati80;
        let x_3653 : i32 = u_xlati80;
        let x_3657 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3650 + 1i) / 4i)][((x_3653 + 1i) % 4i)];
        let x_3659 : vec3<f32> = (vec3<f32>(x_3648.y, x_3648.y, x_3648.y) * vec3<f32>(x_3657.x, x_3657.y, x_3657.w));
        let x_3660 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
        let x_3662 : i32 = u_xlati80;
        let x_3664 : i32 = u_xlati80;
        let x_3667 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[(x_3662 / 4i)][(x_3664 % 4i)];
        let x_3669 : vec3<f32> = vs_TEXCOORD1;
        let x_3672 : vec4<f32> = u_xlat9;
        let x_3674 : vec3<f32> = ((vec3<f32>(x_3667.x, x_3667.y, x_3667.w) * vec3<f32>(x_3669.x, x_3669.x, x_3669.x)) + vec3<f32>(x_3672.x, x_3672.y, x_3672.z));
        let x_3675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3674.x, x_3674.y, x_3674.z, x_3675.w);
        let x_3677 : i32 = u_xlati80;
        let x_3680 : i32 = u_xlati80;
        let x_3684 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3677 + 2i) / 4i)][((x_3680 + 2i) % 4i)];
        let x_3686 : vec3<f32> = vs_TEXCOORD1;
        let x_3689 : vec4<f32> = u_xlat9;
        let x_3691 : vec3<f32> = ((vec3<f32>(x_3684.x, x_3684.y, x_3684.w) * vec3<f32>(x_3686.z, x_3686.z, x_3686.z)) + vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
        let x_3692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
        let x_3694 : vec4<f32> = u_xlat9;
        let x_3696 : i32 = u_xlati80;
        let x_3699 : i32 = u_xlati80;
        let x_3703 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3696 + 3i) / 4i)][((x_3699 + 3i) % 4i)];
        let x_3705 : vec3<f32> = (vec3<f32>(x_3694.x, x_3694.y, x_3694.z) + vec3<f32>(x_3703.x, x_3703.y, x_3703.w));
        let x_3706 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
        let x_3708 : vec4<f32> = u_xlat9;
        let x_3710 : vec4<f32> = u_xlat9;
        let x_3712 : vec2<f32> = (vec2<f32>(x_3708.x, x_3708.y) / vec2<f32>(x_3710.z, x_3710.z));
        let x_3713 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3712.x, x_3712.y, x_3713.z, x_3713.w);
        let x_3715 : vec4<f32> = u_xlat9;
        let x_3718 : vec2<f32> = ((vec2<f32>(x_3715.x, x_3715.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3719 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3718.x, x_3718.y, x_3719.z, x_3719.w);
        let x_3721 : vec4<f32> = u_xlat9;
        let x_3725 : vec2<f32> = clamp(vec2<f32>(x_3721.x, x_3721.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3725.x, x_3725.y, x_3726.z, x_3726.w);
        let x_3728 : i32 = u_xlati76;
        let x_3730 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3728];
        let x_3732 : vec4<f32> = u_xlat9;
        let x_3735 : i32 = u_xlati76;
        let x_3737 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3735];
        let x_3739 : vec2<f32> = ((vec2<f32>(x_3730.x, x_3730.y) * vec2<f32>(x_3732.x, x_3732.y)) + vec2<f32>(x_3737.z, x_3737.w));
        let x_3740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_3739.x, x_3739.y, x_3740.z, x_3740.w);
      } else {
        let x_3743 : i32 = u_xlati78;
        u_xlatb78 = (x_3743 == 1i);
        let x_3745 : bool = u_xlatb78;
        u_xlati78 = select(0i, 1i, x_3745);
        let x_3747 : i32 = u_xlati78;
        if ((x_3747 != 0i)) {
          let x_3751 : vec3<f32> = vs_TEXCOORD1;
          let x_3753 : i32 = u_xlati80;
          let x_3756 : i32 = u_xlati80;
          let x_3760 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3753 + 1i) / 4i)][((x_3756 + 1i) % 4i)];
          u_xlat57 = (vec2<f32>(x_3751.y, x_3751.y) * vec2<f32>(x_3760.x, x_3760.y));
          let x_3763 : i32 = u_xlati80;
          let x_3765 : i32 = u_xlati80;
          let x_3768 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[(x_3763 / 4i)][(x_3765 % 4i)];
          let x_3770 : vec3<f32> = vs_TEXCOORD1;
          let x_3773 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3768.x, x_3768.y) * vec2<f32>(x_3770.x, x_3770.x)) + x_3773);
          let x_3775 : i32 = u_xlati80;
          let x_3778 : i32 = u_xlati80;
          let x_3782 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3775 + 2i) / 4i)][((x_3778 + 2i) % 4i)];
          let x_3784 : vec3<f32> = vs_TEXCOORD1;
          let x_3787 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3782.x, x_3782.y) * vec2<f32>(x_3784.z, x_3784.z)) + x_3787);
          let x_3789 : vec2<f32> = u_xlat57;
          let x_3790 : i32 = u_xlati80;
          let x_3793 : i32 = u_xlati80;
          let x_3797 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3790 + 3i) / 4i)][((x_3793 + 3i) % 4i)];
          u_xlat57 = (x_3789 + vec2<f32>(x_3797.x, x_3797.y));
          let x_3800 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3800 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3803 : vec2<f32> = u_xlat57;
          u_xlat57 = fract(x_3803);
          let x_3805 : i32 = u_xlati76;
          let x_3807 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3805];
          let x_3809 : vec2<f32> = u_xlat57;
          let x_3811 : i32 = u_xlati76;
          let x_3813 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3811];
          let x_3815 : vec2<f32> = ((vec2<f32>(x_3807.x, x_3807.y) * x_3809) + vec2<f32>(x_3813.z, x_3813.w));
          let x_3816 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3815.x, x_3815.y, x_3816.z, x_3816.w);
        } else {
          let x_3819 : vec3<f32> = vs_TEXCOORD1;
          let x_3821 : i32 = u_xlati80;
          let x_3824 : i32 = u_xlati80;
          let x_3828 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3821 + 1i) / 4i)][((x_3824 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_3819.y, x_3819.y, x_3819.y, x_3819.y) * x_3828);
          let x_3830 : i32 = u_xlati80;
          let x_3832 : i32 = u_xlati80;
          let x_3835 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[(x_3830 / 4i)][(x_3832 % 4i)];
          let x_3836 : vec3<f32> = vs_TEXCOORD1;
          let x_3839 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3835 * vec4<f32>(x_3836.x, x_3836.x, x_3836.x, x_3836.x)) + x_3839);
          let x_3841 : i32 = u_xlati80;
          let x_3844 : i32 = u_xlati80;
          let x_3848 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3841 + 2i) / 4i)][((x_3844 + 2i) % 4i)];
          let x_3849 : vec3<f32> = vs_TEXCOORD1;
          let x_3852 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_3848 * vec4<f32>(x_3849.z, x_3849.z, x_3849.z, x_3849.z)) + x_3852);
          let x_3854 : vec4<f32> = u_xlat10;
          let x_3855 : i32 = u_xlati80;
          let x_3858 : i32 = u_xlati80;
          let x_3862 : vec4<f32> = x_1859.x_AdditionalLightsWorldToLights[((x_3855 + 3i) / 4i)][((x_3858 + 3i) % 4i)];
          u_xlat10 = (x_3854 + x_3862);
          let x_3864 : vec4<f32> = u_xlat10;
          let x_3866 : vec4<f32> = u_xlat10;
          let x_3868 : vec3<f32> = (vec3<f32>(x_3864.x, x_3864.y, x_3864.z) / vec3<f32>(x_3866.w, x_3866.w, x_3866.w));
          let x_3869 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3868.x, x_3868.y, x_3868.z, x_3869.w);
          let x_3871 : vec4<f32> = u_xlat10;
          let x_3873 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(vec3<f32>(x_3871.x, x_3871.y, x_3871.z), vec3<f32>(x_3873.x, x_3873.y, x_3873.z));
          let x_3876 : f32 = u_xlat78;
          u_xlat78 = inverseSqrt(x_3876);
          let x_3878 : f32 = u_xlat78;
          let x_3880 : vec4<f32> = u_xlat10;
          let x_3882 : vec3<f32> = (vec3<f32>(x_3878, x_3878, x_3878) * vec3<f32>(x_3880.x, x_3880.y, x_3880.z));
          let x_3883 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3882.x, x_3882.y, x_3882.z, x_3883.w);
          let x_3885 : vec4<f32> = u_xlat10;
          u_xlat78 = dot(abs(vec3<f32>(x_3885.x, x_3885.y, x_3885.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3890 : f32 = u_xlat78;
          u_xlat78 = max(x_3890, 0.00000099999999747524f);
          let x_3893 : f32 = u_xlat78;
          u_xlat78 = (1.0f / x_3893);
          let x_3895 : f32 = u_xlat78;
          let x_3897 : vec4<f32> = u_xlat10;
          let x_3899 : vec3<f32> = (vec3<f32>(x_3895, x_3895, x_3895) * vec3<f32>(x_3897.z, x_3897.x, x_3897.y));
          let x_3900 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3899.x, x_3899.y, x_3899.z, x_3900.w);
          let x_3903 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_3903);
          let x_3907 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_3907, 0.0f, 1.0f);
          let x_3911 : vec4<f32> = u_xlat11;
          let x_3913 : vec4<bool> = (vec4<f32>(x_3911.y, x_3911.z, x_3911.y, x_3911.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb57 = vec2<bool>(x_3913.x, x_3913.y);
          let x_3916 : bool = u_xlatb57.x;
          if (x_3916) {
            let x_3921 : f32 = u_xlat11.x;
            x_3917 = x_3921;
          } else {
            let x_3924 : f32 = u_xlat11.x;
            x_3917 = -(x_3924);
          }
          let x_3926 : f32 = x_3917;
          u_xlat57.x = x_3926;
          let x_3929 : bool = u_xlatb57.y;
          if (x_3929) {
            let x_3934 : f32 = u_xlat11.x;
            x_3930 = x_3934;
          } else {
            let x_3937 : f32 = u_xlat11.x;
            x_3930 = -(x_3937);
          }
          let x_3939 : f32 = x_3930;
          u_xlat57.y = x_3939;
          let x_3941 : vec4<f32> = u_xlat10;
          let x_3943 : f32 = u_xlat78;
          let x_3946 : vec2<f32> = u_xlat57;
          u_xlat57 = ((vec2<f32>(x_3941.x, x_3941.y) * vec2<f32>(x_3943, x_3943)) + x_3946);
          let x_3948 : vec2<f32> = u_xlat57;
          u_xlat57 = ((x_3948 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3951 : vec2<f32> = u_xlat57;
          u_xlat57 = clamp(x_3951, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3955 : i32 = u_xlati76;
          let x_3957 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3955];
          let x_3959 : vec2<f32> = u_xlat57;
          let x_3961 : i32 = u_xlati76;
          let x_3963 : vec4<f32> = x_1859.x_AdditionalLightsCookieAtlasUVRects[x_3961];
          let x_3965 : vec2<f32> = ((vec2<f32>(x_3957.x, x_3957.y) * x_3959) + vec2<f32>(x_3963.z, x_3963.w));
          let x_3966 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3965.x, x_3965.y, x_3966.z, x_3966.w);
        }
      }
      let x_3973 : vec4<f32> = u_xlat9;
      let x_3975 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3973.x, x_3973.y), 0.0f);
      u_xlat9 = x_3975;
      let x_3977 : bool = u_xlatb6.y;
      if (x_3977) {
        let x_3982 : f32 = u_xlat9.w;
        x_3978 = x_3982;
      } else {
        let x_3985 : f32 = u_xlat9.x;
        x_3978 = x_3985;
      }
      let x_3986 : f32 = x_3978;
      u_xlat78 = x_3986;
      let x_3988 : bool = u_xlatb6.x;
      if (x_3988) {
        let x_3992 : vec4<f32> = u_xlat9;
        x_3989 = vec3<f32>(x_3992.x, x_3992.y, x_3992.z);
      } else {
        let x_3995 : f32 = u_xlat78;
        x_3989 = vec3<f32>(x_3995, x_3995, x_3995);
      }
      let x_3997 : vec3<f32> = x_3989;
      let x_3998 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_3997.x, x_3997.y, x_3997.z, x_3998.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_4004 : vec4<f32> = u_xlat9;
    let x_4006 : i32 = u_xlati76;
    let x_4008 : vec4<f32> = x_2169.x_AdditionalLightsColor[x_4006];
    let x_4010 : vec3<f32> = (vec3<f32>(x_4004.x, x_4004.y, x_4004.z) * vec3<f32>(x_4008.x, x_4008.y, x_4008.z));
    let x_4011 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4010.x, x_4010.y, x_4010.z, x_4011.w);
    let x_4013 : f32 = u_xlat77;
    let x_4015 : f32 = u_xlat54.x;
    u_xlat76 = (x_4013 * x_4015);
    let x_4017 : f32 = u_xlat76;
    let x_4019 : vec4<f32> = u_xlat9;
    let x_4021 : vec3<f32> = (vec3<f32>(x_4017, x_4017, x_4017) * vec3<f32>(x_4019.x, x_4019.y, x_4019.z));
    let x_4022 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4021.x, x_4021.y, x_4021.z, x_4022.w);
    let x_4024 : vec4<f32> = u_xlat2;
    let x_4026 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_4024.x, x_4024.y, x_4024.z), vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
    let x_4029 : f32 = u_xlat76;
    u_xlat76 = clamp(x_4029, 0.0f, 1.0f);
    let x_4031 : f32 = u_xlat76;
    let x_4033 : vec4<f32> = u_xlat9;
    let x_4035 : vec3<f32> = (vec3<f32>(x_4031, x_4031, x_4031) * vec3<f32>(x_4033.x, x_4033.y, x_4033.z));
    let x_4036 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4035.x, x_4035.y, x_4035.z, x_4036.w);
    let x_4038 : vec3<f32> = u_xlat3;
    let x_4039 : vec3<f32> = u_xlat24;
    let x_4042 : vec4<f32> = u_xlat8;
    let x_4044 : vec3<f32> = ((x_4038 * vec3<f32>(x_4039.x, x_4039.x, x_4039.x)) + vec3<f32>(x_4042.x, x_4042.y, x_4042.z));
    let x_4045 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
    let x_4047 : vec4<f32> = u_xlat8;
    let x_4049 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_4047.x, x_4047.y, x_4047.z), vec3<f32>(x_4049.x, x_4049.y, x_4049.z));
    let x_4052 : f32 = u_xlat76;
    u_xlat76 = max(x_4052, 1.17549435e-38f);
    let x_4054 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_4054);
    let x_4056 : f32 = u_xlat76;
    let x_4058 : vec4<f32> = u_xlat8;
    let x_4060 : vec3<f32> = (vec3<f32>(x_4056, x_4056, x_4056) * vec3<f32>(x_4058.x, x_4058.y, x_4058.z));
    let x_4061 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4060.x, x_4060.y, x_4060.z, x_4061.w);
    let x_4063 : vec4<f32> = u_xlat2;
    let x_4065 : vec4<f32> = u_xlat8;
    u_xlat76 = dot(vec3<f32>(x_4063.x, x_4063.y, x_4063.z), vec3<f32>(x_4065.x, x_4065.y, x_4065.z));
    let x_4068 : f32 = u_xlat76;
    u_xlat76 = clamp(x_4068, 0.0f, 1.0f);
    let x_4070 : f32 = u_xlat76;
    u_xlat76 = log2(x_4070);
    let x_4072 : f32 = u_xlat72;
    let x_4073 : f32 = u_xlat76;
    u_xlat76 = (x_4072 * x_4073);
    let x_4075 : f32 = u_xlat76;
    u_xlat76 = exp2(x_4075);
    let x_4077 : f32 = u_xlat76;
    let x_4080 : vec4<f32> = x_41.x_SpecColor;
    let x_4082 : vec3<f32> = (vec3<f32>(x_4077, x_4077, x_4077) * vec3<f32>(x_4080.x, x_4080.y, x_4080.z));
    let x_4083 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
    let x_4085 : vec4<f32> = u_xlat8;
    let x_4087 : vec4<f32> = u_xlat9;
    let x_4089 : vec3<f32> = (vec3<f32>(x_4085.x, x_4085.y, x_4085.z) * vec3<f32>(x_4087.x, x_4087.y, x_4087.z));
    let x_4090 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);
    let x_4092 : vec4<f32> = u_xlat10;
    let x_4094 : vec4<f32> = u_xlat1;
    let x_4097 : vec4<f32> = u_xlat8;
    let x_4099 : vec3<f32> = ((vec3<f32>(x_4092.x, x_4092.y, x_4092.z) * vec3<f32>(x_4094.y, x_4094.z, x_4094.w)) + vec3<f32>(x_4097.x, x_4097.y, x_4097.z));
    let x_4100 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4099.x, x_4099.y, x_4099.z, x_4100.w);
    let x_4102 : vec4<f32> = u_xlat7;
    let x_4104 : vec4<f32> = u_xlat8;
    let x_4106 : vec3<f32> = (vec3<f32>(x_4102.x, x_4102.y, x_4102.z) + vec3<f32>(x_4104.x, x_4104.y, x_4104.z));
    let x_4107 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4106.x, x_4106.y, x_4106.z, x_4107.w);

    continuing {
      let x_4109 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4109 + bitcast<u32>(1i));
    }
  }
  let x_4111 : vec4<f32> = u_xlat5;
  let x_4113 : vec4<f32> = u_xlat1;
  let x_4116 : vec4<f32> = u_xlat4;
  let x_4118 : vec3<f32> = ((vec3<f32>(x_4111.x, x_4111.y, x_4111.z) * vec3<f32>(x_4113.y, x_4113.z, x_4113.w)) + vec3<f32>(x_4116.x, x_4116.y, x_4116.z));
  let x_4119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
  let x_4123 : vec4<f32> = u_xlat7;
  let x_4125 : vec4<f32> = u_xlat1;
  let x_4127 : vec3<f32> = (vec3<f32>(x_4123.x, x_4123.y, x_4123.z) + vec3<f32>(x_4125.x, x_4125.y, x_4125.z));
  let x_4128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4127.x, x_4127.y, x_4127.z, x_4128.w);
  let x_4131 : f32 = x_41.x_Surface;
  u_xlatb24 = (x_4131 == 1.0f);
  let x_4133 : bool = u_xlatb24;
  let x_4134 : bool = u_xlatb48;
  u_xlatb24 = (x_4133 | x_4134);
  let x_4136 : bool = u_xlatb24;
  if (x_4136) {
    let x_4141 : f32 = u_xlat0.x;
    x_4137 = x_4141;
  } else {
    x_4137 = 1.0f;
  }
  let x_4143 : f32 = x_4137;
  SV_Target0.w = x_4143;
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


