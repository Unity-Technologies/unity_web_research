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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlati23 : i32;

@group(1) @binding(2) var<uniform> x_355 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb1 : bool;

@group(1) @binding(5) var<uniform> x_1754 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1993 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlatb73 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1837 : f32;
  var x_1849 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2130 : f32;
  var x_2139 : f32;
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
  var x_3731 : f32;
  var x_3744 : f32;
  var x_3792 : f32;
  var x_3804 : vec3<f32>;
  var x_3890 : f32;
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
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat23 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat69;
  let x_90 : f32 = u_xlat46;
  u_xlat46 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat46;
  u_xlat46 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat23;
  let x_97 : f32 = u_xlat46;
  u_xlat23 = (x_96 / x_97);
  let x_99 : f32 = u_xlat23;
  u_xlat23 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat23;
  u_xlat23 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb46;
  if (x_109) {
    let x_113 : f32 = u_xlat23;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat23 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat23;
  u_xlatb23 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb23;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat23;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_150 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec3<f32> = vs_TEXCOORD1;
  let x_190 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  let x_193 : vec3<f32> = (x_188 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = u_xlat5;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat6;
  let x_218 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_225 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_225 < x_228);
  let x_231 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_247);
  let x_253 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_253);
  let x_257 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_257);
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_262.y, x_262.z, x_262.w));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec3<f32> = max(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(x_273, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_279 : f32 = u_xlat23;
  u_xlat23 = (-(x_279) + 4.0f);
  let x_284 : f32 = u_xlat23;
  u_xlatu23 = u32(x_284);
  let x_288 : u32 = u_xlatu23;
  u_xlati23 = (bitcast<i32>(x_288) << bitcast<u32>(2i));
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : i32 = u_xlati23;
  let x_296 : i32 = u_xlati23;
  let x_300 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_293 + 1i) / 4i)][((x_296 + 1i) % 4i)];
  let x_302 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : i32 = u_xlati23;
  let x_307 : i32 = u_xlati23;
  let x_310 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_305 / 4i)][(x_307 % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.x, x_312.x, x_312.x)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati23;
  let x_323 : i32 = u_xlati23;
  let x_327 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_320 + 2i) / 4i)][((x_323 + 2i) % 4i)];
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : i32 = u_xlati23;
  let x_342 : i32 = u_xlati23;
  let x_346 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  let x_348 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  u_xlat2.w = 1.0f;
  let x_358 : vec4<f32> = x_355.unity_SHAr;
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_358, x_359);
  let x_364 : vec4<f32> = x_355.unity_SHAg;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_355.unity_SHAb;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_370, x_371);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_374.y, x_374.z, x_374.z, x_374.x) * vec4<f32>(x_376.x, x_376.y, x_376.z, x_376.z));
  let x_381 : vec4<f32> = x_355.unity_SHBr;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_355.unity_SHBg;
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_355.unity_SHBb;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_393, x_394);
  let x_398 : f32 = u_xlat2.y;
  let x_400 : f32 = u_xlat2.y;
  u_xlat23 = (x_398 * x_400);
  let x_403 : f32 = u_xlat2.x;
  let x_405 : f32 = u_xlat2.x;
  let x_407 : f32 = u_xlat23;
  u_xlat23 = ((x_403 * x_405) + -(x_407));
  let x_412 : vec4<f32> = x_355.unity_SHC;
  let x_414 : f32 = u_xlat23;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414, x_414, x_414)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : vec4<f32> = u_xlat5;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat4;
  let x_431 : vec3<f32> = max(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_159.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_436);
  let x_438 : bool = u_xlatb23;
  if (x_438) {
    let x_442 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb23 = (x_442 == 1.0f);
    let x_444 : bool = u_xlatb23;
    if (x_444) {
      let x_447 : vec4<f32> = u_xlat3;
      let x_451 : vec4<f32> = x_159.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_447.x, x_447.y, x_447.x, x_447.y) + x_451);
      let x_455 : vec4<f32> = u_xlat5;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_458 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_470 : vec3<f32> = txVec0;
      let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_470.xy, x_470.z);
      u_xlat6.x = x_472;
      let x_475 : vec4<f32> = u_xlat5;
      let x_476 : vec2<f32> = vec2<f32>(x_475.z, x_475.w);
      let x_478 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec1;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.y = x_487;
      let x_489 : vec4<f32> = u_xlat3;
      let x_493 : vec4<f32> = x_159.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y) + x_493);
      let x_496 : vec4<f32> = u_xlat5;
      let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
      let x_499 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_497.x, x_497.y, x_499);
      let x_506 : vec3<f32> = txVec2;
      let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
      u_xlat6.z = x_508;
      let x_511 : vec4<f32> = u_xlat5;
      let x_512 : vec2<f32> = vec2<f32>(x_511.z, x_511.w);
      let x_514 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec3;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat6.w = x_523;
      let x_525 : vec4<f32> = u_xlat6;
      u_xlat23 = dot(x_525, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_532 : f32 = x_159.x_MainLightShadowParams.y;
      u_xlatb69 = (x_532 == 2.0f);
      let x_534 : bool = u_xlatb69;
      if (x_534) {
        let x_537 : vec4<f32> = u_xlat3;
        let x_541 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_545 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_541.z, x_541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat5;
        let x_550 : vec2<f32> = floor(vec2<f32>(x_548.x, x_548.y));
        let x_551 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_555 : vec4<f32> = u_xlat3;
        let x_558 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_561 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(x_558.z, x_558.w)) + -(vec2<f32>(x_561.x, x_561.y)));
        let x_565 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_565.x, x_565.x, x_565.y, x_565.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_570 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_570.x, x_570.x, x_570.z, x_570.z) * vec4<f32>(x_572.x, x_572.x, x_572.z, x_572.z));
        let x_575 : vec4<f32> = u_xlat7;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.y, x_575.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_580.y, x_579.y, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_585 : vec2<f32> = u_xlat51;
        let x_587 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.z) * vec2<f32>(0.5f, 0.5f)) + -(x_585));
        let x_588 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_591 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_591) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec2<f32> = u_xlat51;
        let x_598 : vec2<f32> = min(x_596, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = u_xlat53;
        let x_608 : vec2<f32> = ((-(vec2<f32>(x_601.x, x_601.y)) * vec2<f32>(x_604.x, x_604.y)) + x_607);
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_611, vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat51;
        let x_615 : vec2<f32> = u_xlat51;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_613) * x_615) + vec2<f32>(x_617.y, x_617.w));
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_625 + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat7;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat53;
        let x_636 : vec2<f32> = (x_635 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat8;
        let x_641 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec2<f32> = u_xlat51;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_649.y, x_649.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : f32 = u_xlat8.x;
        u_xlat9.z = x_653;
        let x_656 : f32 = u_xlat51.x;
        u_xlat9.w = x_656;
        let x_659 : f32 = u_xlat10.x;
        u_xlat7.z = x_659;
        let x_662 : f32 = u_xlat6.x;
        u_xlat7.w = x_662;
        let x_665 : vec4<f32> = u_xlat7;
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_665.z, x_665.w, x_665.x, x_665.z) + vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z));
        let x_671 : f32 = u_xlat9.y;
        u_xlat8.z = x_671;
        let x_674 : f32 = u_xlat51.y;
        u_xlat8.w = x_674;
        let x_677 : f32 = u_xlat7.y;
        u_xlat10.z = x_677;
        let x_680 : f32 = u_xlat6.z;
        u_xlat10.w = x_680;
        let x_682 : vec4<f32> = u_xlat8;
        let x_684 : vec4<f32> = u_xlat10;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) + vec3<f32>(x_684.z, x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat7;
        let x_691 : vec4<f32> = u_xlat11;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.z, x_689.w) / vec3<f32>(x_691.z, x_691.w, x_691.y));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat7;
        let x_702 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat10;
        let x_707 : vec4<f32> = u_xlat6;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.z, x_705.y, x_705.w) / vec3<f32>(x_707.x, x_707.y, x_707.z));
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat8;
        let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_715 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat7;
        let x_720 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_722 : vec3<f32> = (vec3<f32>(x_717.y, x_717.x, x_717.z) * vec3<f32>(x_720.x, x_720.x, x_720.x));
        let x_723 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat8;
        let x_728 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.y, x_728.y, x_728.y));
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_734 : f32 = u_xlat8.x;
        u_xlat7.w = x_734;
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.y, x_742.w, x_742.x, x_742.w));
        let x_745 : vec4<f32> = u_xlat5;
        let x_748 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_751.z, x_751.w));
        let x_755 : f32 = u_xlat7.y;
        u_xlat8.w = x_755;
        let x_757 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = vec2<f32>(x_757.y, x_757.z);
        let x_759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_759.x, x_758.x, x_759.z, x_758.y);
        let x_761 : vec4<f32> = u_xlat5;
        let x_764 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.y));
        let x_770 : vec4<f32> = u_xlat5;
        let x_773 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.w, x_776.y, x_776.w, x_776.z));
        let x_779 : vec4<f32> = u_xlat5;
        let x_782 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.w, x_785.z, x_785.w));
        let x_789 : vec4<f32> = u_xlat6;
        let x_791 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_789.x, x_789.x, x_789.x, x_789.y) * vec4<f32>(x_791.z, x_791.w, x_791.y, x_791.z));
        let x_795 : vec4<f32> = u_xlat6;
        let x_797 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_795.y, x_795.y, x_795.z, x_795.z) * x_797);
        let x_800 : f32 = u_xlat6.z;
        let x_802 : f32 = u_xlat11.y;
        u_xlat69 = (x_800 * x_802);
        let x_805 : vec4<f32> = u_xlat9;
        let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
        let x_808 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec4;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_815.xy, x_815.z);
        u_xlat1.x = x_817;
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_831 : vec3<f32> = txVec5;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat71 = x_833;
        let x_834 : f32 = u_xlat71;
        let x_836 : f32 = u_xlat12.y;
        u_xlat71 = (x_834 * x_836);
        let x_839 : f32 = u_xlat12.x;
        let x_841 : f32 = u_xlat1.x;
        let x_843 : f32 = u_xlat71;
        u_xlat1.x = ((x_839 * x_841) + x_843);
        let x_847 : vec2<f32> = u_xlat51;
        let x_849 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec6;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat71 = x_858;
        let x_860 : f32 = u_xlat12.z;
        let x_861 : f32 = u_xlat71;
        let x_864 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_860 * x_861) + x_864);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec7;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat71 = x_880;
        let x_882 : f32 = u_xlat12.w;
        let x_883 : f32 = u_xlat71;
        let x_886 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_882 * x_883) + x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec8;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat71 = x_902;
        let x_904 : f32 = u_xlat13.x;
        let x_905 : f32 = u_xlat71;
        let x_908 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_904 * x_905) + x_908);
        let x_912 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_922 : vec3<f32> = txVec9;
        let x_924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_922.xy, x_922.z);
        u_xlat71 = x_924;
        let x_926 : f32 = u_xlat13.y;
        let x_927 : f32 = u_xlat71;
        let x_930 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_926 * x_927) + x_930);
        let x_934 : vec4<f32> = u_xlat8;
        let x_935 : vec2<f32> = vec2<f32>(x_934.z, x_934.w);
        let x_937 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec10;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_944.xy, x_944.z);
        u_xlat71 = x_946;
        let x_948 : f32 = u_xlat13.z;
        let x_949 : f32 = u_xlat71;
        let x_952 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_948 * x_949) + x_952);
        let x_956 : vec4<f32> = u_xlat7;
        let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
        let x_959 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_966 : vec3<f32> = txVec11;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_966.xy, x_966.z);
        u_xlat71 = x_968;
        let x_970 : f32 = u_xlat13.w;
        let x_971 : f32 = u_xlat71;
        let x_974 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_970 * x_971) + x_974);
        let x_978 : vec4<f32> = u_xlat7;
        let x_979 : vec2<f32> = vec2<f32>(x_978.z, x_978.w);
        let x_981 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_979.x, x_979.y, x_981);
        let x_988 : vec3<f32> = txVec12;
        let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_988.xy, x_988.z);
        u_xlat71 = x_990;
        let x_991 : f32 = u_xlat69;
        let x_992 : f32 = u_xlat71;
        let x_995 : f32 = u_xlat1.x;
        u_xlat23 = ((x_991 * x_992) + x_995);
      } else {
        let x_998 : vec4<f32> = u_xlat3;
        let x_1001 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1004 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat5;
        let x_1009 : vec2<f32> = floor(vec2<f32>(x_1007.x, x_1007.y));
        let x_1010 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
        let x_1012 : vec4<f32> = u_xlat3;
        let x_1015 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.z, x_1015.w)) + -(vec2<f32>(x_1018.x, x_1018.y)));
        let x_1022 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1022.x, x_1022.x, x_1022.y, x_1022.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1025.x, x_1025.x, x_1025.z, x_1025.z) * vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1030.y, x_1030.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1035.x, x_1034.x, x_1035.z, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1040 : vec2<f32> = u_xlat51;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1040));
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1043.w);
        let x_1045 : vec2<f32> = u_xlat51;
        let x_1047 : vec2<f32> = (-(x_1045) + vec2<f32>(1.0f, 1.0f));
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1050, vec2<f32>(0.0f, 0.0f));
        let x_1052 : vec2<f32> = u_xlat53;
        let x_1054 : vec2<f32> = u_xlat53;
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = ((-(x_1052) * x_1054) + vec2<f32>(x_1056.x, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1061, vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec2<f32> = u_xlat53;
        let x_1067 : vec2<f32> = u_xlat53;
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1071 : vec2<f32> = ((-(x_1065) * x_1067) + vec2<f32>(x_1069.y, x_1069.w));
        let x_1072 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1071.x, x_1072.y, x_1071.y);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1074.x, x_1074.y) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec3<f32> = u_xlat29;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.z) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1086 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1086 * 0.08163200318813323975f);
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1090.z, x_1090.x, x_1090.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat10.y;
        u_xlat9.x = x_1103;
        let x_1105 : vec2<f32> = u_xlat51;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec2<f32> = u_xlat51;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat6.x;
        u_xlat7.y = x_1123;
        let x_1126 : f32 = u_xlat8.y;
        u_xlat7.w = x_1126;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1128 + x_1129);
        let x_1131 : vec2<f32> = u_xlat51;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.y, x_1131.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1137 : vec2<f32> = u_xlat51;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1137.y, x_1137.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1144 : f32 = u_xlat6.y;
        u_xlat8.y = x_1144;
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1147 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1146 + x_1147);
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1149 / x_1150);
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1152 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1163.w, x_1163.x, x_1163.y, x_1163.z) * vec4<f32>(x_1166.x, x_1166.x, x_1166.x, x_1166.x));
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1172 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1169.x, x_1169.w, x_1169.y, x_1169.z) * vec4<f32>(x_1172.y, x_1172.y, x_1172.y, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1176 : vec3<f32> = vec3<f32>(x_1175.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1176.z);
        let x_1180 : f32 = u_xlat8.x;
        u_xlat10.y = x_1180;
        let x_1182 : vec4<f32> = u_xlat5;
        let x_1185 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1194 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat10.y;
        u_xlat7.y = x_1201;
        let x_1204 : f32 = u_xlat8.z;
        u_xlat10.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat5;
        let x_1209 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : f32 = u_xlat10.y;
        u_xlat7.z = x_1227;
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.z));
        let x_1240 : f32 = u_xlat8.w;
        u_xlat10.y = x_1240;
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1246 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat10.y;
        u_xlat7.w = x_1263;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec3<f32> = vec3<f32>(x_1275.x, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1277.y, x_1276.y, x_1276.z);
        let x_1279 : vec4<f32> = u_xlat5;
        let x_1282 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1289 : vec4<f32> = u_xlat5;
        let x_1292 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat7.x;
        u_xlat8.x = x_1299;
        let x_1301 : vec4<f32> = u_xlat5;
        let x_1304 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.x, x_1313.x) * x_1315);
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1318.y, x_1318.y, x_1318.y, x_1318.y) * x_1320);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1323.z, x_1323.z, x_1323.z, x_1323.z) * x_1325);
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1327.w, x_1327.w, x_1327.w, x_1327.w) * x_1329);
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec13;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat69 = x_1344;
        let x_1346 : vec4<f32> = u_xlat11;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec14;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat1.x = x_1358;
        let x_1361 : f32 = u_xlat1.x;
        let x_1363 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1361 * x_1363);
        let x_1367 : f32 = u_xlat16.x;
        let x_1368 : f32 = u_xlat69;
        let x_1371 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1367 * x_1368) + x_1371);
        let x_1374 : vec2<f32> = u_xlat51;
        let x_1376 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec15;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat1.x = x_1385;
        let x_1388 : f32 = u_xlat16.z;
        let x_1390 : f32 = u_xlat1.x;
        let x_1392 : f32 = u_xlat69;
        u_xlat69 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat14;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec16;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat1.x = x_1407;
        let x_1410 : f32 = u_xlat16.w;
        let x_1412 : f32 = u_xlat1.x;
        let x_1414 : f32 = u_xlat69;
        u_xlat69 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec17;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat1.x = x_1429;
        let x_1432 : f32 = u_xlat17.x;
        let x_1434 : f32 = u_xlat1.x;
        let x_1436 : f32 = u_xlat69;
        u_xlat69 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec18;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : f32 = u_xlat17.y;
        let x_1456 : f32 = u_xlat1.x;
        let x_1458 : f32 = u_xlat69;
        u_xlat69 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat13;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec19;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat1.x = x_1473;
        let x_1476 : f32 = u_xlat17.z;
        let x_1478 : f32 = u_xlat1.x;
        let x_1480 : f32 = u_xlat69;
        u_xlat69 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat14;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec20;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat1.x = x_1495;
        let x_1498 : f32 = u_xlat17.w;
        let x_1500 : f32 = u_xlat1.x;
        let x_1502 : f32 = u_xlat69;
        u_xlat69 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec21;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat1.x = x_1517;
        let x_1520 : f32 = u_xlat18.x;
        let x_1522 : f32 = u_xlat1.x;
        let x_1524 : f32 = u_xlat69;
        u_xlat69 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat15;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec22;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat1.x = x_1539;
        let x_1542 : f32 = u_xlat18.y;
        let x_1544 : f32 = u_xlat1.x;
        let x_1546 : f32 = u_xlat69;
        u_xlat69 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat30;
        let x_1551 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec23;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat1.x = x_1560;
        let x_1563 : f32 = u_xlat18.z;
        let x_1565 : f32 = u_xlat1.x;
        let x_1567 : f32 = u_xlat69;
        u_xlat69 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat59;
        let x_1572 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec24;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat1.x = x_1581;
        let x_1584 : f32 = u_xlat18.w;
        let x_1586 : f32 = u_xlat1.x;
        let x_1588 : f32 = u_xlat69;
        u_xlat69 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat10;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec25;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat1.x = x_1603;
        let x_1606 : f32 = u_xlat6.x;
        let x_1608 : f32 = u_xlat1.x;
        let x_1610 : f32 = u_xlat69;
        u_xlat69 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec26;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat1.x = x_1625;
        let x_1628 : f32 = u_xlat6.y;
        let x_1630 : f32 = u_xlat1.x;
        let x_1632 : f32 = u_xlat69;
        u_xlat69 = ((x_1628 * x_1630) + x_1632);
        let x_1635 : vec2<f32> = u_xlat54;
        let x_1637 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec27;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat1.x = x_1646;
        let x_1649 : f32 = u_xlat6.z;
        let x_1651 : f32 = u_xlat1.x;
        let x_1653 : f32 = u_xlat69;
        u_xlat69 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat5;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec28;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat1.x = x_1668;
        let x_1671 : f32 = u_xlat6.w;
        let x_1673 : f32 = u_xlat1.x;
        let x_1675 : f32 = u_xlat69;
        u_xlat23 = ((x_1671 * x_1673) + x_1675);
      }
    }
  } else {
    let x_1679 : vec4<f32> = u_xlat3;
    let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
    let x_1682 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
    let x_1689 : vec3<f32> = txVec29;
    let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
    u_xlat23 = x_1691;
  }
  let x_1693 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1693) + 1.0f);
  let x_1696 : f32 = u_xlat23;
  let x_1698 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1700 : f32 = u_xlat69;
  u_xlat23 = ((x_1696 * x_1698) + x_1700);
  let x_1703 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1703);
  let x_1707 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1707 >= 1.0f);
  let x_1709 : bool = u_xlatb69;
  let x_1710 : bool = u_xlatb1;
  u_xlatb69 = (x_1709 | x_1710);
  let x_1712 : bool = u_xlatb69;
  let x_1713 : f32 = u_xlat23;
  u_xlat23 = select(x_1713, 1.0f, x_1712);
  let x_1715 : vec3<f32> = vs_TEXCOORD1;
  let x_1718 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1720 : vec3<f32> = (x_1715 + -(x_1718));
  let x_1721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1723 : vec4<f32> = u_xlat3;
  let x_1725 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : f32 = u_xlat69;
  let x_1730 : f32 = x_159.x_MainLightShadowParams.z;
  let x_1733 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1728 * x_1730) + x_1733);
  let x_1737 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1737, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat23;
  u_xlat71 = (-(x_1740) + 1.0f);
  let x_1744 : f32 = u_xlat1.x;
  let x_1745 : f32 = u_xlat71;
  let x_1747 : f32 = u_xlat23;
  u_xlat23 = ((x_1744 * x_1745) + x_1747);
  let x_1756 : f32 = x_1754.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1756 == -1.0f));
  let x_1758 : bool = u_xlatb1;
  if (x_1758) {
    let x_1761 : vec3<f32> = vs_TEXCOORD1;
    let x_1764 : vec4<f32> = x_1754.x_MainLightWorldToLight[1i];
    let x_1766 : vec2<f32> = (vec2<f32>(x_1761.y, x_1761.y) * vec2<f32>(x_1764.x, x_1764.y));
    let x_1767 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
    let x_1770 : vec4<f32> = x_1754.x_MainLightWorldToLight[0i];
    let x_1772 : vec3<f32> = vs_TEXCOORD1;
    let x_1775 : vec4<f32> = u_xlat3;
    let x_1777 : vec2<f32> = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1772.x, x_1772.x)) + vec2<f32>(x_1775.x, x_1775.y));
    let x_1778 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
    let x_1781 : vec4<f32> = x_1754.x_MainLightWorldToLight[2i];
    let x_1783 : vec3<f32> = vs_TEXCOORD1;
    let x_1786 : vec4<f32> = u_xlat3;
    let x_1788 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * vec2<f32>(x_1783.z, x_1783.z)) + vec2<f32>(x_1786.x, x_1786.y));
    let x_1789 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
    let x_1791 : vec4<f32> = u_xlat3;
    let x_1794 : vec4<f32> = x_1754.x_MainLightWorldToLight[3i];
    let x_1796 : vec2<f32> = (vec2<f32>(x_1791.x, x_1791.y) + vec2<f32>(x_1794.x, x_1794.y));
    let x_1797 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
    let x_1799 : vec4<f32> = u_xlat3;
    let x_1802 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1803 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
    let x_1810 : vec4<f32> = u_xlat3;
    let x_1813 : f32 = x_27.x_GlobalMipBias.x;
    let x_1814 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1810.x, x_1810.y), x_1813);
    u_xlat3 = x_1814;
    let x_1819 : f32 = x_1754.x_MainLightCookieTextureFormat;
    let x_1821 : f32 = x_1754.x_MainLightCookieTextureFormat;
    let x_1823 : f32 = x_1754.x_MainLightCookieTextureFormat;
    let x_1825 : f32 = x_1754.x_MainLightCookieTextureFormat;
    let x_1826 : vec4<f32> = vec4<f32>(x_1819, x_1821, x_1823, x_1825);
    let x_1833 : vec4<bool> = (vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1833.x, x_1833.y);
    let x_1836 : bool = u_xlatb5.y;
    if (x_1836) {
      let x_1841 : f32 = u_xlat3.w;
      x_1837 = x_1841;
    } else {
      let x_1844 : f32 = u_xlat3.x;
      x_1837 = x_1844;
    }
    let x_1845 : f32 = x_1837;
    u_xlat1.x = x_1845;
    let x_1848 : bool = u_xlatb5.x;
    if (x_1848) {
      let x_1852 : vec4<f32> = u_xlat3;
      x_1849 = vec3<f32>(x_1852.x, x_1852.y, x_1852.z);
    } else {
      let x_1855 : vec4<f32> = u_xlat1;
      x_1849 = vec3<f32>(x_1855.x, x_1855.x, x_1855.x);
    }
    let x_1857 : vec3<f32> = x_1849;
    let x_1858 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1864 : vec4<f32> = u_xlat3;
  let x_1867 : vec4<f32> = x_27.x_MainLightColor;
  let x_1869 : vec3<f32> = (vec3<f32>(x_1864.x, x_1864.y, x_1864.z) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1872 : f32 = u_xlat23;
  let x_1874 : f32 = x_355.unity_LightData.z;
  u_xlat23 = (x_1872 * x_1874);
  let x_1876 : f32 = u_xlat23;
  let x_1878 : vec4<f32> = u_xlat3;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1876, x_1876, x_1876) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
  let x_1881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1883 : vec4<f32> = u_xlat2;
  let x_1886 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat23 = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1889 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1889, 0.0f, 1.0f);
  let x_1891 : f32 = u_xlat23;
  let x_1893 : vec4<f32> = u_xlat3;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891, x_1891, x_1891) * vec3<f32>(x_1893.x, x_1893.y, x_1893.z));
  let x_1896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat1;
  let x_1900 : vec4<f32> = u_xlat3;
  let x_1902 : vec3<f32> = (vec3<f32>(x_1898.y, x_1898.z, x_1898.w) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1906 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1908 : f32 = x_355.unity_LightData.y;
  u_xlat23 = min(x_1906, x_1908);
  let x_1910 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1910));
  let x_1913 : f32 = u_xlat69;
  let x_1916 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1919 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1913 * x_1916) + x_1919);
  let x_1921 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1921, 0.0f, 1.0f);
  let x_1924 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1926 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1928 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1930 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1931 : vec4<f32> = vec4<f32>(x_1924, x_1926, x_1928, x_1930);
  let x_1937 : vec4<bool> = (vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1931.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1937.x, x_1937.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1949 : u32 = u_xlatu_loop_1;
    let x_1950 : u32 = u_xlatu23;
    if ((x_1949 < x_1950)) {
    } else {
      break;
    }
    let x_1953 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1953 >> 2u);
    let x_1956 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1956 & 3u));
    let x_1959 : u32 = u_xlatu71;
    let x_1962 : vec4<f32> = x_355.unity_LightIndices[bitcast<i32>(x_1959)];
    let x_1972 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1977 : vec4<u32> = indexable[x_1972];
    u_xlat71 = dot(x_1962, bitcast<vec4<f32>>(x_1977));
    let x_1981 : f32 = u_xlat71;
    u_xlati71 = i32(x_1981);
    let x_1983 : vec3<f32> = vs_TEXCOORD1;
    let x_1994 : i32 = u_xlati71;
    let x_1996 : vec4<f32> = x_1993.x_AdditionalLightsPosition[x_1994];
    let x_1999 : i32 = u_xlati71;
    let x_2001 : vec4<f32> = x_1993.x_AdditionalLightsPosition[x_1999];
    let x_2003 : vec3<f32> = ((-(x_1983) * vec3<f32>(x_1996.w, x_1996.w, x_1996.w)) + vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2004 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
    let x_2007 : vec4<f32> = u_xlat7;
    let x_2009 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_2007.x, x_2007.y, x_2007.z), vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
    let x_2012 : f32 = u_xlat72;
    u_xlat72 = max(x_2012, 0.00006103515625f);
    let x_2016 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2016);
    let x_2018 : f32 = u_xlat73;
    let x_2020 : vec4<f32> = u_xlat7;
    let x_2022 : vec3<f32> = (vec3<f32>(x_2018, x_2018, x_2018) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
    let x_2023 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
    let x_2025 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2025);
    let x_2027 : f32 = u_xlat72;
    let x_2028 : i32 = u_xlati71;
    let x_2030 : f32 = x_1993.x_AdditionalLightsAttenuation[x_2028].x;
    u_xlat72 = (x_2027 * x_2030);
    let x_2032 : f32 = u_xlat72;
    let x_2034 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2032) * x_2034) + 1.0f);
    let x_2037 : f32 = u_xlat72;
    u_xlat72 = max(x_2037, 0.0f);
    let x_2039 : f32 = u_xlat72;
    let x_2040 : f32 = u_xlat72;
    u_xlat72 = (x_2039 * x_2040);
    let x_2042 : f32 = u_xlat72;
    let x_2043 : f32 = u_xlat73;
    u_xlat72 = (x_2042 * x_2043);
    let x_2045 : i32 = u_xlati71;
    let x_2047 : vec4<f32> = x_1993.x_AdditionalLightsSpotDir[x_2045];
    let x_2049 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2047.x, x_2047.y, x_2047.z), vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
    let x_2052 : f32 = u_xlat73;
    let x_2053 : i32 = u_xlati71;
    let x_2055 : f32 = x_1993.x_AdditionalLightsAttenuation[x_2053].z;
    let x_2057 : i32 = u_xlati71;
    let x_2059 : f32 = x_1993.x_AdditionalLightsAttenuation[x_2057].w;
    u_xlat73 = ((x_2052 * x_2055) + x_2059);
    let x_2061 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2061, 0.0f, 1.0f);
    let x_2063 : f32 = u_xlat73;
    let x_2064 : f32 = u_xlat73;
    u_xlat73 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat72;
    let x_2067 : f32 = u_xlat73;
    u_xlat72 = (x_2066 * x_2067);
    let x_2071 : i32 = u_xlati71;
    let x_2073 : f32 = x_159.x_AdditionalShadowParams[x_2071].w;
    u_xlati73 = i32(x_2073);
    let x_2076 : i32 = u_xlati73;
    u_xlatb51 = (x_2076 >= 0i);
    let x_2078 : bool = u_xlatb51;
    if (x_2078) {
      let x_2082 : i32 = u_xlati71;
      let x_2084 : f32 = x_159.x_AdditionalShadowParams[x_2082].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2084, x_2084, x_2084, x_2084))));
      let x_2088 : bool = u_xlatb51;
      if (x_2088) {
        let x_2092 : vec4<f32> = u_xlat7;
        let x_2095 : vec4<f32> = u_xlat7;
        let x_2098 : vec4<bool> = (abs(vec4<f32>(x_2092.z, x_2092.z, x_2092.y, x_2092.z)) >= abs(vec4<f32>(x_2095.x, x_2095.y, x_2095.x, x_2095.x)));
        let x_2100 : vec3<bool> = vec3<bool>(x_2098.x, x_2098.y, x_2098.z);
        let x_2101 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
        let x_2104 : bool = u_xlatb8.y;
        let x_2106 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2104 & x_2106);
        let x_2108 : vec4<f32> = u_xlat7;
        let x_2111 : vec4<bool> = (-(vec4<f32>(x_2108.z, x_2108.y, x_2108.z, x_2108.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2112 : vec3<bool> = vec3<bool>(x_2111.x, x_2111.y, x_2111.w);
        let x_2113 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2112.x, x_2112.y, x_2113.z, x_2112.z);
        let x_2116 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2116);
        let x_2121 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2121);
        let x_2126 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2126);
        let x_2129 : bool = u_xlatb8.z;
        if (x_2129) {
          let x_2134 : f32 = u_xlat8.y;
          x_2130 = x_2134;
        } else {
          let x_2136 : f32 = u_xlat74;
          x_2130 = x_2136;
        }
        let x_2137 : f32 = x_2130;
        u_xlat74 = x_2137;
        let x_2138 : bool = u_xlatb51;
        if (x_2138) {
          let x_2143 : f32 = u_xlat8.x;
          x_2139 = x_2143;
        } else {
          let x_2145 : f32 = u_xlat74;
          x_2139 = x_2145;
        }
        let x_2146 : f32 = x_2139;
        u_xlat51.x = x_2146;
        let x_2148 : i32 = u_xlati71;
        let x_2150 : f32 = x_159.x_AdditionalShadowParams[x_2148].w;
        u_xlat74 = trunc(x_2150);
        let x_2153 : f32 = u_xlat51.x;
        let x_2154 : f32 = u_xlat74;
        u_xlat51.x = (x_2153 + x_2154);
        let x_2158 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2158);
      }
      let x_2160 : i32 = u_xlati73;
      u_xlati73 = (x_2160 << bitcast<u32>(2i));
      let x_2162 : vec3<f32> = vs_TEXCOORD1;
      let x_2165 : i32 = u_xlati73;
      let x_2168 : i32 = u_xlati73;
      let x_2172 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2165 + 1i) / 4i)][((x_2168 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2162.y, x_2162.y, x_2162.y, x_2162.y) * x_2172);
      let x_2174 : i32 = u_xlati73;
      let x_2176 : i32 = u_xlati73;
      let x_2179 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2174 / 4i)][(x_2176 % 4i)];
      let x_2180 : vec3<f32> = vs_TEXCOORD1;
      let x_2183 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2179 * vec4<f32>(x_2180.x, x_2180.x, x_2180.x, x_2180.x)) + x_2183);
      let x_2185 : i32 = u_xlati73;
      let x_2188 : i32 = u_xlati73;
      let x_2192 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2185 + 2i) / 4i)][((x_2188 + 2i) % 4i)];
      let x_2193 : vec3<f32> = vs_TEXCOORD1;
      let x_2196 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2192 * vec4<f32>(x_2193.z, x_2193.z, x_2193.z, x_2193.z)) + x_2196);
      let x_2198 : vec4<f32> = u_xlat8;
      let x_2199 : i32 = u_xlati73;
      let x_2202 : i32 = u_xlati73;
      let x_2206 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2199 + 3i) / 4i)][((x_2202 + 3i) % 4i)];
      u_xlat8 = (x_2198 + x_2206);
      let x_2208 : vec4<f32> = u_xlat8;
      let x_2210 : vec4<f32> = u_xlat8;
      let x_2212 : vec3<f32> = (vec3<f32>(x_2208.x, x_2208.y, x_2208.z) / vec3<f32>(x_2210.w, x_2210.w, x_2210.w));
      let x_2213 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
      let x_2216 : i32 = u_xlati71;
      let x_2218 : f32 = x_159.x_AdditionalShadowParams[x_2216].y;
      u_xlatb73 = (0.0f < x_2218);
      let x_2220 : bool = u_xlatb73;
      if (x_2220) {
        let x_2223 : i32 = u_xlati71;
        let x_2225 : f32 = x_159.x_AdditionalShadowParams[x_2223].y;
        u_xlatb73 = (1.0f == x_2225);
        let x_2227 : bool = u_xlatb73;
        if (x_2227) {
          let x_2230 : vec4<f32> = u_xlat8;
          let x_2234 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2230.x, x_2230.y, x_2230.x, x_2230.y) + x_2234);
          let x_2237 : vec4<f32> = u_xlat9;
          let x_2238 : vec2<f32> = vec2<f32>(x_2237.x, x_2237.y);
          let x_2240 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2238.x, x_2238.y, x_2240);
          let x_2248 : vec3<f32> = txVec30;
          let x_2250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2248.xy, x_2248.z);
          u_xlat10.x = x_2250;
          let x_2253 : vec4<f32> = u_xlat9;
          let x_2254 : vec2<f32> = vec2<f32>(x_2253.z, x_2253.w);
          let x_2256 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2254.x, x_2254.y, x_2256);
          let x_2263 : vec3<f32> = txVec31;
          let x_2265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2263.xy, x_2263.z);
          u_xlat10.y = x_2265;
          let x_2267 : vec4<f32> = u_xlat8;
          let x_2271 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2267.x, x_2267.y, x_2267.x, x_2267.y) + x_2271);
          let x_2274 : vec4<f32> = u_xlat9;
          let x_2275 : vec2<f32> = vec2<f32>(x_2274.x, x_2274.y);
          let x_2277 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2275.x, x_2275.y, x_2277);
          let x_2284 : vec3<f32> = txVec32;
          let x_2286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2284.xy, x_2284.z);
          u_xlat10.z = x_2286;
          let x_2289 : vec4<f32> = u_xlat9;
          let x_2290 : vec2<f32> = vec2<f32>(x_2289.z, x_2289.w);
          let x_2292 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2290.x, x_2290.y, x_2292);
          let x_2299 : vec3<f32> = txVec33;
          let x_2301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2299.xy, x_2299.z);
          u_xlat10.w = x_2301;
          let x_2303 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2303, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2306 : i32 = u_xlati71;
          let x_2308 : f32 = x_159.x_AdditionalShadowParams[x_2306].y;
          u_xlatb51 = (2.0f == x_2308);
          let x_2310 : bool = u_xlatb51;
          if (x_2310) {
            let x_2313 : vec4<f32> = u_xlat8;
            let x_2317 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(x_2317.z, x_2317.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2321 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2321);
            let x_2323 : vec4<f32> = u_xlat8;
            let x_2326 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2329 : vec2<f32> = u_xlat51;
            let x_2331 : vec2<f32> = ((vec2<f32>(x_2323.x, x_2323.y) * vec2<f32>(x_2326.z, x_2326.w)) + -(x_2329));
            let x_2332 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2331.x, x_2331.y, x_2332.z, x_2332.w);
            let x_2334 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2334.x, x_2334.x, x_2334.y, x_2334.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2337 : vec4<f32> = u_xlat10;
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2337.x, x_2337.x, x_2337.z, x_2337.z) * vec4<f32>(x_2339.x, x_2339.x, x_2339.z, x_2339.z));
            let x_2343 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2343.y, x_2343.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2346 : vec4<f32> = u_xlat11;
            let x_2349 : vec4<f32> = u_xlat9;
            let x_2352 : vec2<f32> = ((vec2<f32>(x_2346.x, x_2346.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2349.x, x_2349.y)));
            let x_2353 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2352.x, x_2353.y, x_2352.y, x_2353.w);
            let x_2355 : vec4<f32> = u_xlat9;
            let x_2358 : vec2<f32> = (-(vec2<f32>(x_2355.x, x_2355.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2359 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
            let x_2362 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2362.x, x_2362.y), vec2<f32>(0.0f, 0.0f));
            let x_2365 : vec2<f32> = u_xlat57;
            let x_2367 : vec2<f32> = u_xlat57;
            let x_2369 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2365) * x_2367) + vec2<f32>(x_2369.x, x_2369.y));
            let x_2372 : vec4<f32> = u_xlat9;
            let x_2374 : vec2<f32> = max(vec2<f32>(x_2372.x, x_2372.y), vec2<f32>(0.0f, 0.0f));
            let x_2375 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
            let x_2377 : vec4<f32> = u_xlat9;
            let x_2380 : vec4<f32> = u_xlat9;
            let x_2383 : vec4<f32> = u_xlat10;
            let x_2385 : vec2<f32> = ((-(vec2<f32>(x_2377.x, x_2377.y)) * vec2<f32>(x_2380.x, x_2380.y)) + vec2<f32>(x_2383.y, x_2383.w));
            let x_2386 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
            let x_2388 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2388 + vec2<f32>(1.0f, 1.0f));
            let x_2390 : vec4<f32> = u_xlat9;
            let x_2392 : vec2<f32> = (vec2<f32>(x_2390.x, x_2390.y) + vec2<f32>(1.0f, 1.0f));
            let x_2393 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
            let x_2395 : vec4<f32> = u_xlat10;
            let x_2397 : vec2<f32> = (vec2<f32>(x_2395.x, x_2395.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2398 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
            let x_2400 : vec4<f32> = u_xlat11;
            let x_2402 : vec2<f32> = (vec2<f32>(x_2400.x, x_2400.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2403 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec2<f32> = u_xlat57;
            let x_2406 : vec2<f32> = (x_2405 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2407 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2409 : vec4<f32> = u_xlat9;
            let x_2411 : vec2<f32> = (vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2412 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2411.x, x_2411.y, x_2412.z, x_2412.w);
            let x_2414 : vec4<f32> = u_xlat10;
            let x_2416 : vec2<f32> = (vec2<f32>(x_2414.y, x_2414.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2417 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
            let x_2420 : f32 = u_xlat11.x;
            u_xlat12.z = x_2420;
            let x_2423 : f32 = u_xlat9.x;
            u_xlat12.w = x_2423;
            let x_2426 : f32 = u_xlat14.x;
            u_xlat13.z = x_2426;
            let x_2429 : f32 = u_xlat55.x;
            u_xlat13.w = x_2429;
            let x_2431 : vec4<f32> = u_xlat12;
            let x_2433 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2431.z, x_2431.w, x_2431.x, x_2431.z) + vec4<f32>(x_2433.z, x_2433.w, x_2433.x, x_2433.z));
            let x_2437 : f32 = u_xlat12.y;
            u_xlat11.z = x_2437;
            let x_2440 : f32 = u_xlat9.y;
            u_xlat11.w = x_2440;
            let x_2443 : f32 = u_xlat13.y;
            u_xlat14.z = x_2443;
            let x_2446 : f32 = u_xlat55.y;
            u_xlat14.w = x_2446;
            let x_2448 : vec4<f32> = u_xlat11;
            let x_2450 : vec4<f32> = u_xlat14;
            let x_2452 : vec3<f32> = (vec3<f32>(x_2448.z, x_2448.y, x_2448.w) + vec3<f32>(x_2450.z, x_2450.y, x_2450.w));
            let x_2453 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
            let x_2455 : vec4<f32> = u_xlat13;
            let x_2457 : vec4<f32> = u_xlat10;
            let x_2459 : vec3<f32> = (vec3<f32>(x_2455.x, x_2455.z, x_2455.w) / vec3<f32>(x_2457.z, x_2457.w, x_2457.y));
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
            let x_2462 : vec4<f32> = u_xlat11;
            let x_2464 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.y, x_2462.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2465 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat14;
            let x_2469 : vec4<f32> = u_xlat9;
            let x_2471 : vec3<f32> = (vec3<f32>(x_2467.z, x_2467.y, x_2467.w) / vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
            let x_2472 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
            let x_2474 : vec4<f32> = u_xlat12;
            let x_2476 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.y, x_2474.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2477 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat11;
            let x_2482 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2484 : vec3<f32> = (vec3<f32>(x_2479.y, x_2479.x, x_2479.z) * vec3<f32>(x_2482.x, x_2482.x, x_2482.x));
            let x_2485 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
            let x_2487 : vec4<f32> = u_xlat12;
            let x_2490 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2492 : vec3<f32> = (vec3<f32>(x_2487.x, x_2487.y, x_2487.z) * vec3<f32>(x_2490.y, x_2490.y, x_2490.y));
            let x_2493 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
            let x_2496 : f32 = u_xlat12.x;
            u_xlat11.w = x_2496;
            let x_2498 : vec2<f32> = u_xlat51;
            let x_2501 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2504 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2498.x, x_2498.y, x_2498.x, x_2498.y) * vec4<f32>(x_2501.x, x_2501.y, x_2501.x, x_2501.y)) + vec4<f32>(x_2504.y, x_2504.w, x_2504.x, x_2504.w));
            let x_2507 : vec2<f32> = u_xlat51;
            let x_2509 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2514 : vec2<f32> = ((x_2507 * vec2<f32>(x_2509.x, x_2509.y)) + vec2<f32>(x_2512.z, x_2512.w));
            let x_2515 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2518 : f32 = u_xlat11.y;
            u_xlat12.w = x_2518;
            let x_2520 : vec4<f32> = u_xlat12;
            let x_2521 : vec2<f32> = vec2<f32>(x_2520.y, x_2520.z);
            let x_2522 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2522.x, x_2521.x, x_2522.z, x_2521.y);
            let x_2524 : vec2<f32> = u_xlat51;
            let x_2527 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2530 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2524.x, x_2524.y, x_2524.x, x_2524.y) * vec4<f32>(x_2527.x, x_2527.y, x_2527.x, x_2527.y)) + vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2530.y));
            let x_2533 : vec2<f32> = u_xlat51;
            let x_2536 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2539 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y) * vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.y)) + vec4<f32>(x_2539.w, x_2539.y, x_2539.w, x_2539.z));
            let x_2542 : vec2<f32> = u_xlat51;
            let x_2545 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2548 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) * vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y)) + vec4<f32>(x_2548.x, x_2548.w, x_2548.z, x_2548.w));
            let x_2551 : vec4<f32> = u_xlat9;
            let x_2553 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2551.x, x_2551.x, x_2551.x, x_2551.y) * vec4<f32>(x_2553.z, x_2553.w, x_2553.y, x_2553.z));
            let x_2556 : vec4<f32> = u_xlat9;
            let x_2558 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2556.y, x_2556.y, x_2556.z, x_2556.z) * x_2558);
            let x_2561 : f32 = u_xlat9.z;
            let x_2563 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2561 * x_2563);
            let x_2567 : vec4<f32> = u_xlat13;
            let x_2568 : vec2<f32> = vec2<f32>(x_2567.x, x_2567.y);
            let x_2570 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2568.x, x_2568.y, x_2570);
            let x_2577 : vec3<f32> = txVec34;
            let x_2579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2577.xy, x_2577.z);
            u_xlat74 = x_2579;
            let x_2581 : vec4<f32> = u_xlat13;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.z, x_2581.w);
            let x_2584 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2592 : vec3<f32> = txVec35;
            let x_2594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2592.xy, x_2592.z);
            u_xlat75 = x_2594;
            let x_2595 : f32 = u_xlat75;
            let x_2597 : f32 = u_xlat16.y;
            u_xlat75 = (x_2595 * x_2597);
            let x_2600 : f32 = u_xlat16.x;
            let x_2601 : f32 = u_xlat74;
            let x_2603 : f32 = u_xlat75;
            u_xlat74 = ((x_2600 * x_2601) + x_2603);
            let x_2606 : vec4<f32> = u_xlat14;
            let x_2607 : vec2<f32> = vec2<f32>(x_2606.x, x_2606.y);
            let x_2609 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2607.x, x_2607.y, x_2609);
            let x_2616 : vec3<f32> = txVec36;
            let x_2618 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2616.xy, x_2616.z);
            u_xlat75 = x_2618;
            let x_2620 : f32 = u_xlat16.z;
            let x_2621 : f32 = u_xlat75;
            let x_2623 : f32 = u_xlat74;
            u_xlat74 = ((x_2620 * x_2621) + x_2623);
            let x_2626 : vec4<f32> = u_xlat12;
            let x_2627 : vec2<f32> = vec2<f32>(x_2626.x, x_2626.y);
            let x_2629 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2627.x, x_2627.y, x_2629);
            let x_2636 : vec3<f32> = txVec37;
            let x_2638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2636.xy, x_2636.z);
            u_xlat75 = x_2638;
            let x_2640 : f32 = u_xlat16.w;
            let x_2641 : f32 = u_xlat75;
            let x_2643 : f32 = u_xlat74;
            u_xlat74 = ((x_2640 * x_2641) + x_2643);
            let x_2646 : vec4<f32> = u_xlat15;
            let x_2647 : vec2<f32> = vec2<f32>(x_2646.x, x_2646.y);
            let x_2649 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2647.x, x_2647.y, x_2649);
            let x_2656 : vec3<f32> = txVec38;
            let x_2658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2656.xy, x_2656.z);
            u_xlat75 = x_2658;
            let x_2660 : f32 = u_xlat17.x;
            let x_2661 : f32 = u_xlat75;
            let x_2663 : f32 = u_xlat74;
            u_xlat74 = ((x_2660 * x_2661) + x_2663);
            let x_2666 : vec4<f32> = u_xlat15;
            let x_2667 : vec2<f32> = vec2<f32>(x_2666.z, x_2666.w);
            let x_2669 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
            let x_2676 : vec3<f32> = txVec39;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat75 = x_2678;
            let x_2680 : f32 = u_xlat17.y;
            let x_2681 : f32 = u_xlat75;
            let x_2683 : f32 = u_xlat74;
            u_xlat74 = ((x_2680 * x_2681) + x_2683);
            let x_2686 : vec4<f32> = u_xlat12;
            let x_2687 : vec2<f32> = vec2<f32>(x_2686.z, x_2686.w);
            let x_2689 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2687.x, x_2687.y, x_2689);
            let x_2696 : vec3<f32> = txVec40;
            let x_2698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2696.xy, x_2696.z);
            u_xlat75 = x_2698;
            let x_2700 : f32 = u_xlat17.z;
            let x_2701 : f32 = u_xlat75;
            let x_2703 : f32 = u_xlat74;
            u_xlat74 = ((x_2700 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat11;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.x, x_2706.y);
            let x_2709 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec41;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat75 = x_2718;
            let x_2720 : f32 = u_xlat17.w;
            let x_2721 : f32 = u_xlat75;
            let x_2723 : f32 = u_xlat74;
            u_xlat74 = ((x_2720 * x_2721) + x_2723);
            let x_2726 : vec4<f32> = u_xlat11;
            let x_2727 : vec2<f32> = vec2<f32>(x_2726.z, x_2726.w);
            let x_2729 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2727.x, x_2727.y, x_2729);
            let x_2736 : vec3<f32> = txVec42;
            let x_2738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2736.xy, x_2736.z);
            u_xlat75 = x_2738;
            let x_2740 : f32 = u_xlat51.x;
            let x_2741 : f32 = u_xlat75;
            let x_2743 : f32 = u_xlat74;
            u_xlat73 = ((x_2740 * x_2741) + x_2743);
          } else {
            let x_2746 : vec4<f32> = u_xlat8;
            let x_2749 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2746.x, x_2746.y) * vec2<f32>(x_2749.z, x_2749.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2753 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2753);
            let x_2755 : vec4<f32> = u_xlat8;
            let x_2758 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2761 : vec2<f32> = u_xlat51;
            let x_2763 : vec2<f32> = ((vec2<f32>(x_2755.x, x_2755.y) * vec2<f32>(x_2758.z, x_2758.w)) + -(x_2761));
            let x_2764 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
            let x_2766 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2766.x, x_2766.x, x_2766.y, x_2766.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2769 : vec4<f32> = u_xlat10;
            let x_2771 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2769.x, x_2769.x, x_2769.z, x_2769.z) * vec4<f32>(x_2771.x, x_2771.x, x_2771.z, x_2771.z));
            let x_2774 : vec4<f32> = u_xlat11;
            let x_2776 : vec2<f32> = (vec2<f32>(x_2774.y, x_2774.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2777 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2777.x, x_2776.x, x_2777.z, x_2776.y);
            let x_2779 : vec4<f32> = u_xlat11;
            let x_2782 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2779.x, x_2779.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2782.x, x_2782.y)));
            let x_2786 : vec4<f32> = u_xlat9;
            let x_2789 : vec2<f32> = (-(vec2<f32>(x_2786.x, x_2786.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2790 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2789.x, x_2790.y, x_2789.y, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat9;
            let x_2794 : vec2<f32> = min(vec2<f32>(x_2792.x, x_2792.y), vec2<f32>(0.0f, 0.0f));
            let x_2795 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2794.x, x_2794.y, x_2795.z, x_2795.w);
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2800 : vec4<f32> = u_xlat11;
            let x_2803 : vec4<f32> = u_xlat10;
            let x_2805 : vec2<f32> = ((-(vec2<f32>(x_2797.x, x_2797.y)) * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2803.x, x_2803.z));
            let x_2806 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2805.x, x_2806.y, x_2805.y, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat9;
            let x_2810 : vec2<f32> = max(vec2<f32>(x_2808.x, x_2808.y), vec2<f32>(0.0f, 0.0f));
            let x_2811 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec4<f32> = u_xlat11;
            let x_2816 : vec4<f32> = u_xlat11;
            let x_2819 : vec4<f32> = u_xlat10;
            let x_2821 : vec2<f32> = ((-(vec2<f32>(x_2813.x, x_2813.y)) * vec2<f32>(x_2816.x, x_2816.y)) + vec2<f32>(x_2819.y, x_2819.w));
            let x_2822 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2822.x, x_2821.x, x_2822.z, x_2821.y);
            let x_2824 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2824 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2828 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2828 * 0.08163200318813323975f);
            let x_2831 : vec2<f32> = u_xlat55;
            let x_2833 : vec2<f32> = (vec2<f32>(x_2831.y, x_2831.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2834 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2833.x, x_2833.y, x_2834.z, x_2834.w);
            let x_2836 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2836.x, x_2836.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2840 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2840 * 0.08163200318813323975f);
            let x_2844 : f32 = u_xlat13.y;
            u_xlat11.x = x_2844;
            let x_2846 : vec4<f32> = u_xlat9;
            let x_2849 : vec2<f32> = ((vec2<f32>(x_2846.x, x_2846.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2850 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2850.x, x_2849.x, x_2850.z, x_2849.y);
            let x_2852 : vec4<f32> = u_xlat9;
            let x_2855 : vec2<f32> = ((vec2<f32>(x_2852.x, x_2852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2856 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2855.x, x_2856.y, x_2855.y, x_2856.w);
            let x_2859 : f32 = u_xlat55.x;
            u_xlat10.y = x_2859;
            let x_2862 : f32 = u_xlat12.y;
            u_xlat10.w = x_2862;
            let x_2864 : vec4<f32> = u_xlat10;
            let x_2865 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2864 + x_2865);
            let x_2867 : vec4<f32> = u_xlat9;
            let x_2870 : vec2<f32> = ((vec2<f32>(x_2867.y, x_2867.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2871 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2871.x, x_2870.x, x_2871.z, x_2870.y);
            let x_2873 : vec4<f32> = u_xlat9;
            let x_2876 : vec2<f32> = ((vec2<f32>(x_2873.y, x_2873.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2877 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2876.x, x_2877.y, x_2876.y, x_2877.w);
            let x_2880 : f32 = u_xlat55.y;
            u_xlat12.y = x_2880;
            let x_2882 : vec4<f32> = u_xlat12;
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2882 + x_2883);
            let x_2885 : vec4<f32> = u_xlat10;
            let x_2886 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2885 / x_2886);
            let x_2888 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2888 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2890 : vec4<f32> = u_xlat12;
            let x_2891 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2890 / x_2891);
            let x_2893 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2893 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2895 : vec4<f32> = u_xlat10;
            let x_2898 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2895.w, x_2895.x, x_2895.y, x_2895.z) * vec4<f32>(x_2898.x, x_2898.x, x_2898.x, x_2898.x));
            let x_2901 : vec4<f32> = u_xlat12;
            let x_2904 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2901.x, x_2901.w, x_2901.y, x_2901.z) * vec4<f32>(x_2904.y, x_2904.y, x_2904.y, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat10;
            let x_2908 : vec3<f32> = vec3<f32>(x_2907.y, x_2907.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2908.x, x_2909.y, x_2908.y, x_2908.z);
            let x_2912 : f32 = u_xlat12.x;
            u_xlat13.y = x_2912;
            let x_2914 : vec2<f32> = u_xlat51;
            let x_2917 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2920 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2914.x, x_2914.y, x_2914.x, x_2914.y) * vec4<f32>(x_2917.x, x_2917.y, x_2917.x, x_2917.y)) + vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2920.y));
            let x_2923 : vec2<f32> = u_xlat51;
            let x_2925 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat13;
            let x_2930 : vec2<f32> = ((x_2923 * vec2<f32>(x_2925.x, x_2925.y)) + vec2<f32>(x_2928.w, x_2928.y));
            let x_2931 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2934 : f32 = u_xlat13.y;
            u_xlat10.y = x_2934;
            let x_2937 : f32 = u_xlat12.z;
            u_xlat13.y = x_2937;
            let x_2939 : vec2<f32> = u_xlat51;
            let x_2942 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2945 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2939.x, x_2939.y, x_2939.x, x_2939.y) * vec4<f32>(x_2942.x, x_2942.y, x_2942.x, x_2942.y)) + vec4<f32>(x_2945.x, x_2945.y, x_2945.z, x_2945.y));
            let x_2949 : vec2<f32> = u_xlat51;
            let x_2951 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2954 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2949 * vec2<f32>(x_2951.x, x_2951.y)) + vec2<f32>(x_2954.w, x_2954.y));
            let x_2958 : f32 = u_xlat13.y;
            u_xlat10.z = x_2958;
            let x_2960 : vec2<f32> = u_xlat51;
            let x_2963 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2966 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.y) * vec4<f32>(x_2963.x, x_2963.y, x_2963.x, x_2963.y)) + vec4<f32>(x_2966.x, x_2966.y, x_2966.x, x_2966.z));
            let x_2970 : f32 = u_xlat12.w;
            u_xlat13.y = x_2970;
            let x_2972 : vec2<f32> = u_xlat51;
            let x_2975 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2978 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y) * vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y)) + vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2978.y));
            let x_2982 : vec2<f32> = u_xlat51;
            let x_2984 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2982 * vec2<f32>(x_2984.x, x_2984.y)) + vec2<f32>(x_2987.w, x_2987.y));
            let x_2991 : f32 = u_xlat13.y;
            u_xlat10.w = x_2991;
            let x_2994 : vec2<f32> = u_xlat51;
            let x_2996 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2994 * vec2<f32>(x_2996.x, x_2996.y)) + vec2<f32>(x_2999.x, x_2999.w));
            let x_3002 : vec4<f32> = u_xlat13;
            let x_3003 : vec3<f32> = vec3<f32>(x_3002.x, x_3002.z, x_3002.w);
            let x_3004 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3003.x, x_3004.y, x_3003.y, x_3003.z);
            let x_3006 : vec2<f32> = u_xlat51;
            let x_3009 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3012 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) * vec4<f32>(x_3009.x, x_3009.y, x_3009.x, x_3009.y)) + vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3012.y));
            let x_3016 : vec2<f32> = u_xlat51;
            let x_3018 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3016 * vec2<f32>(x_3018.x, x_3018.y)) + vec2<f32>(x_3021.w, x_3021.y));
            let x_3025 : f32 = u_xlat10.x;
            u_xlat12.x = x_3025;
            let x_3027 : vec2<f32> = u_xlat51;
            let x_3029 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3027 * vec2<f32>(x_3029.x, x_3029.y)) + vec2<f32>(x_3032.x, x_3032.y));
            let x_3036 : vec4<f32> = u_xlat9;
            let x_3038 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3036.x, x_3036.x, x_3036.x, x_3036.x) * x_3038);
            let x_3041 : vec4<f32> = u_xlat9;
            let x_3043 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3041.y, x_3041.y, x_3041.y, x_3041.y) * x_3043);
            let x_3046 : vec4<f32> = u_xlat9;
            let x_3048 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3046.z, x_3046.z, x_3046.z, x_3046.z) * x_3048);
            let x_3050 : vec4<f32> = u_xlat9;
            let x_3052 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3050.w, x_3050.w, x_3050.w, x_3050.w) * x_3052);
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.x, x_3055.y);
            let x_3058 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec43;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat75 = x_3067;
            let x_3069 : vec4<f32> = u_xlat14;
            let x_3070 : vec2<f32> = vec2<f32>(x_3069.z, x_3069.w);
            let x_3072 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3070.x, x_3070.y, x_3072);
            let x_3080 : vec3<f32> = txVec44;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat76 = x_3082;
            let x_3083 : f32 = u_xlat76;
            let x_3085 : f32 = u_xlat20.y;
            u_xlat76 = (x_3083 * x_3085);
            let x_3088 : f32 = u_xlat20.x;
            let x_3089 : f32 = u_xlat75;
            let x_3091 : f32 = u_xlat76;
            u_xlat75 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat15;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec45;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat76 = x_3106;
            let x_3108 : f32 = u_xlat20.z;
            let x_3109 : f32 = u_xlat76;
            let x_3111 : f32 = u_xlat75;
            u_xlat75 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat17;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
            let x_3117 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec46;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat76 = x_3126;
            let x_3128 : f32 = u_xlat20.w;
            let x_3129 : f32 = u_xlat76;
            let x_3131 : f32 = u_xlat75;
            u_xlat75 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat16;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
            let x_3137 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec47;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat76 = x_3146;
            let x_3148 : f32 = u_xlat21.x;
            let x_3149 : f32 = u_xlat76;
            let x_3151 : f32 = u_xlat75;
            u_xlat75 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.z, x_3154.w);
            let x_3157 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec48;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat76 = x_3166;
            let x_3168 : f32 = u_xlat21.y;
            let x_3169 : f32 = u_xlat76;
            let x_3171 : f32 = u_xlat75;
            u_xlat75 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec2<f32> = u_xlat61;
            let x_3176 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec49;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat76 = x_3185;
            let x_3187 : f32 = u_xlat21.z;
            let x_3188 : f32 = u_xlat76;
            let x_3190 : f32 = u_xlat75;
            u_xlat75 = ((x_3187 * x_3188) + x_3190);
            let x_3193 : vec4<f32> = u_xlat17;
            let x_3194 : vec2<f32> = vec2<f32>(x_3193.z, x_3193.w);
            let x_3196 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec50;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat76 = x_3205;
            let x_3207 : f32 = u_xlat21.w;
            let x_3208 : f32 = u_xlat76;
            let x_3210 : f32 = u_xlat75;
            u_xlat75 = ((x_3207 * x_3208) + x_3210);
            let x_3213 : vec4<f32> = u_xlat18;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.x, x_3213.y);
            let x_3216 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec51;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat76 = x_3225;
            let x_3227 : f32 = u_xlat22.x;
            let x_3228 : f32 = u_xlat76;
            let x_3230 : f32 = u_xlat75;
            u_xlat75 = ((x_3227 * x_3228) + x_3230);
            let x_3233 : vec4<f32> = u_xlat18;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.z, x_3233.w);
            let x_3236 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec52;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat76 = x_3245;
            let x_3247 : f32 = u_xlat22.y;
            let x_3248 : f32 = u_xlat76;
            let x_3250 : f32 = u_xlat75;
            u_xlat75 = ((x_3247 * x_3248) + x_3250);
            let x_3253 : vec2<f32> = u_xlat33;
            let x_3255 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec53;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat76 = x_3264;
            let x_3266 : f32 = u_xlat22.z;
            let x_3267 : f32 = u_xlat76;
            let x_3269 : f32 = u_xlat75;
            u_xlat75 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec2<f32> = u_xlat19;
            let x_3274 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec54;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat76 = x_3283;
            let x_3285 : f32 = u_xlat22.w;
            let x_3286 : f32 = u_xlat76;
            let x_3288 : f32 = u_xlat75;
            u_xlat75 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec4<f32> = u_xlat13;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.x, x_3291.y);
            let x_3294 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec55;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat76 = x_3303;
            let x_3305 : f32 = u_xlat9.x;
            let x_3306 : f32 = u_xlat76;
            let x_3308 : f32 = u_xlat75;
            u_xlat75 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat13;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec56;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat76 = x_3323;
            let x_3325 : f32 = u_xlat9.y;
            let x_3326 : f32 = u_xlat76;
            let x_3328 : f32 = u_xlat75;
            u_xlat75 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec2<f32> = u_xlat58;
            let x_3333 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3340 : vec3<f32> = txVec57;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat76 = x_3342;
            let x_3344 : f32 = u_xlat9.z;
            let x_3345 : f32 = u_xlat76;
            let x_3347 : f32 = u_xlat75;
            u_xlat75 = ((x_3344 * x_3345) + x_3347);
            let x_3350 : vec2<f32> = u_xlat51;
            let x_3352 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec58;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat51.x = x_3361;
            let x_3364 : f32 = u_xlat9.w;
            let x_3366 : f32 = u_xlat51.x;
            let x_3368 : f32 = u_xlat75;
            u_xlat73 = ((x_3364 * x_3366) + x_3368);
          }
        }
      } else {
        let x_3372 : vec4<f32> = u_xlat8;
        let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
        let x_3375 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
        let x_3382 : vec3<f32> = txVec59;
        let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
        u_xlat73 = x_3384;
      }
      let x_3385 : i32 = u_xlati71;
      let x_3387 : f32 = x_159.x_AdditionalShadowParams[x_3385].x;
      u_xlat51.x = (1.0f + -(x_3387));
      let x_3391 : f32 = u_xlat73;
      let x_3392 : i32 = u_xlati71;
      let x_3394 : f32 = x_159.x_AdditionalShadowParams[x_3392].x;
      let x_3397 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3391 * x_3394) + x_3397);
      let x_3400 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3400);
      let x_3404 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3404 >= 1.0f);
      let x_3406 : bool = u_xlatb74;
      let x_3407 : bool = u_xlatb51;
      u_xlatb51 = (x_3406 | x_3407);
      let x_3409 : bool = u_xlatb51;
      let x_3410 : f32 = u_xlat73;
      u_xlat73 = select(x_3410, 1.0f, x_3409);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3413 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3413) + 1.0f);
    let x_3417 : f32 = u_xlat69;
    let x_3419 : f32 = u_xlat51.x;
    let x_3421 : f32 = u_xlat73;
    u_xlat73 = ((x_3417 * x_3419) + x_3421);
    let x_3424 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3424 & 31i)));
    let x_3428 : i32 = u_xlati51;
    let x_3431 : f32 = x_1754.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3428) & bitcast<u32>(x_3431)));
    let x_3435 : i32 = u_xlati51;
    if ((x_3435 != 0i)) {
      let x_3439 : i32 = u_xlati71;
      let x_3441 : f32 = x_1754.x_AdditionalLightsLightTypes[x_3439].el;
      u_xlati51 = i32(x_3441);
      let x_3444 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3444 != 0i));
      let x_3448 : i32 = u_xlati71;
      u_xlati75 = (x_3448 << bitcast<u32>(2i));
      let x_3450 : i32 = u_xlati74;
      if ((x_3450 != 0i)) {
        let x_3454 : vec3<f32> = vs_TEXCOORD1;
        let x_3456 : i32 = u_xlati75;
        let x_3459 : i32 = u_xlati75;
        let x_3463 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3456 + 1i) / 4i)][((x_3459 + 1i) % 4i)];
        let x_3465 : vec3<f32> = (vec3<f32>(x_3454.y, x_3454.y, x_3454.y) * vec3<f32>(x_3463.x, x_3463.y, x_3463.w));
        let x_3466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
        let x_3468 : i32 = u_xlati75;
        let x_3470 : i32 = u_xlati75;
        let x_3473 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3468 / 4i)][(x_3470 % 4i)];
        let x_3475 : vec3<f32> = vs_TEXCOORD1;
        let x_3478 : vec4<f32> = u_xlat8;
        let x_3480 : vec3<f32> = ((vec3<f32>(x_3473.x, x_3473.y, x_3473.w) * vec3<f32>(x_3475.x, x_3475.x, x_3475.x)) + vec3<f32>(x_3478.x, x_3478.y, x_3478.z));
        let x_3481 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3480.x, x_3480.y, x_3480.z, x_3481.w);
        let x_3483 : i32 = u_xlati75;
        let x_3486 : i32 = u_xlati75;
        let x_3490 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3483 + 2i) / 4i)][((x_3486 + 2i) % 4i)];
        let x_3492 : vec3<f32> = vs_TEXCOORD1;
        let x_3495 : vec4<f32> = u_xlat8;
        let x_3497 : vec3<f32> = ((vec3<f32>(x_3490.x, x_3490.y, x_3490.w) * vec3<f32>(x_3492.z, x_3492.z, x_3492.z)) + vec3<f32>(x_3495.x, x_3495.y, x_3495.z));
        let x_3498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
        let x_3500 : vec4<f32> = u_xlat8;
        let x_3502 : i32 = u_xlati75;
        let x_3505 : i32 = u_xlati75;
        let x_3509 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3502 + 3i) / 4i)][((x_3505 + 3i) % 4i)];
        let x_3511 : vec3<f32> = (vec3<f32>(x_3500.x, x_3500.y, x_3500.z) + vec3<f32>(x_3509.x, x_3509.y, x_3509.w));
        let x_3512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3511.x, x_3511.y, x_3511.z, x_3512.w);
        let x_3514 : vec4<f32> = u_xlat8;
        let x_3516 : vec4<f32> = u_xlat8;
        let x_3518 : vec2<f32> = (vec2<f32>(x_3514.x, x_3514.y) / vec2<f32>(x_3516.z, x_3516.z));
        let x_3519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3518.x, x_3518.y, x_3519.z, x_3519.w);
        let x_3521 : vec4<f32> = u_xlat8;
        let x_3524 : vec2<f32> = ((vec2<f32>(x_3521.x, x_3521.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3525 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3524.x, x_3524.y, x_3525.z, x_3525.w);
        let x_3527 : vec4<f32> = u_xlat8;
        let x_3531 : vec2<f32> = clamp(vec2<f32>(x_3527.x, x_3527.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3532 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
        let x_3534 : i32 = u_xlati71;
        let x_3536 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3534];
        let x_3538 : vec4<f32> = u_xlat8;
        let x_3541 : i32 = u_xlati71;
        let x_3543 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3541];
        let x_3545 : vec2<f32> = ((vec2<f32>(x_3536.x, x_3536.y) * vec2<f32>(x_3538.x, x_3538.y)) + vec2<f32>(x_3543.z, x_3543.w));
        let x_3546 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3545.x, x_3545.y, x_3546.z, x_3546.w);
      } else {
        let x_3549 : i32 = u_xlati51;
        u_xlatb51 = (x_3549 == 1i);
        let x_3551 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3551);
        let x_3553 : i32 = u_xlati51;
        if ((x_3553 != 0i)) {
          let x_3557 : vec3<f32> = vs_TEXCOORD1;
          let x_3559 : i32 = u_xlati75;
          let x_3562 : i32 = u_xlati75;
          let x_3566 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3559 + 1i) / 4i)][((x_3562 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3557.y, x_3557.y) * vec2<f32>(x_3566.x, x_3566.y));
          let x_3569 : i32 = u_xlati75;
          let x_3571 : i32 = u_xlati75;
          let x_3574 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3569 / 4i)][(x_3571 % 4i)];
          let x_3576 : vec3<f32> = vs_TEXCOORD1;
          let x_3579 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3574.x, x_3574.y) * vec2<f32>(x_3576.x, x_3576.x)) + x_3579);
          let x_3581 : i32 = u_xlati75;
          let x_3584 : i32 = u_xlati75;
          let x_3588 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3581 + 2i) / 4i)][((x_3584 + 2i) % 4i)];
          let x_3590 : vec3<f32> = vs_TEXCOORD1;
          let x_3593 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3588.x, x_3588.y) * vec2<f32>(x_3590.z, x_3590.z)) + x_3593);
          let x_3595 : vec2<f32> = u_xlat51;
          let x_3596 : i32 = u_xlati75;
          let x_3599 : i32 = u_xlati75;
          let x_3603 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3596 + 3i) / 4i)][((x_3599 + 3i) % 4i)];
          u_xlat51 = (x_3595 + vec2<f32>(x_3603.x, x_3603.y));
          let x_3606 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3606 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3609 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3609);
          let x_3611 : i32 = u_xlati71;
          let x_3613 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3611];
          let x_3615 : vec2<f32> = u_xlat51;
          let x_3617 : i32 = u_xlati71;
          let x_3619 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3617];
          let x_3621 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.y) * x_3615) + vec2<f32>(x_3619.z, x_3619.w));
          let x_3622 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3621.x, x_3621.y, x_3622.z, x_3622.w);
        } else {
          let x_3625 : vec3<f32> = vs_TEXCOORD1;
          let x_3627 : i32 = u_xlati75;
          let x_3630 : i32 = u_xlati75;
          let x_3634 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3627 + 1i) / 4i)][((x_3630 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3625.y, x_3625.y, x_3625.y, x_3625.y) * x_3634);
          let x_3636 : i32 = u_xlati75;
          let x_3638 : i32 = u_xlati75;
          let x_3641 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3636 / 4i)][(x_3638 % 4i)];
          let x_3642 : vec3<f32> = vs_TEXCOORD1;
          let x_3645 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3641 * vec4<f32>(x_3642.x, x_3642.x, x_3642.x, x_3642.x)) + x_3645);
          let x_3647 : i32 = u_xlati75;
          let x_3650 : i32 = u_xlati75;
          let x_3654 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3647 + 2i) / 4i)][((x_3650 + 2i) % 4i)];
          let x_3655 : vec3<f32> = vs_TEXCOORD1;
          let x_3658 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3654 * vec4<f32>(x_3655.z, x_3655.z, x_3655.z, x_3655.z)) + x_3658);
          let x_3660 : vec4<f32> = u_xlat9;
          let x_3661 : i32 = u_xlati75;
          let x_3664 : i32 = u_xlati75;
          let x_3668 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3661 + 3i) / 4i)][((x_3664 + 3i) % 4i)];
          u_xlat9 = (x_3660 + x_3668);
          let x_3670 : vec4<f32> = u_xlat9;
          let x_3672 : vec4<f32> = u_xlat9;
          let x_3674 : vec3<f32> = (vec3<f32>(x_3670.x, x_3670.y, x_3670.z) / vec3<f32>(x_3672.w, x_3672.w, x_3672.w));
          let x_3675 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3674.x, x_3674.y, x_3674.z, x_3675.w);
          let x_3677 : vec4<f32> = u_xlat9;
          let x_3679 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3677.x, x_3677.y, x_3677.z), vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
          let x_3684 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3684);
          let x_3687 : vec2<f32> = u_xlat51;
          let x_3689 : vec4<f32> = u_xlat9;
          let x_3691 : vec3<f32> = (vec3<f32>(x_3687.x, x_3687.x, x_3687.x) * vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
          let x_3692 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
          let x_3694 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3694.x, x_3694.y, x_3694.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3701 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3701, 0.00000099999999747524f);
          let x_3706 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3706);
          let x_3709 : vec2<f32> = u_xlat51;
          let x_3711 : vec4<f32> = u_xlat9;
          let x_3713 : vec3<f32> = (vec3<f32>(x_3709.x, x_3709.x, x_3709.x) * vec3<f32>(x_3711.z, x_3711.x, x_3711.y));
          let x_3714 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3713.x, x_3713.y, x_3713.z, x_3714.w);
          let x_3717 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3717);
          let x_3721 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3721, 0.0f, 1.0f);
          let x_3725 : vec4<f32> = u_xlat10;
          let x_3727 : vec4<bool> = (vec4<f32>(x_3725.y, x_3725.z, x_3725.y, x_3725.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3727.x, x_3727.y);
          let x_3730 : bool = u_xlatb54.x;
          if (x_3730) {
            let x_3735 : f32 = u_xlat10.x;
            x_3731 = x_3735;
          } else {
            let x_3738 : f32 = u_xlat10.x;
            x_3731 = -(x_3738);
          }
          let x_3740 : f32 = x_3731;
          u_xlat54.x = x_3740;
          let x_3743 : bool = u_xlatb54.y;
          if (x_3743) {
            let x_3748 : f32 = u_xlat10.x;
            x_3744 = x_3748;
          } else {
            let x_3751 : f32 = u_xlat10.x;
            x_3744 = -(x_3751);
          }
          let x_3753 : f32 = x_3744;
          u_xlat54.y = x_3753;
          let x_3755 : vec4<f32> = u_xlat9;
          let x_3757 : vec2<f32> = u_xlat51;
          let x_3760 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3755.x, x_3755.y) * vec2<f32>(x_3757.x, x_3757.x)) + x_3760);
          let x_3762 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3762 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3765 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3765, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3769 : i32 = u_xlati71;
          let x_3771 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3769];
          let x_3773 : vec2<f32> = u_xlat51;
          let x_3775 : i32 = u_xlati71;
          let x_3777 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3775];
          let x_3779 : vec2<f32> = ((vec2<f32>(x_3771.x, x_3771.y) * x_3773) + vec2<f32>(x_3777.z, x_3777.w));
          let x_3780 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3779.x, x_3779.y, x_3780.z, x_3780.w);
        }
      }
      let x_3787 : vec4<f32> = u_xlat8;
      let x_3789 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3787.x, x_3787.y), 0.0f);
      u_xlat8 = x_3789;
      let x_3791 : bool = u_xlatb5.y;
      if (x_3791) {
        let x_3796 : f32 = u_xlat8.w;
        x_3792 = x_3796;
      } else {
        let x_3799 : f32 = u_xlat8.x;
        x_3792 = x_3799;
      }
      let x_3800 : f32 = x_3792;
      u_xlat51.x = x_3800;
      let x_3803 : bool = u_xlatb5.x;
      if (x_3803) {
        let x_3807 : vec4<f32> = u_xlat8;
        x_3804 = vec3<f32>(x_3807.x, x_3807.y, x_3807.z);
      } else {
        let x_3810 : vec2<f32> = u_xlat51;
        x_3804 = vec3<f32>(x_3810.x, x_3810.x, x_3810.x);
      }
      let x_3812 : vec3<f32> = x_3804;
      let x_3813 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3812.x, x_3812.y, x_3812.z, x_3813.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3819 : vec4<f32> = u_xlat8;
    let x_3821 : i32 = u_xlati71;
    let x_3823 : vec4<f32> = x_1993.x_AdditionalLightsColor[x_3821];
    let x_3825 : vec3<f32> = (vec3<f32>(x_3819.x, x_3819.y, x_3819.z) * vec3<f32>(x_3823.x, x_3823.y, x_3823.z));
    let x_3826 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3825.x, x_3825.y, x_3825.z, x_3826.w);
    let x_3828 : f32 = u_xlat72;
    let x_3829 : f32 = u_xlat73;
    u_xlat71 = (x_3828 * x_3829);
    let x_3831 : f32 = u_xlat71;
    let x_3833 : vec4<f32> = u_xlat8;
    let x_3835 : vec3<f32> = (vec3<f32>(x_3831, x_3831, x_3831) * vec3<f32>(x_3833.x, x_3833.y, x_3833.z));
    let x_3836 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3835.x, x_3835.y, x_3835.z, x_3836.w);
    let x_3838 : vec4<f32> = u_xlat2;
    let x_3840 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3838.x, x_3838.y, x_3838.z), vec3<f32>(x_3840.x, x_3840.y, x_3840.z));
    let x_3843 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3843, 0.0f, 1.0f);
    let x_3845 : f32 = u_xlat71;
    let x_3847 : vec4<f32> = u_xlat8;
    let x_3849 : vec3<f32> = (vec3<f32>(x_3845, x_3845, x_3845) * vec3<f32>(x_3847.x, x_3847.y, x_3847.z));
    let x_3850 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3849.x, x_3849.y, x_3849.z, x_3850.w);
    let x_3852 : vec4<f32> = u_xlat7;
    let x_3854 : vec4<f32> = u_xlat1;
    let x_3857 : vec4<f32> = u_xlat6;
    let x_3859 : vec3<f32> = ((vec3<f32>(x_3852.x, x_3852.y, x_3852.z) * vec3<f32>(x_3854.y, x_3854.z, x_3854.w)) + vec3<f32>(x_3857.x, x_3857.y, x_3857.z));
    let x_3860 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3859.x, x_3859.y, x_3859.z, x_3860.w);

    continuing {
      let x_3862 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3862 + bitcast<u32>(1i));
    }
  }
  let x_3864 : vec4<f32> = u_xlat4;
  let x_3866 : vec4<f32> = u_xlat1;
  let x_3869 : vec4<f32> = u_xlat3;
  let x_3871 : vec3<f32> = ((vec3<f32>(x_3864.x, x_3864.y, x_3864.z) * vec3<f32>(x_3866.y, x_3866.z, x_3866.w)) + vec3<f32>(x_3869.x, x_3869.y, x_3869.z));
  let x_3872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3872.w);
  let x_3876 : vec4<f32> = u_xlat6;
  let x_3878 : vec4<f32> = u_xlat1;
  let x_3880 : vec3<f32> = (vec3<f32>(x_3876.x, x_3876.y, x_3876.z) + vec3<f32>(x_3878.x, x_3878.y, x_3878.z));
  let x_3881 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3881.w);
  let x_3884 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3884 == 1.0f);
  let x_3886 : bool = u_xlatb23;
  let x_3887 : bool = u_xlatb46;
  u_xlatb23 = (x_3886 | x_3887);
  let x_3889 : bool = u_xlatb23;
  if (x_3889) {
    let x_3894 : f32 = u_xlat0.x;
    x_3890 = x_3894;
  } else {
    x_3890 = 1.0f;
  }
  let x_3896 : f32 = x_3890;
  SV_Target0.w = x_3896;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


