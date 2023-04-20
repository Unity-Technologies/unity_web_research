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

@group(1) @binding(1) var<uniform> x_2000 : AdditionalLights;

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
  var x_2137 : f32;
  var x_2146 : f32;
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
  var x_3738 : f32;
  var x_3751 : f32;
  var x_3799 : f32;
  var x_3811 : vec3<f32>;
  var x_3904 : f32;
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
  let x_1905 : vec4<f32> = u_xlat0;
  let x_1907 : vec4<f32> = u_xlat3;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.x, x_1905.x) * vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1913 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1915 : f32 = x_355.unity_LightData.y;
  u_xlat23 = min(x_1913, x_1915);
  let x_1917 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1917));
  let x_1920 : f32 = u_xlat69;
  let x_1923 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1926 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1920 * x_1923) + x_1926);
  let x_1928 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1928, 0.0f, 1.0f);
  let x_1931 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1933 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1935 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1937 : f32 = x_1754.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1938 : vec4<f32> = vec4<f32>(x_1931, x_1933, x_1935, x_1937);
  let x_1944 : vec4<bool> = (vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1938.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1944.x, x_1944.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1956 : u32 = u_xlatu_loop_1;
    let x_1957 : u32 = u_xlatu23;
    if ((x_1956 < x_1957)) {
    } else {
      break;
    }
    let x_1960 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1960 >> 2u);
    let x_1963 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1963 & 3u));
    let x_1966 : u32 = u_xlatu71;
    let x_1969 : vec4<f32> = x_355.unity_LightIndices[bitcast<i32>(x_1966)];
    let x_1979 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1984 : vec4<u32> = indexable[x_1979];
    u_xlat71 = dot(x_1969, bitcast<vec4<f32>>(x_1984));
    let x_1988 : f32 = u_xlat71;
    u_xlati71 = i32(x_1988);
    let x_1990 : vec3<f32> = vs_TEXCOORD1;
    let x_2001 : i32 = u_xlati71;
    let x_2003 : vec4<f32> = x_2000.x_AdditionalLightsPosition[x_2001];
    let x_2006 : i32 = u_xlati71;
    let x_2008 : vec4<f32> = x_2000.x_AdditionalLightsPosition[x_2006];
    let x_2010 : vec3<f32> = ((-(x_1990) * vec3<f32>(x_2003.w, x_2003.w, x_2003.w)) + vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
    let x_2011 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
    let x_2014 : vec4<f32> = u_xlat7;
    let x_2016 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : f32 = u_xlat72;
    u_xlat72 = max(x_2019, 0.00006103515625f);
    let x_2023 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2023);
    let x_2025 : f32 = u_xlat73;
    let x_2027 : vec4<f32> = u_xlat7;
    let x_2029 : vec3<f32> = (vec3<f32>(x_2025, x_2025, x_2025) * vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2032 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_2032);
    let x_2034 : f32 = u_xlat72;
    let x_2035 : i32 = u_xlati71;
    let x_2037 : f32 = x_2000.x_AdditionalLightsAttenuation[x_2035].x;
    u_xlat72 = (x_2034 * x_2037);
    let x_2039 : f32 = u_xlat72;
    let x_2041 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2039) * x_2041) + 1.0f);
    let x_2044 : f32 = u_xlat72;
    u_xlat72 = max(x_2044, 0.0f);
    let x_2046 : f32 = u_xlat72;
    let x_2047 : f32 = u_xlat72;
    u_xlat72 = (x_2046 * x_2047);
    let x_2049 : f32 = u_xlat72;
    let x_2050 : f32 = u_xlat73;
    u_xlat72 = (x_2049 * x_2050);
    let x_2052 : i32 = u_xlati71;
    let x_2054 : vec4<f32> = x_2000.x_AdditionalLightsSpotDir[x_2052];
    let x_2056 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2054.x, x_2054.y, x_2054.z), vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : f32 = u_xlat73;
    let x_2060 : i32 = u_xlati71;
    let x_2062 : f32 = x_2000.x_AdditionalLightsAttenuation[x_2060].z;
    let x_2064 : i32 = u_xlati71;
    let x_2066 : f32 = x_2000.x_AdditionalLightsAttenuation[x_2064].w;
    u_xlat73 = ((x_2059 * x_2062) + x_2066);
    let x_2068 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2068, 0.0f, 1.0f);
    let x_2070 : f32 = u_xlat73;
    let x_2071 : f32 = u_xlat73;
    u_xlat73 = (x_2070 * x_2071);
    let x_2073 : f32 = u_xlat72;
    let x_2074 : f32 = u_xlat73;
    u_xlat72 = (x_2073 * x_2074);
    let x_2078 : i32 = u_xlati71;
    let x_2080 : f32 = x_159.x_AdditionalShadowParams[x_2078].w;
    u_xlati73 = i32(x_2080);
    let x_2083 : i32 = u_xlati73;
    u_xlatb51 = (x_2083 >= 0i);
    let x_2085 : bool = u_xlatb51;
    if (x_2085) {
      let x_2089 : i32 = u_xlati71;
      let x_2091 : f32 = x_159.x_AdditionalShadowParams[x_2089].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2091, x_2091, x_2091, x_2091))));
      let x_2095 : bool = u_xlatb51;
      if (x_2095) {
        let x_2099 : vec4<f32> = u_xlat7;
        let x_2102 : vec4<f32> = u_xlat7;
        let x_2105 : vec4<bool> = (abs(vec4<f32>(x_2099.z, x_2099.z, x_2099.y, x_2099.z)) >= abs(vec4<f32>(x_2102.x, x_2102.y, x_2102.x, x_2102.x)));
        let x_2107 : vec3<bool> = vec3<bool>(x_2105.x, x_2105.y, x_2105.z);
        let x_2108 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
        let x_2111 : bool = u_xlatb8.y;
        let x_2113 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2111 & x_2113);
        let x_2115 : vec4<f32> = u_xlat7;
        let x_2118 : vec4<bool> = (-(vec4<f32>(x_2115.z, x_2115.y, x_2115.z, x_2115.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2119 : vec3<bool> = vec3<bool>(x_2118.x, x_2118.y, x_2118.w);
        let x_2120 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2119.x, x_2119.y, x_2120.z, x_2119.z);
        let x_2123 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2123);
        let x_2128 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2128);
        let x_2133 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2133);
        let x_2136 : bool = u_xlatb8.z;
        if (x_2136) {
          let x_2141 : f32 = u_xlat8.y;
          x_2137 = x_2141;
        } else {
          let x_2143 : f32 = u_xlat74;
          x_2137 = x_2143;
        }
        let x_2144 : f32 = x_2137;
        u_xlat74 = x_2144;
        let x_2145 : bool = u_xlatb51;
        if (x_2145) {
          let x_2150 : f32 = u_xlat8.x;
          x_2146 = x_2150;
        } else {
          let x_2152 : f32 = u_xlat74;
          x_2146 = x_2152;
        }
        let x_2153 : f32 = x_2146;
        u_xlat51.x = x_2153;
        let x_2155 : i32 = u_xlati71;
        let x_2157 : f32 = x_159.x_AdditionalShadowParams[x_2155].w;
        u_xlat74 = trunc(x_2157);
        let x_2160 : f32 = u_xlat51.x;
        let x_2161 : f32 = u_xlat74;
        u_xlat51.x = (x_2160 + x_2161);
        let x_2165 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2165);
      }
      let x_2167 : i32 = u_xlati73;
      u_xlati73 = (x_2167 << bitcast<u32>(2i));
      let x_2169 : vec3<f32> = vs_TEXCOORD1;
      let x_2172 : i32 = u_xlati73;
      let x_2175 : i32 = u_xlati73;
      let x_2179 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2172 + 1i) / 4i)][((x_2175 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2169.y, x_2169.y, x_2169.y, x_2169.y) * x_2179);
      let x_2181 : i32 = u_xlati73;
      let x_2183 : i32 = u_xlati73;
      let x_2186 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2181 / 4i)][(x_2183 % 4i)];
      let x_2187 : vec3<f32> = vs_TEXCOORD1;
      let x_2190 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2186 * vec4<f32>(x_2187.x, x_2187.x, x_2187.x, x_2187.x)) + x_2190);
      let x_2192 : i32 = u_xlati73;
      let x_2195 : i32 = u_xlati73;
      let x_2199 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2192 + 2i) / 4i)][((x_2195 + 2i) % 4i)];
      let x_2200 : vec3<f32> = vs_TEXCOORD1;
      let x_2203 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2199 * vec4<f32>(x_2200.z, x_2200.z, x_2200.z, x_2200.z)) + x_2203);
      let x_2205 : vec4<f32> = u_xlat8;
      let x_2206 : i32 = u_xlati73;
      let x_2209 : i32 = u_xlati73;
      let x_2213 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2206 + 3i) / 4i)][((x_2209 + 3i) % 4i)];
      u_xlat8 = (x_2205 + x_2213);
      let x_2215 : vec4<f32> = u_xlat8;
      let x_2217 : vec4<f32> = u_xlat8;
      let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.y, x_2215.z) / vec3<f32>(x_2217.w, x_2217.w, x_2217.w));
      let x_2220 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
      let x_2223 : i32 = u_xlati71;
      let x_2225 : f32 = x_159.x_AdditionalShadowParams[x_2223].y;
      u_xlatb73 = (0.0f < x_2225);
      let x_2227 : bool = u_xlatb73;
      if (x_2227) {
        let x_2230 : i32 = u_xlati71;
        let x_2232 : f32 = x_159.x_AdditionalShadowParams[x_2230].y;
        u_xlatb73 = (1.0f == x_2232);
        let x_2234 : bool = u_xlatb73;
        if (x_2234) {
          let x_2237 : vec4<f32> = u_xlat8;
          let x_2241 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2237.x, x_2237.y, x_2237.x, x_2237.y) + x_2241);
          let x_2244 : vec4<f32> = u_xlat9;
          let x_2245 : vec2<f32> = vec2<f32>(x_2244.x, x_2244.y);
          let x_2247 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
          let x_2255 : vec3<f32> = txVec30;
          let x_2257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
          u_xlat10.x = x_2257;
          let x_2260 : vec4<f32> = u_xlat9;
          let x_2261 : vec2<f32> = vec2<f32>(x_2260.z, x_2260.w);
          let x_2263 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2261.x, x_2261.y, x_2263);
          let x_2270 : vec3<f32> = txVec31;
          let x_2272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2270.xy, x_2270.z);
          u_xlat10.y = x_2272;
          let x_2274 : vec4<f32> = u_xlat8;
          let x_2278 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2274.x, x_2274.y, x_2274.x, x_2274.y) + x_2278);
          let x_2281 : vec4<f32> = u_xlat9;
          let x_2282 : vec2<f32> = vec2<f32>(x_2281.x, x_2281.y);
          let x_2284 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
          let x_2291 : vec3<f32> = txVec32;
          let x_2293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2291.xy, x_2291.z);
          u_xlat10.z = x_2293;
          let x_2296 : vec4<f32> = u_xlat9;
          let x_2297 : vec2<f32> = vec2<f32>(x_2296.z, x_2296.w);
          let x_2299 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2297.x, x_2297.y, x_2299);
          let x_2306 : vec3<f32> = txVec33;
          let x_2308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2306.xy, x_2306.z);
          u_xlat10.w = x_2308;
          let x_2310 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2310, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2313 : i32 = u_xlati71;
          let x_2315 : f32 = x_159.x_AdditionalShadowParams[x_2313].y;
          u_xlatb51 = (2.0f == x_2315);
          let x_2317 : bool = u_xlatb51;
          if (x_2317) {
            let x_2320 : vec4<f32> = u_xlat8;
            let x_2324 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2320.x, x_2320.y) * vec2<f32>(x_2324.z, x_2324.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2328 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2328);
            let x_2330 : vec4<f32> = u_xlat8;
            let x_2333 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2336 : vec2<f32> = u_xlat51;
            let x_2338 : vec2<f32> = ((vec2<f32>(x_2330.x, x_2330.y) * vec2<f32>(x_2333.z, x_2333.w)) + -(x_2336));
            let x_2339 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2341.x, x_2341.x, x_2341.y, x_2341.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2344 : vec4<f32> = u_xlat10;
            let x_2346 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2344.x, x_2344.x, x_2344.z, x_2344.z) * vec4<f32>(x_2346.x, x_2346.x, x_2346.z, x_2346.z));
            let x_2350 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2350.y, x_2350.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2353 : vec4<f32> = u_xlat11;
            let x_2356 : vec4<f32> = u_xlat9;
            let x_2359 : vec2<f32> = ((vec2<f32>(x_2353.x, x_2353.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2356.x, x_2356.y)));
            let x_2360 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2359.x, x_2360.y, x_2359.y, x_2360.w);
            let x_2362 : vec4<f32> = u_xlat9;
            let x_2365 : vec2<f32> = (-(vec2<f32>(x_2362.x, x_2362.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
            let x_2369 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2369.x, x_2369.y), vec2<f32>(0.0f, 0.0f));
            let x_2372 : vec2<f32> = u_xlat57;
            let x_2374 : vec2<f32> = u_xlat57;
            let x_2376 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2372) * x_2374) + vec2<f32>(x_2376.x, x_2376.y));
            let x_2379 : vec4<f32> = u_xlat9;
            let x_2381 : vec2<f32> = max(vec2<f32>(x_2379.x, x_2379.y), vec2<f32>(0.0f, 0.0f));
            let x_2382 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2381.x, x_2381.y, x_2382.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat9;
            let x_2387 : vec4<f32> = u_xlat9;
            let x_2390 : vec4<f32> = u_xlat10;
            let x_2392 : vec2<f32> = ((-(vec2<f32>(x_2384.x, x_2384.y)) * vec2<f32>(x_2387.x, x_2387.y)) + vec2<f32>(x_2390.y, x_2390.w));
            let x_2393 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
            let x_2395 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2395 + vec2<f32>(1.0f, 1.0f));
            let x_2397 : vec4<f32> = u_xlat9;
            let x_2399 : vec2<f32> = (vec2<f32>(x_2397.x, x_2397.y) + vec2<f32>(1.0f, 1.0f));
            let x_2400 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2399.x, x_2399.y, x_2400.z, x_2400.w);
            let x_2402 : vec4<f32> = u_xlat10;
            let x_2404 : vec2<f32> = (vec2<f32>(x_2402.x, x_2402.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2405 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2404.x, x_2404.y, x_2405.z, x_2405.w);
            let x_2407 : vec4<f32> = u_xlat11;
            let x_2409 : vec2<f32> = (vec2<f32>(x_2407.x, x_2407.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2410 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2409.x, x_2409.y, x_2410.z, x_2410.w);
            let x_2412 : vec2<f32> = u_xlat57;
            let x_2413 : vec2<f32> = (x_2412 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2414 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2416 : vec4<f32> = u_xlat9;
            let x_2418 : vec2<f32> = (vec2<f32>(x_2416.x, x_2416.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2419 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2418.x, x_2418.y, x_2419.z, x_2419.w);
            let x_2421 : vec4<f32> = u_xlat10;
            let x_2423 : vec2<f32> = (vec2<f32>(x_2421.y, x_2421.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2424 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
            let x_2427 : f32 = u_xlat11.x;
            u_xlat12.z = x_2427;
            let x_2430 : f32 = u_xlat9.x;
            u_xlat12.w = x_2430;
            let x_2433 : f32 = u_xlat14.x;
            u_xlat13.z = x_2433;
            let x_2436 : f32 = u_xlat55.x;
            u_xlat13.w = x_2436;
            let x_2438 : vec4<f32> = u_xlat12;
            let x_2440 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2438.z, x_2438.w, x_2438.x, x_2438.z) + vec4<f32>(x_2440.z, x_2440.w, x_2440.x, x_2440.z));
            let x_2444 : f32 = u_xlat12.y;
            u_xlat11.z = x_2444;
            let x_2447 : f32 = u_xlat9.y;
            u_xlat11.w = x_2447;
            let x_2450 : f32 = u_xlat13.y;
            u_xlat14.z = x_2450;
            let x_2453 : f32 = u_xlat55.y;
            u_xlat14.w = x_2453;
            let x_2455 : vec4<f32> = u_xlat11;
            let x_2457 : vec4<f32> = u_xlat14;
            let x_2459 : vec3<f32> = (vec3<f32>(x_2455.z, x_2455.y, x_2455.w) + vec3<f32>(x_2457.z, x_2457.y, x_2457.w));
            let x_2460 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
            let x_2462 : vec4<f32> = u_xlat13;
            let x_2464 : vec4<f32> = u_xlat10;
            let x_2466 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.z, x_2462.w) / vec3<f32>(x_2464.z, x_2464.w, x_2464.y));
            let x_2467 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat11;
            let x_2471 : vec3<f32> = (vec3<f32>(x_2469.x, x_2469.y, x_2469.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2472 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
            let x_2474 : vec4<f32> = u_xlat14;
            let x_2476 : vec4<f32> = u_xlat9;
            let x_2478 : vec3<f32> = (vec3<f32>(x_2474.z, x_2474.y, x_2474.w) / vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
            let x_2479 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
            let x_2481 : vec4<f32> = u_xlat12;
            let x_2483 : vec3<f32> = (vec3<f32>(x_2481.x, x_2481.y, x_2481.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2484 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
            let x_2486 : vec4<f32> = u_xlat11;
            let x_2489 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2491 : vec3<f32> = (vec3<f32>(x_2486.y, x_2486.x, x_2486.z) * vec3<f32>(x_2489.x, x_2489.x, x_2489.x));
            let x_2492 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat12;
            let x_2497 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2499 : vec3<f32> = (vec3<f32>(x_2494.x, x_2494.y, x_2494.z) * vec3<f32>(x_2497.y, x_2497.y, x_2497.y));
            let x_2500 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
            let x_2503 : f32 = u_xlat12.x;
            u_xlat11.w = x_2503;
            let x_2505 : vec2<f32> = u_xlat51;
            let x_2508 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2511 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2505.x, x_2505.y, x_2505.x, x_2505.y) * vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y)) + vec4<f32>(x_2511.y, x_2511.w, x_2511.x, x_2511.w));
            let x_2514 : vec2<f32> = u_xlat51;
            let x_2516 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2519 : vec4<f32> = u_xlat11;
            let x_2521 : vec2<f32> = ((x_2514 * vec2<f32>(x_2516.x, x_2516.y)) + vec2<f32>(x_2519.z, x_2519.w));
            let x_2522 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2525 : f32 = u_xlat11.y;
            u_xlat12.w = x_2525;
            let x_2527 : vec4<f32> = u_xlat12;
            let x_2528 : vec2<f32> = vec2<f32>(x_2527.y, x_2527.z);
            let x_2529 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2529.x, x_2528.x, x_2529.z, x_2528.y);
            let x_2531 : vec2<f32> = u_xlat51;
            let x_2534 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2537 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2531.x, x_2531.y, x_2531.x, x_2531.y) * vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y)) + vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2537.y));
            let x_2540 : vec2<f32> = u_xlat51;
            let x_2543 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2546 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y) * vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.y)) + vec4<f32>(x_2546.w, x_2546.y, x_2546.w, x_2546.z));
            let x_2549 : vec2<f32> = u_xlat51;
            let x_2552 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2555 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2549.x, x_2549.y, x_2549.x, x_2549.y) * vec4<f32>(x_2552.x, x_2552.y, x_2552.x, x_2552.y)) + vec4<f32>(x_2555.x, x_2555.w, x_2555.z, x_2555.w));
            let x_2558 : vec4<f32> = u_xlat9;
            let x_2560 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2558.x, x_2558.x, x_2558.x, x_2558.y) * vec4<f32>(x_2560.z, x_2560.w, x_2560.y, x_2560.z));
            let x_2563 : vec4<f32> = u_xlat9;
            let x_2565 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2563.y, x_2563.y, x_2563.z, x_2563.z) * x_2565);
            let x_2568 : f32 = u_xlat9.z;
            let x_2570 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2568 * x_2570);
            let x_2574 : vec4<f32> = u_xlat13;
            let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
            let x_2577 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec34;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat74 = x_2586;
            let x_2588 : vec4<f32> = u_xlat13;
            let x_2589 : vec2<f32> = vec2<f32>(x_2588.z, x_2588.w);
            let x_2591 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2589.x, x_2589.y, x_2591);
            let x_2599 : vec3<f32> = txVec35;
            let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
            u_xlat75 = x_2601;
            let x_2602 : f32 = u_xlat75;
            let x_2604 : f32 = u_xlat16.y;
            u_xlat75 = (x_2602 * x_2604);
            let x_2607 : f32 = u_xlat16.x;
            let x_2608 : f32 = u_xlat74;
            let x_2610 : f32 = u_xlat75;
            u_xlat74 = ((x_2607 * x_2608) + x_2610);
            let x_2613 : vec4<f32> = u_xlat14;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.x, x_2613.y);
            let x_2616 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec36;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat75 = x_2625;
            let x_2627 : f32 = u_xlat16.z;
            let x_2628 : f32 = u_xlat75;
            let x_2630 : f32 = u_xlat74;
            u_xlat74 = ((x_2627 * x_2628) + x_2630);
            let x_2633 : vec4<f32> = u_xlat12;
            let x_2634 : vec2<f32> = vec2<f32>(x_2633.x, x_2633.y);
            let x_2636 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2634.x, x_2634.y, x_2636);
            let x_2643 : vec3<f32> = txVec37;
            let x_2645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2643.xy, x_2643.z);
            u_xlat75 = x_2645;
            let x_2647 : f32 = u_xlat16.w;
            let x_2648 : f32 = u_xlat75;
            let x_2650 : f32 = u_xlat74;
            u_xlat74 = ((x_2647 * x_2648) + x_2650);
            let x_2653 : vec4<f32> = u_xlat15;
            let x_2654 : vec2<f32> = vec2<f32>(x_2653.x, x_2653.y);
            let x_2656 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec38;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat75 = x_2665;
            let x_2667 : f32 = u_xlat17.x;
            let x_2668 : f32 = u_xlat75;
            let x_2670 : f32 = u_xlat74;
            u_xlat74 = ((x_2667 * x_2668) + x_2670);
            let x_2673 : vec4<f32> = u_xlat15;
            let x_2674 : vec2<f32> = vec2<f32>(x_2673.z, x_2673.w);
            let x_2676 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2674.x, x_2674.y, x_2676);
            let x_2683 : vec3<f32> = txVec39;
            let x_2685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2683.xy, x_2683.z);
            u_xlat75 = x_2685;
            let x_2687 : f32 = u_xlat17.y;
            let x_2688 : f32 = u_xlat75;
            let x_2690 : f32 = u_xlat74;
            u_xlat74 = ((x_2687 * x_2688) + x_2690);
            let x_2693 : vec4<f32> = u_xlat12;
            let x_2694 : vec2<f32> = vec2<f32>(x_2693.z, x_2693.w);
            let x_2696 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
            let x_2703 : vec3<f32> = txVec40;
            let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
            u_xlat75 = x_2705;
            let x_2707 : f32 = u_xlat17.z;
            let x_2708 : f32 = u_xlat75;
            let x_2710 : f32 = u_xlat74;
            u_xlat74 = ((x_2707 * x_2708) + x_2710);
            let x_2713 : vec4<f32> = u_xlat11;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.x, x_2713.y);
            let x_2716 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2723 : vec3<f32> = txVec41;
            let x_2725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2723.xy, x_2723.z);
            u_xlat75 = x_2725;
            let x_2727 : f32 = u_xlat17.w;
            let x_2728 : f32 = u_xlat75;
            let x_2730 : f32 = u_xlat74;
            u_xlat74 = ((x_2727 * x_2728) + x_2730);
            let x_2733 : vec4<f32> = u_xlat11;
            let x_2734 : vec2<f32> = vec2<f32>(x_2733.z, x_2733.w);
            let x_2736 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2734.x, x_2734.y, x_2736);
            let x_2743 : vec3<f32> = txVec42;
            let x_2745 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2743.xy, x_2743.z);
            u_xlat75 = x_2745;
            let x_2747 : f32 = u_xlat51.x;
            let x_2748 : f32 = u_xlat75;
            let x_2750 : f32 = u_xlat74;
            u_xlat73 = ((x_2747 * x_2748) + x_2750);
          } else {
            let x_2753 : vec4<f32> = u_xlat8;
            let x_2756 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2753.x, x_2753.y) * vec2<f32>(x_2756.z, x_2756.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2760 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2760);
            let x_2762 : vec4<f32> = u_xlat8;
            let x_2765 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2768 : vec2<f32> = u_xlat51;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2762.x, x_2762.y) * vec2<f32>(x_2765.z, x_2765.w)) + -(x_2768));
            let x_2771 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2773.x, x_2773.x, x_2773.y, x_2773.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2776 : vec4<f32> = u_xlat10;
            let x_2778 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2776.x, x_2776.x, x_2776.z, x_2776.z) * vec4<f32>(x_2778.x, x_2778.x, x_2778.z, x_2778.z));
            let x_2781 : vec4<f32> = u_xlat11;
            let x_2783 : vec2<f32> = (vec2<f32>(x_2781.y, x_2781.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2784 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2784.x, x_2783.x, x_2784.z, x_2783.y);
            let x_2786 : vec4<f32> = u_xlat11;
            let x_2789 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2786.x, x_2786.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2789.x, x_2789.y)));
            let x_2793 : vec4<f32> = u_xlat9;
            let x_2796 : vec2<f32> = (-(vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2797 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2796.x, x_2797.y, x_2796.y, x_2797.w);
            let x_2799 : vec4<f32> = u_xlat9;
            let x_2801 : vec2<f32> = min(vec2<f32>(x_2799.x, x_2799.y), vec2<f32>(0.0f, 0.0f));
            let x_2802 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat11;
            let x_2807 : vec4<f32> = u_xlat11;
            let x_2810 : vec4<f32> = u_xlat10;
            let x_2812 : vec2<f32> = ((-(vec2<f32>(x_2804.x, x_2804.y)) * vec2<f32>(x_2807.x, x_2807.y)) + vec2<f32>(x_2810.x, x_2810.z));
            let x_2813 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2812.x, x_2813.y, x_2812.y, x_2813.w);
            let x_2815 : vec4<f32> = u_xlat9;
            let x_2817 : vec2<f32> = max(vec2<f32>(x_2815.x, x_2815.y), vec2<f32>(0.0f, 0.0f));
            let x_2818 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2817.x, x_2817.y, x_2818.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat11;
            let x_2823 : vec4<f32> = u_xlat11;
            let x_2826 : vec4<f32> = u_xlat10;
            let x_2828 : vec2<f32> = ((-(vec2<f32>(x_2820.x, x_2820.y)) * vec2<f32>(x_2823.x, x_2823.y)) + vec2<f32>(x_2826.y, x_2826.w));
            let x_2829 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2829.x, x_2828.x, x_2829.z, x_2828.y);
            let x_2831 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2831 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2835 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2835 * 0.08163200318813323975f);
            let x_2838 : vec2<f32> = u_xlat55;
            let x_2840 : vec2<f32> = (vec2<f32>(x_2838.y, x_2838.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2841 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2840.x, x_2840.y, x_2841.z, x_2841.w);
            let x_2843 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2843.x, x_2843.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2847 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2847 * 0.08163200318813323975f);
            let x_2851 : f32 = u_xlat13.y;
            u_xlat11.x = x_2851;
            let x_2853 : vec4<f32> = u_xlat9;
            let x_2856 : vec2<f32> = ((vec2<f32>(x_2853.x, x_2853.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2857 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2857.x, x_2856.x, x_2857.z, x_2856.y);
            let x_2859 : vec4<f32> = u_xlat9;
            let x_2862 : vec2<f32> = ((vec2<f32>(x_2859.x, x_2859.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2863 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2862.x, x_2863.y, x_2862.y, x_2863.w);
            let x_2866 : f32 = u_xlat55.x;
            u_xlat10.y = x_2866;
            let x_2869 : f32 = u_xlat12.y;
            u_xlat10.w = x_2869;
            let x_2871 : vec4<f32> = u_xlat10;
            let x_2872 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2871 + x_2872);
            let x_2874 : vec4<f32> = u_xlat9;
            let x_2877 : vec2<f32> = ((vec2<f32>(x_2874.y, x_2874.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2878 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2878.x, x_2877.x, x_2878.z, x_2877.y);
            let x_2880 : vec4<f32> = u_xlat9;
            let x_2883 : vec2<f32> = ((vec2<f32>(x_2880.y, x_2880.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2884 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2883.x, x_2884.y, x_2883.y, x_2884.w);
            let x_2887 : f32 = u_xlat55.y;
            u_xlat12.y = x_2887;
            let x_2889 : vec4<f32> = u_xlat12;
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2889 + x_2890);
            let x_2892 : vec4<f32> = u_xlat10;
            let x_2893 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2892 / x_2893);
            let x_2895 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2895 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2897 : vec4<f32> = u_xlat12;
            let x_2898 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2897 / x_2898);
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2900 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2902 : vec4<f32> = u_xlat10;
            let x_2905 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2902.w, x_2902.x, x_2902.y, x_2902.z) * vec4<f32>(x_2905.x, x_2905.x, x_2905.x, x_2905.x));
            let x_2908 : vec4<f32> = u_xlat12;
            let x_2911 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2908.x, x_2908.w, x_2908.y, x_2908.z) * vec4<f32>(x_2911.y, x_2911.y, x_2911.y, x_2911.y));
            let x_2914 : vec4<f32> = u_xlat10;
            let x_2915 : vec3<f32> = vec3<f32>(x_2914.y, x_2914.z, x_2914.w);
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2915.x, x_2916.y, x_2915.y, x_2915.z);
            let x_2919 : f32 = u_xlat12.x;
            u_xlat13.y = x_2919;
            let x_2921 : vec2<f32> = u_xlat51;
            let x_2924 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2927 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.y) * vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y)) + vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2927.y));
            let x_2930 : vec2<f32> = u_xlat51;
            let x_2932 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2935 : vec4<f32> = u_xlat13;
            let x_2937 : vec2<f32> = ((x_2930 * vec2<f32>(x_2932.x, x_2932.y)) + vec2<f32>(x_2935.w, x_2935.y));
            let x_2938 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
            let x_2941 : f32 = u_xlat13.y;
            u_xlat10.y = x_2941;
            let x_2944 : f32 = u_xlat12.z;
            u_xlat13.y = x_2944;
            let x_2946 : vec2<f32> = u_xlat51;
            let x_2949 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y) * vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y)) + vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2952.y));
            let x_2956 : vec2<f32> = u_xlat51;
            let x_2958 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2961 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2956 * vec2<f32>(x_2958.x, x_2958.y)) + vec2<f32>(x_2961.w, x_2961.y));
            let x_2965 : f32 = u_xlat13.y;
            u_xlat10.z = x_2965;
            let x_2967 : vec2<f32> = u_xlat51;
            let x_2970 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2973 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y) * vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y)) + vec4<f32>(x_2973.x, x_2973.y, x_2973.x, x_2973.z));
            let x_2977 : f32 = u_xlat12.w;
            u_xlat13.y = x_2977;
            let x_2979 : vec2<f32> = u_xlat51;
            let x_2982 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y) * vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y)) + vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2985.y));
            let x_2989 : vec2<f32> = u_xlat51;
            let x_2991 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2989 * vec2<f32>(x_2991.x, x_2991.y)) + vec2<f32>(x_2994.w, x_2994.y));
            let x_2998 : f32 = u_xlat13.y;
            u_xlat10.w = x_2998;
            let x_3001 : vec2<f32> = u_xlat51;
            let x_3003 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3006 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_3001 * vec2<f32>(x_3003.x, x_3003.y)) + vec2<f32>(x_3006.x, x_3006.w));
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3010 : vec3<f32> = vec3<f32>(x_3009.x, x_3009.z, x_3009.w);
            let x_3011 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3010.x, x_3011.y, x_3010.y, x_3010.z);
            let x_3013 : vec2<f32> = u_xlat51;
            let x_3016 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3023 : vec2<f32> = u_xlat51;
            let x_3025 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_3023 * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.w, x_3028.y));
            let x_3032 : f32 = u_xlat10.x;
            u_xlat12.x = x_3032;
            let x_3034 : vec2<f32> = u_xlat51;
            let x_3036 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_3034 * vec2<f32>(x_3036.x, x_3036.y)) + vec2<f32>(x_3039.x, x_3039.y));
            let x_3043 : vec4<f32> = u_xlat9;
            let x_3045 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3043.x, x_3043.x, x_3043.x, x_3043.x) * x_3045);
            let x_3048 : vec4<f32> = u_xlat9;
            let x_3050 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3048.y, x_3048.y, x_3048.y, x_3048.y) * x_3050);
            let x_3053 : vec4<f32> = u_xlat9;
            let x_3055 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3053.z, x_3053.z, x_3053.z, x_3053.z) * x_3055);
            let x_3057 : vec4<f32> = u_xlat9;
            let x_3059 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3057.w, x_3057.w, x_3057.w, x_3057.w) * x_3059);
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3063 : vec2<f32> = vec2<f32>(x_3062.x, x_3062.y);
            let x_3065 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3063.x, x_3063.y, x_3065);
            let x_3072 : vec3<f32> = txVec43;
            let x_3074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3072.xy, x_3072.z);
            u_xlat75 = x_3074;
            let x_3076 : vec4<f32> = u_xlat14;
            let x_3077 : vec2<f32> = vec2<f32>(x_3076.z, x_3076.w);
            let x_3079 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3087 : vec3<f32> = txVec44;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat76 = x_3089;
            let x_3090 : f32 = u_xlat76;
            let x_3092 : f32 = u_xlat20.y;
            u_xlat76 = (x_3090 * x_3092);
            let x_3095 : f32 = u_xlat20.x;
            let x_3096 : f32 = u_xlat75;
            let x_3098 : f32 = u_xlat76;
            u_xlat75 = ((x_3095 * x_3096) + x_3098);
            let x_3101 : vec4<f32> = u_xlat15;
            let x_3102 : vec2<f32> = vec2<f32>(x_3101.x, x_3101.y);
            let x_3104 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3102.x, x_3102.y, x_3104);
            let x_3111 : vec3<f32> = txVec45;
            let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
            u_xlat76 = x_3113;
            let x_3115 : f32 = u_xlat20.z;
            let x_3116 : f32 = u_xlat76;
            let x_3118 : f32 = u_xlat75;
            u_xlat75 = ((x_3115 * x_3116) + x_3118);
            let x_3121 : vec4<f32> = u_xlat17;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.x, x_3121.y);
            let x_3124 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec46;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat76 = x_3133;
            let x_3135 : f32 = u_xlat20.w;
            let x_3136 : f32 = u_xlat76;
            let x_3138 : f32 = u_xlat75;
            u_xlat75 = ((x_3135 * x_3136) + x_3138);
            let x_3141 : vec4<f32> = u_xlat16;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.x, x_3141.y);
            let x_3144 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec47;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat76 = x_3153;
            let x_3155 : f32 = u_xlat21.x;
            let x_3156 : f32 = u_xlat76;
            let x_3158 : f32 = u_xlat75;
            u_xlat75 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec4<f32> = u_xlat16;
            let x_3162 : vec2<f32> = vec2<f32>(x_3161.z, x_3161.w);
            let x_3164 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec48;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat76 = x_3173;
            let x_3175 : f32 = u_xlat21.y;
            let x_3176 : f32 = u_xlat76;
            let x_3178 : f32 = u_xlat75;
            u_xlat75 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec2<f32> = u_xlat61;
            let x_3183 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec49;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat76 = x_3192;
            let x_3194 : f32 = u_xlat21.z;
            let x_3195 : f32 = u_xlat76;
            let x_3197 : f32 = u_xlat75;
            u_xlat75 = ((x_3194 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat17;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.z, x_3200.w);
            let x_3203 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec50;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat76 = x_3212;
            let x_3214 : f32 = u_xlat21.w;
            let x_3215 : f32 = u_xlat76;
            let x_3217 : f32 = u_xlat75;
            u_xlat75 = ((x_3214 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec51;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat76 = x_3232;
            let x_3234 : f32 = u_xlat22.x;
            let x_3235 : f32 = u_xlat76;
            let x_3237 : f32 = u_xlat75;
            u_xlat75 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat18;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.z, x_3240.w);
            let x_3243 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec52;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat76 = x_3252;
            let x_3254 : f32 = u_xlat22.y;
            let x_3255 : f32 = u_xlat76;
            let x_3257 : f32 = u_xlat75;
            u_xlat75 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec2<f32> = u_xlat33;
            let x_3262 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec53;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat76 = x_3271;
            let x_3273 : f32 = u_xlat22.z;
            let x_3274 : f32 = u_xlat76;
            let x_3276 : f32 = u_xlat75;
            u_xlat75 = ((x_3273 * x_3274) + x_3276);
            let x_3279 : vec2<f32> = u_xlat19;
            let x_3281 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
            let x_3288 : vec3<f32> = txVec54;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat76 = x_3290;
            let x_3292 : f32 = u_xlat22.w;
            let x_3293 : f32 = u_xlat76;
            let x_3295 : f32 = u_xlat75;
            u_xlat75 = ((x_3292 * x_3293) + x_3295);
            let x_3298 : vec4<f32> = u_xlat13;
            let x_3299 : vec2<f32> = vec2<f32>(x_3298.x, x_3298.y);
            let x_3301 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec55;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat76 = x_3310;
            let x_3312 : f32 = u_xlat9.x;
            let x_3313 : f32 = u_xlat76;
            let x_3315 : f32 = u_xlat75;
            u_xlat75 = ((x_3312 * x_3313) + x_3315);
            let x_3318 : vec4<f32> = u_xlat13;
            let x_3319 : vec2<f32> = vec2<f32>(x_3318.z, x_3318.w);
            let x_3321 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec56;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat76 = x_3330;
            let x_3332 : f32 = u_xlat9.y;
            let x_3333 : f32 = u_xlat76;
            let x_3335 : f32 = u_xlat75;
            u_xlat75 = ((x_3332 * x_3333) + x_3335);
            let x_3338 : vec2<f32> = u_xlat58;
            let x_3340 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec57;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat76 = x_3349;
            let x_3351 : f32 = u_xlat9.z;
            let x_3352 : f32 = u_xlat76;
            let x_3354 : f32 = u_xlat75;
            u_xlat75 = ((x_3351 * x_3352) + x_3354);
            let x_3357 : vec2<f32> = u_xlat51;
            let x_3359 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3357.x, x_3357.y, x_3359);
            let x_3366 : vec3<f32> = txVec58;
            let x_3368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3366.xy, x_3366.z);
            u_xlat51.x = x_3368;
            let x_3371 : f32 = u_xlat9.w;
            let x_3373 : f32 = u_xlat51.x;
            let x_3375 : f32 = u_xlat75;
            u_xlat73 = ((x_3371 * x_3373) + x_3375);
          }
        }
      } else {
        let x_3379 : vec4<f32> = u_xlat8;
        let x_3380 : vec2<f32> = vec2<f32>(x_3379.x, x_3379.y);
        let x_3382 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
        let x_3389 : vec3<f32> = txVec59;
        let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
        u_xlat73 = x_3391;
      }
      let x_3392 : i32 = u_xlati71;
      let x_3394 : f32 = x_159.x_AdditionalShadowParams[x_3392].x;
      u_xlat51.x = (1.0f + -(x_3394));
      let x_3398 : f32 = u_xlat73;
      let x_3399 : i32 = u_xlati71;
      let x_3401 : f32 = x_159.x_AdditionalShadowParams[x_3399].x;
      let x_3404 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3398 * x_3401) + x_3404);
      let x_3407 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3407);
      let x_3411 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3411 >= 1.0f);
      let x_3413 : bool = u_xlatb74;
      let x_3414 : bool = u_xlatb51;
      u_xlatb51 = (x_3413 | x_3414);
      let x_3416 : bool = u_xlatb51;
      let x_3417 : f32 = u_xlat73;
      u_xlat73 = select(x_3417, 1.0f, x_3416);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3420 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3420) + 1.0f);
    let x_3424 : f32 = u_xlat69;
    let x_3426 : f32 = u_xlat51.x;
    let x_3428 : f32 = u_xlat73;
    u_xlat73 = ((x_3424 * x_3426) + x_3428);
    let x_3431 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3431 & 31i)));
    let x_3435 : i32 = u_xlati51;
    let x_3438 : f32 = x_1754.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3435) & bitcast<u32>(x_3438)));
    let x_3442 : i32 = u_xlati51;
    if ((x_3442 != 0i)) {
      let x_3446 : i32 = u_xlati71;
      let x_3448 : f32 = x_1754.x_AdditionalLightsLightTypes[x_3446].el;
      u_xlati51 = i32(x_3448);
      let x_3451 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3451 != 0i));
      let x_3455 : i32 = u_xlati71;
      u_xlati75 = (x_3455 << bitcast<u32>(2i));
      let x_3457 : i32 = u_xlati74;
      if ((x_3457 != 0i)) {
        let x_3461 : vec3<f32> = vs_TEXCOORD1;
        let x_3463 : i32 = u_xlati75;
        let x_3466 : i32 = u_xlati75;
        let x_3470 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3463 + 1i) / 4i)][((x_3466 + 1i) % 4i)];
        let x_3472 : vec3<f32> = (vec3<f32>(x_3461.y, x_3461.y, x_3461.y) * vec3<f32>(x_3470.x, x_3470.y, x_3470.w));
        let x_3473 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3473.w);
        let x_3475 : i32 = u_xlati75;
        let x_3477 : i32 = u_xlati75;
        let x_3480 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3475 / 4i)][(x_3477 % 4i)];
        let x_3482 : vec3<f32> = vs_TEXCOORD1;
        let x_3485 : vec4<f32> = u_xlat8;
        let x_3487 : vec3<f32> = ((vec3<f32>(x_3480.x, x_3480.y, x_3480.w) * vec3<f32>(x_3482.x, x_3482.x, x_3482.x)) + vec3<f32>(x_3485.x, x_3485.y, x_3485.z));
        let x_3488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
        let x_3490 : i32 = u_xlati75;
        let x_3493 : i32 = u_xlati75;
        let x_3497 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3490 + 2i) / 4i)][((x_3493 + 2i) % 4i)];
        let x_3499 : vec3<f32> = vs_TEXCOORD1;
        let x_3502 : vec4<f32> = u_xlat8;
        let x_3504 : vec3<f32> = ((vec3<f32>(x_3497.x, x_3497.y, x_3497.w) * vec3<f32>(x_3499.z, x_3499.z, x_3499.z)) + vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
        let x_3505 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3504.x, x_3504.y, x_3504.z, x_3505.w);
        let x_3507 : vec4<f32> = u_xlat8;
        let x_3509 : i32 = u_xlati75;
        let x_3512 : i32 = u_xlati75;
        let x_3516 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3509 + 3i) / 4i)][((x_3512 + 3i) % 4i)];
        let x_3518 : vec3<f32> = (vec3<f32>(x_3507.x, x_3507.y, x_3507.z) + vec3<f32>(x_3516.x, x_3516.y, x_3516.w));
        let x_3519 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3518.x, x_3518.y, x_3518.z, x_3519.w);
        let x_3521 : vec4<f32> = u_xlat8;
        let x_3523 : vec4<f32> = u_xlat8;
        let x_3525 : vec2<f32> = (vec2<f32>(x_3521.x, x_3521.y) / vec2<f32>(x_3523.z, x_3523.z));
        let x_3526 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3525.x, x_3525.y, x_3526.z, x_3526.w);
        let x_3528 : vec4<f32> = u_xlat8;
        let x_3531 : vec2<f32> = ((vec2<f32>(x_3528.x, x_3528.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3532 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
        let x_3534 : vec4<f32> = u_xlat8;
        let x_3538 : vec2<f32> = clamp(vec2<f32>(x_3534.x, x_3534.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3538.x, x_3538.y, x_3539.z, x_3539.w);
        let x_3541 : i32 = u_xlati71;
        let x_3543 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3541];
        let x_3545 : vec4<f32> = u_xlat8;
        let x_3548 : i32 = u_xlati71;
        let x_3550 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3548];
        let x_3552 : vec2<f32> = ((vec2<f32>(x_3543.x, x_3543.y) * vec2<f32>(x_3545.x, x_3545.y)) + vec2<f32>(x_3550.z, x_3550.w));
        let x_3553 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3552.x, x_3552.y, x_3553.z, x_3553.w);
      } else {
        let x_3556 : i32 = u_xlati51;
        u_xlatb51 = (x_3556 == 1i);
        let x_3558 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3558);
        let x_3560 : i32 = u_xlati51;
        if ((x_3560 != 0i)) {
          let x_3564 : vec3<f32> = vs_TEXCOORD1;
          let x_3566 : i32 = u_xlati75;
          let x_3569 : i32 = u_xlati75;
          let x_3573 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3566 + 1i) / 4i)][((x_3569 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3564.y, x_3564.y) * vec2<f32>(x_3573.x, x_3573.y));
          let x_3576 : i32 = u_xlati75;
          let x_3578 : i32 = u_xlati75;
          let x_3581 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3576 / 4i)][(x_3578 % 4i)];
          let x_3583 : vec3<f32> = vs_TEXCOORD1;
          let x_3586 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3581.x, x_3581.y) * vec2<f32>(x_3583.x, x_3583.x)) + x_3586);
          let x_3588 : i32 = u_xlati75;
          let x_3591 : i32 = u_xlati75;
          let x_3595 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3588 + 2i) / 4i)][((x_3591 + 2i) % 4i)];
          let x_3597 : vec3<f32> = vs_TEXCOORD1;
          let x_3600 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3595.x, x_3595.y) * vec2<f32>(x_3597.z, x_3597.z)) + x_3600);
          let x_3602 : vec2<f32> = u_xlat51;
          let x_3603 : i32 = u_xlati75;
          let x_3606 : i32 = u_xlati75;
          let x_3610 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3603 + 3i) / 4i)][((x_3606 + 3i) % 4i)];
          u_xlat51 = (x_3602 + vec2<f32>(x_3610.x, x_3610.y));
          let x_3613 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3613 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3616 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3616);
          let x_3618 : i32 = u_xlati71;
          let x_3620 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3618];
          let x_3622 : vec2<f32> = u_xlat51;
          let x_3624 : i32 = u_xlati71;
          let x_3626 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3624];
          let x_3628 : vec2<f32> = ((vec2<f32>(x_3620.x, x_3620.y) * x_3622) + vec2<f32>(x_3626.z, x_3626.w));
          let x_3629 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3628.x, x_3628.y, x_3629.z, x_3629.w);
        } else {
          let x_3632 : vec3<f32> = vs_TEXCOORD1;
          let x_3634 : i32 = u_xlati75;
          let x_3637 : i32 = u_xlati75;
          let x_3641 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3634 + 1i) / 4i)][((x_3637 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3632.y, x_3632.y, x_3632.y, x_3632.y) * x_3641);
          let x_3643 : i32 = u_xlati75;
          let x_3645 : i32 = u_xlati75;
          let x_3648 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[(x_3643 / 4i)][(x_3645 % 4i)];
          let x_3649 : vec3<f32> = vs_TEXCOORD1;
          let x_3652 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3648 * vec4<f32>(x_3649.x, x_3649.x, x_3649.x, x_3649.x)) + x_3652);
          let x_3654 : i32 = u_xlati75;
          let x_3657 : i32 = u_xlati75;
          let x_3661 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3654 + 2i) / 4i)][((x_3657 + 2i) % 4i)];
          let x_3662 : vec3<f32> = vs_TEXCOORD1;
          let x_3665 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3661 * vec4<f32>(x_3662.z, x_3662.z, x_3662.z, x_3662.z)) + x_3665);
          let x_3667 : vec4<f32> = u_xlat9;
          let x_3668 : i32 = u_xlati75;
          let x_3671 : i32 = u_xlati75;
          let x_3675 : vec4<f32> = x_1754.x_AdditionalLightsWorldToLights[((x_3668 + 3i) / 4i)][((x_3671 + 3i) % 4i)];
          u_xlat9 = (x_3667 + x_3675);
          let x_3677 : vec4<f32> = u_xlat9;
          let x_3679 : vec4<f32> = u_xlat9;
          let x_3681 : vec3<f32> = (vec3<f32>(x_3677.x, x_3677.y, x_3677.z) / vec3<f32>(x_3679.w, x_3679.w, x_3679.w));
          let x_3682 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
          let x_3684 : vec4<f32> = u_xlat9;
          let x_3686 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3684.x, x_3684.y, x_3684.z), vec3<f32>(x_3686.x, x_3686.y, x_3686.z));
          let x_3691 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3691);
          let x_3694 : vec2<f32> = u_xlat51;
          let x_3696 : vec4<f32> = u_xlat9;
          let x_3698 : vec3<f32> = (vec3<f32>(x_3694.x, x_3694.x, x_3694.x) * vec3<f32>(x_3696.x, x_3696.y, x_3696.z));
          let x_3699 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3699.w);
          let x_3701 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3701.x, x_3701.y, x_3701.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3708 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3708, 0.00000099999999747524f);
          let x_3713 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3713);
          let x_3716 : vec2<f32> = u_xlat51;
          let x_3718 : vec4<f32> = u_xlat9;
          let x_3720 : vec3<f32> = (vec3<f32>(x_3716.x, x_3716.x, x_3716.x) * vec3<f32>(x_3718.z, x_3718.x, x_3718.y));
          let x_3721 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3720.x, x_3720.y, x_3720.z, x_3721.w);
          let x_3724 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3724);
          let x_3728 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3728, 0.0f, 1.0f);
          let x_3732 : vec4<f32> = u_xlat10;
          let x_3734 : vec4<bool> = (vec4<f32>(x_3732.y, x_3732.z, x_3732.y, x_3732.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3734.x, x_3734.y);
          let x_3737 : bool = u_xlatb54.x;
          if (x_3737) {
            let x_3742 : f32 = u_xlat10.x;
            x_3738 = x_3742;
          } else {
            let x_3745 : f32 = u_xlat10.x;
            x_3738 = -(x_3745);
          }
          let x_3747 : f32 = x_3738;
          u_xlat54.x = x_3747;
          let x_3750 : bool = u_xlatb54.y;
          if (x_3750) {
            let x_3755 : f32 = u_xlat10.x;
            x_3751 = x_3755;
          } else {
            let x_3758 : f32 = u_xlat10.x;
            x_3751 = -(x_3758);
          }
          let x_3760 : f32 = x_3751;
          u_xlat54.y = x_3760;
          let x_3762 : vec4<f32> = u_xlat9;
          let x_3764 : vec2<f32> = u_xlat51;
          let x_3767 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3762.x, x_3762.y) * vec2<f32>(x_3764.x, x_3764.x)) + x_3767);
          let x_3769 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3769 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3772 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3772, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3776 : i32 = u_xlati71;
          let x_3778 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3776];
          let x_3780 : vec2<f32> = u_xlat51;
          let x_3782 : i32 = u_xlati71;
          let x_3784 : vec4<f32> = x_1754.x_AdditionalLightsCookieAtlasUVRects[x_3782];
          let x_3786 : vec2<f32> = ((vec2<f32>(x_3778.x, x_3778.y) * x_3780) + vec2<f32>(x_3784.z, x_3784.w));
          let x_3787 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3786.x, x_3786.y, x_3787.z, x_3787.w);
        }
      }
      let x_3794 : vec4<f32> = u_xlat8;
      let x_3796 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3794.x, x_3794.y), 0.0f);
      u_xlat8 = x_3796;
      let x_3798 : bool = u_xlatb5.y;
      if (x_3798) {
        let x_3803 : f32 = u_xlat8.w;
        x_3799 = x_3803;
      } else {
        let x_3806 : f32 = u_xlat8.x;
        x_3799 = x_3806;
      }
      let x_3807 : f32 = x_3799;
      u_xlat51.x = x_3807;
      let x_3810 : bool = u_xlatb5.x;
      if (x_3810) {
        let x_3814 : vec4<f32> = u_xlat8;
        x_3811 = vec3<f32>(x_3814.x, x_3814.y, x_3814.z);
      } else {
        let x_3817 : vec2<f32> = u_xlat51;
        x_3811 = vec3<f32>(x_3817.x, x_3817.x, x_3817.x);
      }
      let x_3819 : vec3<f32> = x_3811;
      let x_3820 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3820.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3826 : vec4<f32> = u_xlat8;
    let x_3828 : i32 = u_xlati71;
    let x_3830 : vec4<f32> = x_2000.x_AdditionalLightsColor[x_3828];
    let x_3832 : vec3<f32> = (vec3<f32>(x_3826.x, x_3826.y, x_3826.z) * vec3<f32>(x_3830.x, x_3830.y, x_3830.z));
    let x_3833 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3832.x, x_3832.y, x_3832.z, x_3833.w);
    let x_3835 : f32 = u_xlat72;
    let x_3836 : f32 = u_xlat73;
    u_xlat71 = (x_3835 * x_3836);
    let x_3838 : f32 = u_xlat71;
    let x_3840 : vec4<f32> = u_xlat8;
    let x_3842 : vec3<f32> = (vec3<f32>(x_3838, x_3838, x_3838) * vec3<f32>(x_3840.x, x_3840.y, x_3840.z));
    let x_3843 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3842.x, x_3842.y, x_3842.z, x_3843.w);
    let x_3845 : vec4<f32> = u_xlat2;
    let x_3847 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(vec3<f32>(x_3845.x, x_3845.y, x_3845.z), vec3<f32>(x_3847.x, x_3847.y, x_3847.z));
    let x_3850 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3850, 0.0f, 1.0f);
    let x_3852 : f32 = u_xlat71;
    let x_3854 : vec4<f32> = u_xlat8;
    let x_3856 : vec3<f32> = (vec3<f32>(x_3852, x_3852, x_3852) * vec3<f32>(x_3854.x, x_3854.y, x_3854.z));
    let x_3857 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3856.x, x_3856.y, x_3856.z, x_3857.w);
    let x_3859 : vec4<f32> = u_xlat1;
    let x_3861 : vec4<f32> = u_xlat7;
    let x_3863 : vec3<f32> = (vec3<f32>(x_3859.y, x_3859.z, x_3859.w) * vec3<f32>(x_3861.x, x_3861.y, x_3861.z));
    let x_3864 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3863.x, x_3863.y, x_3863.z, x_3864.w);
    let x_3866 : vec4<f32> = u_xlat7;
    let x_3868 : vec4<f32> = u_xlat0;
    let x_3871 : vec4<f32> = u_xlat6;
    let x_3873 : vec3<f32> = ((vec3<f32>(x_3866.x, x_3866.y, x_3866.z) * vec3<f32>(x_3868.x, x_3868.x, x_3868.x)) + vec3<f32>(x_3871.x, x_3871.y, x_3871.z));
    let x_3874 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3873.x, x_3873.y, x_3873.z, x_3874.w);

    continuing {
      let x_3876 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3876 + bitcast<u32>(1i));
    }
  }
  let x_3878 : vec4<f32> = u_xlat4;
  let x_3880 : vec4<f32> = u_xlat1;
  let x_3883 : vec4<f32> = u_xlat3;
  let x_3885 : vec3<f32> = ((vec3<f32>(x_3878.x, x_3878.y, x_3878.z) * vec3<f32>(x_3880.y, x_3880.z, x_3880.w)) + vec3<f32>(x_3883.x, x_3883.y, x_3883.z));
  let x_3886 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3885.x, x_3885.y, x_3885.z, x_3886.w);
  let x_3890 : vec4<f32> = u_xlat6;
  let x_3892 : vec4<f32> = u_xlat1;
  let x_3894 : vec3<f32> = (vec3<f32>(x_3890.x, x_3890.y, x_3890.z) + vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
  let x_3895 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
  let x_3898 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3898 == 1.0f);
  let x_3900 : bool = u_xlatb23;
  let x_3901 : bool = u_xlatb46;
  u_xlatb23 = (x_3900 | x_3901);
  let x_3903 : bool = u_xlatb23;
  if (x_3903) {
    let x_3908 : f32 = u_xlat0.x;
    x_3904 = x_3908;
  } else {
    x_3904 = 1.0f;
  }
  let x_3910 : f32 = x_3904;
  SV_Target0.w = x_3910;
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


