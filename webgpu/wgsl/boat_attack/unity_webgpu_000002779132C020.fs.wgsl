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
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

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

@group(1) @binding(2) var<uniform> x_394 : UnityPerDraw;

var<private> u_xlatb69 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

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

var<private> u_xlat72 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(5) var<uniform> x_1778 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_2021 : AdditionalLights;

var<private> u_xlat73 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb74 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat75 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatb51 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb75 : bool;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlati76 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatb72 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
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
  var x_1861 : f32;
  var x_1872 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2169 : f32;
  var x_2179 : f32;
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
  var x_3448 : f32;
  var x_3770 : f32;
  var x_3783 : f32;
  var x_3831 : f32;
  var x_3842 : vec3<f32>;
  var x_3955 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat23 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat69;
  let x_91 : f32 = u_xlat46;
  u_xlat46 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat46;
  u_xlat46 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat23;
  let x_98 : f32 = u_xlat46;
  u_xlat23 = (x_97 / x_98);
  let x_100 : f32 = u_xlat23;
  u_xlat23 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat23;
  u_xlat23 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb46;
  if (x_110) {
    let x_114 : f32 = u_xlat23;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat23 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat23;
  u_xlatb23 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb23;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat23;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_151 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
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
  let x_353 : f32 = vs_TEXCOORD1.y;
  let x_356 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat23 = (x_353 * x_356);
  let x_359 : f32 = x_28.unity_MatrixV[0i].z;
  let x_361 : f32 = vs_TEXCOORD1.x;
  let x_363 : f32 = u_xlat23;
  u_xlat23 = ((x_359 * x_361) + x_363);
  let x_366 : f32 = x_28.unity_MatrixV[2i].z;
  let x_368 : f32 = vs_TEXCOORD1.z;
  let x_370 : f32 = u_xlat23;
  u_xlat23 = ((x_366 * x_368) + x_370);
  let x_372 : f32 = u_xlat23;
  let x_374 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat23 = (x_372 + x_374);
  let x_376 : f32 = u_xlat23;
  let x_380 : f32 = x_28.x_ProjectionParams.y;
  u_xlat23 = (-(x_376) + -(x_380));
  let x_383 : f32 = u_xlat23;
  u_xlat23 = max(x_383, 0.0f);
  let x_385 : f32 = u_xlat23;
  let x_388 : f32 = x_28.unity_FogParams.x;
  u_xlat23 = (x_385 * x_388);
  u_xlat2.w = 1.0f;
  let x_397 : vec4<f32> = x_394.unity_SHAr;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_397, x_398);
  let x_403 : vec4<f32> = x_394.unity_SHAg;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_403, x_404);
  let x_409 : vec4<f32> = x_394.unity_SHAb;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_409, x_410);
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_413.y, x_413.z, x_413.z, x_413.x) * vec4<f32>(x_415.x, x_415.y, x_415.z, x_415.z));
  let x_420 : vec4<f32> = x_394.unity_SHBr;
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_394.unity_SHBg;
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_426, x_427);
  let x_432 : vec4<f32> = x_394.unity_SHBb;
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_432, x_433);
  let x_437 : f32 = u_xlat2.y;
  let x_439 : f32 = u_xlat2.y;
  u_xlat69 = (x_437 * x_439);
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat2.x;
  let x_446 : f32 = u_xlat69;
  u_xlat69 = ((x_442 * x_444) + -(x_446));
  let x_451 : vec4<f32> = x_394.unity_SHC;
  let x_453 : f32 = u_xlat69;
  let x_456 : vec4<f32> = u_xlat6;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_453, x_453, x_453)) + vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat4;
  let x_463 : vec4<f32> = u_xlat5;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec3<f32> = max(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_471 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_476 : f32 = x_159.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_476);
  let x_478 : bool = u_xlatb69;
  if (x_478) {
    let x_482 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb69 = (x_482 == 1.0f);
    let x_484 : bool = u_xlatb69;
    if (x_484) {
      let x_487 : vec4<f32> = u_xlat3;
      let x_490 : vec4<f32> = x_159.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_487.x, x_487.y, x_487.x, x_487.y) + x_490);
      let x_494 : vec4<f32> = u_xlat5;
      let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
      let x_497 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_495.x, x_495.y, x_497);
      let x_509 : vec3<f32> = txVec0;
      let x_511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_509.xy, x_509.z);
      u_xlat6.x = x_511;
      let x_514 : vec4<f32> = u_xlat5;
      let x_515 : vec2<f32> = vec2<f32>(x_514.z, x_514.w);
      let x_517 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_524 : vec3<f32> = txVec1;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_524.xy, x_524.z);
      u_xlat6.y = x_526;
      let x_528 : vec4<f32> = u_xlat3;
      let x_531 : vec4<f32> = x_159.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_528.x, x_528.y, x_528.x, x_528.y) + x_531);
      let x_534 : vec4<f32> = u_xlat5;
      let x_535 : vec2<f32> = vec2<f32>(x_534.x, x_534.y);
      let x_537 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_535.x, x_535.y, x_537);
      let x_544 : vec3<f32> = txVec2;
      let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_544.xy, x_544.z);
      u_xlat6.z = x_546;
      let x_549 : vec4<f32> = u_xlat5;
      let x_550 : vec2<f32> = vec2<f32>(x_549.z, x_549.w);
      let x_552 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_550.x, x_550.y, x_552);
      let x_559 : vec3<f32> = txVec3;
      let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_559.xy, x_559.z);
      u_xlat6.w = x_561;
      let x_563 : vec4<f32> = u_xlat6;
      u_xlat69 = dot(x_563, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_570 : f32 = x_159.x_MainLightShadowParams.y;
      u_xlatb1 = (x_570 == 2.0f);
      let x_572 : bool = u_xlatb1;
      if (x_572) {
        let x_575 : vec4<f32> = u_xlat3;
        let x_578 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_582 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_578.z, x_578.w)) + vec2<f32>(0.5f, 0.5f));
        let x_583 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat5;
        let x_587 : vec2<f32> = floor(vec2<f32>(x_585.x, x_585.y));
        let x_588 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_592 : vec4<f32> = u_xlat3;
        let x_595 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_598 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.z, x_595.w)) + -(vec2<f32>(x_598.x, x_598.y)));
        let x_602 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_602.x, x_602.x, x_602.y, x_602.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_607 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_607.x, x_607.x, x_607.z, x_607.z) * vec4<f32>(x_609.x, x_609.x, x_609.z, x_609.z));
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (vec2<f32>(x_612.y, x_612.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_617.y, x_616.y, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_622 : vec2<f32> = u_xlat51;
        let x_624 : vec2<f32> = ((vec2<f32>(x_619.x, x_619.z) * vec2<f32>(0.5f, 0.5f)) + -(x_622));
        let x_625 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_628 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_628) + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec2<f32> = u_xlat51;
        let x_635 : vec2<f32> = min(x_633, vec2<f32>(0.0f, 0.0f));
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec4<f32> = u_xlat8;
        let x_641 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = u_xlat53;
        let x_645 : vec2<f32> = ((-(vec2<f32>(x_638.x, x_638.y)) * vec2<f32>(x_641.x, x_641.y)) + x_644);
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_648 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_648, vec2<f32>(0.0f, 0.0f));
        let x_650 : vec2<f32> = u_xlat51;
        let x_652 : vec2<f32> = u_xlat51;
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_650) * x_652) + vec2<f32>(x_654.y, x_654.w));
        let x_657 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = (vec2<f32>(x_657.x, x_657.y) + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_662 + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat53;
        let x_673 : vec2<f32> = (x_672 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat8;
        let x_678 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_682 : vec2<f32> = u_xlat51;
        let x_683 : vec2<f32> = (x_682 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_686.y, x_686.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : f32 = u_xlat8.x;
        u_xlat9.z = x_690;
        let x_693 : f32 = u_xlat51.x;
        u_xlat9.w = x_693;
        let x_696 : f32 = u_xlat10.x;
        u_xlat7.z = x_696;
        let x_699 : f32 = u_xlat6.x;
        u_xlat7.w = x_699;
        let x_702 : vec4<f32> = u_xlat7;
        let x_704 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_702.z, x_702.w, x_702.x, x_702.z) + vec4<f32>(x_704.z, x_704.w, x_704.x, x_704.z));
        let x_708 : f32 = u_xlat9.y;
        u_xlat8.z = x_708;
        let x_711 : f32 = u_xlat51.y;
        u_xlat8.w = x_711;
        let x_714 : f32 = u_xlat7.y;
        u_xlat10.z = x_714;
        let x_717 : f32 = u_xlat6.z;
        u_xlat10.w = x_717;
        let x_719 : vec4<f32> = u_xlat8;
        let x_721 : vec4<f32> = u_xlat10;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.z, x_719.y, x_719.w) + vec3<f32>(x_721.z, x_721.y, x_721.w));
        let x_724 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat7;
        let x_728 : vec4<f32> = u_xlat11;
        let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.z, x_726.w) / vec3<f32>(x_728.z, x_728.w, x_728.y));
        let x_731 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat7;
        let x_739 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_740 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat10;
        let x_744 : vec4<f32> = u_xlat6;
        let x_746 : vec3<f32> = (vec3<f32>(x_742.z, x_742.y, x_742.w) / vec3<f32>(x_744.x, x_744.y, x_744.z));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_751 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat7;
        let x_757 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_759 : vec3<f32> = (vec3<f32>(x_754.y, x_754.x, x_754.z) * vec3<f32>(x_757.x, x_757.x, x_757.x));
        let x_760 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat8;
        let x_765 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_767 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_765.y, x_765.y, x_765.y));
        let x_768 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
        let x_771 : f32 = u_xlat8.x;
        u_xlat7.w = x_771;
        let x_773 : vec4<f32> = u_xlat5;
        let x_776 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.y, x_779.w, x_779.x, x_779.w));
        let x_782 : vec4<f32> = u_xlat5;
        let x_785 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(x_788.z, x_788.w));
        let x_792 : f32 = u_xlat7.y;
        u_xlat8.w = x_792;
        let x_794 : vec4<f32> = u_xlat8;
        let x_795 : vec2<f32> = vec2<f32>(x_794.y, x_794.z);
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_796.x, x_795.x, x_796.z, x_795.y);
        let x_798 : vec4<f32> = u_xlat5;
        let x_801 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y) * vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y)) + vec4<f32>(x_804.x, x_804.y, x_804.z, x_804.y));
        let x_807 : vec4<f32> = u_xlat5;
        let x_810 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y) * vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y)) + vec4<f32>(x_813.w, x_813.y, x_813.w, x_813.z));
        let x_816 : vec4<f32> = u_xlat5;
        let x_819 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_822 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) * vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y)) + vec4<f32>(x_822.x, x_822.w, x_822.z, x_822.w));
        let x_826 : vec4<f32> = u_xlat6;
        let x_828 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_826.x, x_826.x, x_826.x, x_826.y) * vec4<f32>(x_828.z, x_828.w, x_828.y, x_828.z));
        let x_832 : vec4<f32> = u_xlat6;
        let x_834 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_832.y, x_832.y, x_832.z, x_832.z) * x_834);
        let x_837 : f32 = u_xlat6.z;
        let x_839 : f32 = u_xlat11.y;
        u_xlat1.x = (x_837 * x_839);
        let x_843 : vec4<f32> = u_xlat9;
        let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
        let x_846 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_854 : vec3<f32> = txVec4;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_854.xy, x_854.z);
        u_xlat71 = x_856;
        let x_858 : vec4<f32> = u_xlat9;
        let x_859 : vec2<f32> = vec2<f32>(x_858.z, x_858.w);
        let x_861 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_869 : vec3<f32> = txVec5;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat72 = x_871;
        let x_872 : f32 = u_xlat72;
        let x_874 : f32 = u_xlat12.y;
        u_xlat72 = (x_872 * x_874);
        let x_877 : f32 = u_xlat12.x;
        let x_878 : f32 = u_xlat71;
        let x_880 : f32 = u_xlat72;
        u_xlat71 = ((x_877 * x_878) + x_880);
        let x_883 : vec2<f32> = u_xlat51;
        let x_885 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec6;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat72 = x_894;
        let x_896 : f32 = u_xlat12.z;
        let x_897 : f32 = u_xlat72;
        let x_899 : f32 = u_xlat71;
        u_xlat71 = ((x_896 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat72 = x_914;
        let x_916 : f32 = u_xlat12.w;
        let x_917 : f32 = u_xlat72;
        let x_919 : f32 = u_xlat71;
        u_xlat71 = ((x_916 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat10;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec8;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat72 = x_934;
        let x_936 : f32 = u_xlat13.x;
        let x_937 : f32 = u_xlat72;
        let x_939 : f32 = u_xlat71;
        u_xlat71 = ((x_936 * x_937) + x_939);
        let x_942 : vec4<f32> = u_xlat10;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec9;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat72 = x_954;
        let x_956 : f32 = u_xlat13.y;
        let x_957 : f32 = u_xlat72;
        let x_959 : f32 = u_xlat71;
        u_xlat71 = ((x_956 * x_957) + x_959);
        let x_962 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = vec2<f32>(x_962.z, x_962.w);
        let x_965 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_963.x, x_963.y, x_965);
        let x_972 : vec3<f32> = txVec10;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
        u_xlat72 = x_974;
        let x_976 : f32 = u_xlat13.z;
        let x_977 : f32 = u_xlat72;
        let x_979 : f32 = u_xlat71;
        u_xlat71 = ((x_976 * x_977) + x_979);
        let x_982 : vec4<f32> = u_xlat7;
        let x_983 : vec2<f32> = vec2<f32>(x_982.x, x_982.y);
        let x_985 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec11;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_992.xy, x_992.z);
        u_xlat72 = x_994;
        let x_996 : f32 = u_xlat13.w;
        let x_997 : f32 = u_xlat72;
        let x_999 : f32 = u_xlat71;
        u_xlat71 = ((x_996 * x_997) + x_999);
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1012 : vec3<f32> = txVec12;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
        u_xlat72 = x_1014;
        let x_1016 : f32 = u_xlat1.x;
        let x_1017 : f32 = u_xlat72;
        let x_1019 : f32 = u_xlat71;
        u_xlat69 = ((x_1016 * x_1017) + x_1019);
      } else {
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat5;
        let x_1033 : vec2<f32> = floor(vec2<f32>(x_1031.x, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat3;
        let x_1039 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.z, x_1039.w)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.y, x_1046.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.z, x_1049.z) * vec4<f32>(x_1051.x, x_1051.x, x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1054.y, x_1054.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1058.x, x_1059.z, x_1058.y);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = u_xlat51;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1064));
        let x_1067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec2<f32> = u_xlat51;
        let x_1071 : vec2<f32> = (-(x_1069) + vec2<f32>(1.0f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat53;
        let x_1078 : vec2<f32> = u_xlat53;
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1082 : vec2<f32> = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1089 : vec2<f32> = u_xlat53;
        let x_1091 : vec2<f32> = u_xlat53;
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1095 : vec2<f32> = ((-(x_1089) * x_1091) + vec2<f32>(x_1093.y, x_1093.w));
        let x_1096 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1095.x, x_1096.y, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) + vec2<f32>(2.0f, 2.0f));
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec3<f32> = u_xlat29;
        let x_1106 : vec2<f32> = (vec2<f32>(x_1104.x, x_1104.z) + vec2<f32>(2.0f, 2.0f));
        let x_1107 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1107.x, x_1106.x, x_1107.z, x_1106.y);
        let x_1110 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1110 * 0.08163200318813323975f);
        let x_1114 : vec4<f32> = u_xlat6;
        let x_1117 : vec3<f32> = (vec3<f32>(x_1114.z, x_1114.x, x_1114.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = (vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1127 : f32 = u_xlat10.y;
        u_xlat9.x = x_1127;
        let x_1129 : vec2<f32> = u_xlat51;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec2<f32> = u_xlat51;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1143.x, x_1144.y, x_1143.y, x_1144.w);
        let x_1147 : f32 = u_xlat6.x;
        u_xlat7.y = x_1147;
        let x_1150 : f32 = u_xlat8.y;
        u_xlat7.w = x_1150;
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1152 + x_1153);
        let x_1155 : vec2<f32> = u_xlat51;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1155.y, x_1155.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1159.x, x_1158.x, x_1159.z, x_1158.y);
        let x_1161 : vec2<f32> = u_xlat51;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1161.y, x_1161.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1164.x, x_1165.y, x_1164.y, x_1165.w);
        let x_1168 : f32 = u_xlat6.y;
        u_xlat8.y = x_1168;
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1170 + x_1171);
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1173 / x_1174);
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1176 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1183 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1182 / x_1183);
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1185 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1190 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1187.w, x_1187.x, x_1187.y, x_1187.z) * vec4<f32>(x_1190.x, x_1190.x, x_1190.x, x_1190.x));
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1196 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1193.x, x_1193.w, x_1193.y, x_1193.z) * vec4<f32>(x_1196.y, x_1196.y, x_1196.y, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1200 : vec3<f32> = vec3<f32>(x_1199.y, x_1199.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1200.x, x_1201.y, x_1200.y, x_1200.z);
        let x_1204 : f32 = u_xlat8.x;
        u_xlat10.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat5;
        let x_1209 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1225 : f32 = u_xlat10.y;
        u_xlat7.y = x_1225;
        let x_1228 : f32 = u_xlat8.z;
        u_xlat10.y = x_1228;
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat10;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.x, x_1242.y)) + vec2<f32>(x_1245.w, x_1245.y));
        let x_1248 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1251 : f32 = u_xlat10.y;
        u_xlat7.z = x_1251;
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.z));
        let x_1264 : f32 = u_xlat8.w;
        u_xlat10.y = x_1264;
        let x_1267 : vec4<f32> = u_xlat5;
        let x_1270 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1277 : vec4<f32> = u_xlat5;
        let x_1280 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1287 : f32 = u_xlat10.y;
        u_xlat7.w = x_1287;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.x, x_1296.w));
        let x_1299 : vec4<f32> = u_xlat10;
        let x_1300 : vec3<f32> = vec3<f32>(x_1299.x, x_1299.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1300.x, x_1301.y, x_1300.y, x_1300.z);
        let x_1303 : vec4<f32> = u_xlat5;
        let x_1306 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y) * vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y)) + vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1309.y));
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1323 : f32 = u_xlat7.x;
        u_xlat8.x = x_1323;
        let x_1325 : vec4<f32> = u_xlat5;
        let x_1328 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1333 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.x, x_1331.y));
        let x_1334 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1337 : vec4<f32> = u_xlat6;
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1337.x, x_1337.x, x_1337.x, x_1337.x) * x_1339);
        let x_1342 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1342.y, x_1342.y, x_1342.y, x_1342.y) * x_1344);
        let x_1347 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1347.z, x_1347.z, x_1347.z, x_1347.z) * x_1349);
        let x_1351 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1351.w, x_1351.w, x_1351.w, x_1351.w) * x_1353);
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec13;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat1.x = x_1368;
        let x_1371 : vec4<f32> = u_xlat11;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec14;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat71 = x_1383;
        let x_1384 : f32 = u_xlat71;
        let x_1386 : f32 = u_xlat16.y;
        u_xlat71 = (x_1384 * x_1386);
        let x_1389 : f32 = u_xlat16.x;
        let x_1391 : f32 = u_xlat1.x;
        let x_1393 : f32 = u_xlat71;
        u_xlat1.x = ((x_1389 * x_1391) + x_1393);
        let x_1397 : vec2<f32> = u_xlat51;
        let x_1399 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec15;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat71 = x_1408;
        let x_1410 : f32 = u_xlat16.z;
        let x_1411 : f32 = u_xlat71;
        let x_1414 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat14;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec16;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat71 = x_1430;
        let x_1432 : f32 = u_xlat16.w;
        let x_1433 : f32 = u_xlat71;
        let x_1436 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat12;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec17;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat71 = x_1452;
        let x_1454 : f32 = u_xlat17.x;
        let x_1455 : f32 = u_xlat71;
        let x_1458 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat12;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec18;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat71 = x_1474;
        let x_1476 : f32 = u_xlat17.y;
        let x_1477 : f32 = u_xlat71;
        let x_1480 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat13;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec19;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat71 = x_1496;
        let x_1498 : f32 = u_xlat17.z;
        let x_1499 : f32 = u_xlat71;
        let x_1502 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec4<f32> = u_xlat14;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec20;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat71 = x_1518;
        let x_1520 : f32 = u_xlat17.w;
        let x_1521 : f32 = u_xlat71;
        let x_1524 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1520 * x_1521) + x_1524);
        let x_1528 : vec4<f32> = u_xlat15;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec21;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat71 = x_1540;
        let x_1542 : f32 = u_xlat18.x;
        let x_1543 : f32 = u_xlat71;
        let x_1546 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat15;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec22;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat71 = x_1562;
        let x_1564 : f32 = u_xlat18.y;
        let x_1565 : f32 = u_xlat71;
        let x_1568 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec2<f32> = u_xlat30;
        let x_1574 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec23;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat71 = x_1583;
        let x_1585 : f32 = u_xlat18.z;
        let x_1586 : f32 = u_xlat71;
        let x_1589 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1585 * x_1586) + x_1589);
        let x_1593 : vec2<f32> = u_xlat59;
        let x_1595 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec24;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
        u_xlat71 = x_1604;
        let x_1606 : f32 = u_xlat18.w;
        let x_1607 : f32 = u_xlat71;
        let x_1610 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec25;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat71 = x_1626;
        let x_1628 : f32 = u_xlat6.x;
        let x_1629 : f32 = u_xlat71;
        let x_1632 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec26;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat71 = x_1648;
        let x_1650 : f32 = u_xlat6.y;
        let x_1651 : f32 = u_xlat71;
        let x_1654 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1650 * x_1651) + x_1654);
        let x_1658 : vec2<f32> = u_xlat54;
        let x_1660 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec27;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat71 = x_1669;
        let x_1671 : f32 = u_xlat6.z;
        let x_1672 : f32 = u_xlat71;
        let x_1675 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec4<f32> = u_xlat5;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
        let x_1682 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec28;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
        u_xlat71 = x_1691;
        let x_1693 : f32 = u_xlat6.w;
        let x_1694 : f32 = u_xlat71;
        let x_1697 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1693 * x_1694) + x_1697);
      }
    }
  } else {
    let x_1701 : vec4<f32> = u_xlat3;
    let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
    let x_1704 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
    let x_1711 : vec3<f32> = txVec29;
    let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1711.xy, x_1711.z);
    u_xlat69 = x_1713;
  }
  let x_1715 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1715) + 1.0f);
  let x_1719 : f32 = u_xlat69;
  let x_1721 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1724 : f32 = u_xlat1.x;
  u_xlat69 = ((x_1719 * x_1721) + x_1724);
  let x_1727 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_1727);
  let x_1731 : f32 = u_xlat3.z;
  u_xlatb71 = (x_1731 >= 1.0f);
  let x_1733 : bool = u_xlatb1;
  let x_1734 : bool = u_xlatb71;
  u_xlatb1 = (x_1733 | x_1734);
  let x_1736 : bool = u_xlatb1;
  let x_1737 : f32 = u_xlat69;
  u_xlat69 = select(x_1737, 1.0f, x_1736);
  let x_1739 : vec3<f32> = vs_TEXCOORD1;
  let x_1742 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1744 : vec3<f32> = (x_1739 + -(x_1742));
  let x_1745 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : vec4<f32> = u_xlat3;
  let x_1749 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_1747.x, x_1747.y, x_1747.z), vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1754 : f32 = u_xlat1.x;
  let x_1756 : f32 = x_159.x_MainLightShadowParams.z;
  let x_1759 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1754 * x_1756) + x_1759);
  let x_1761 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1761, 0.0f, 1.0f);
  let x_1763 : f32 = u_xlat69;
  u_xlat3.x = (-(x_1763) + 1.0f);
  let x_1767 : f32 = u_xlat71;
  let x_1769 : f32 = u_xlat3.x;
  let x_1771 : f32 = u_xlat69;
  u_xlat69 = ((x_1767 * x_1769) + x_1771);
  let x_1780 : f32 = x_1778.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1780 == -1.0f));
  let x_1782 : bool = u_xlatb71;
  if (x_1782) {
    let x_1785 : vec3<f32> = vs_TEXCOORD1;
    let x_1788 : vec4<f32> = x_1778.x_MainLightWorldToLight[1i];
    let x_1790 : vec2<f32> = (vec2<f32>(x_1785.y, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y));
    let x_1791 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1790.x, x_1790.y, x_1791.z, x_1791.w);
    let x_1794 : vec4<f32> = x_1778.x_MainLightWorldToLight[0i];
    let x_1796 : vec3<f32> = vs_TEXCOORD1;
    let x_1799 : vec4<f32> = u_xlat3;
    let x_1801 : vec2<f32> = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1796.x, x_1796.x)) + vec2<f32>(x_1799.x, x_1799.y));
    let x_1802 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1801.x, x_1801.y, x_1802.z, x_1802.w);
    let x_1805 : vec4<f32> = x_1778.x_MainLightWorldToLight[2i];
    let x_1807 : vec3<f32> = vs_TEXCOORD1;
    let x_1810 : vec4<f32> = u_xlat3;
    let x_1812 : vec2<f32> = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1807.z, x_1807.z)) + vec2<f32>(x_1810.x, x_1810.y));
    let x_1813 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
    let x_1815 : vec4<f32> = u_xlat3;
    let x_1818 : vec4<f32> = x_1778.x_MainLightWorldToLight[3i];
    let x_1820 : vec2<f32> = (vec2<f32>(x_1815.x, x_1815.y) + vec2<f32>(x_1818.x, x_1818.y));
    let x_1821 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1820.x, x_1820.y, x_1821.z, x_1821.w);
    let x_1823 : vec4<f32> = u_xlat3;
    let x_1826 : vec2<f32> = ((vec2<f32>(x_1823.x, x_1823.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1827 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1826.x, x_1826.y, x_1827.z, x_1827.w);
    let x_1834 : vec4<f32> = u_xlat3;
    let x_1837 : f32 = x_28.x_GlobalMipBias.x;
    let x_1838 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1834.x, x_1834.y), x_1837);
    u_xlat3 = x_1838;
    let x_1843 : f32 = x_1778.x_MainLightCookieTextureFormat;
    let x_1845 : f32 = x_1778.x_MainLightCookieTextureFormat;
    let x_1847 : f32 = x_1778.x_MainLightCookieTextureFormat;
    let x_1849 : f32 = x_1778.x_MainLightCookieTextureFormat;
    let x_1850 : vec4<f32> = vec4<f32>(x_1843, x_1845, x_1847, x_1849);
    let x_1857 : vec4<bool> = (vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1850.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1857.x, x_1857.y);
    let x_1860 : bool = u_xlatb5.y;
    if (x_1860) {
      let x_1865 : f32 = u_xlat3.w;
      x_1861 = x_1865;
    } else {
      let x_1868 : f32 = u_xlat3.x;
      x_1861 = x_1868;
    }
    let x_1869 : f32 = x_1861;
    u_xlat71 = x_1869;
    let x_1871 : bool = u_xlatb5.x;
    if (x_1871) {
      let x_1875 : vec4<f32> = u_xlat3;
      x_1872 = vec3<f32>(x_1875.x, x_1875.y, x_1875.z);
    } else {
      let x_1878 : f32 = u_xlat71;
      x_1872 = vec3<f32>(x_1878, x_1878, x_1878);
    }
    let x_1880 : vec3<f32> = x_1872;
    let x_1881 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1887 : vec4<f32> = u_xlat3;
  let x_1890 : vec4<f32> = x_28.x_MainLightColor;
  let x_1892 : vec3<f32> = (vec3<f32>(x_1887.x, x_1887.y, x_1887.z) * vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1895 : f32 = u_xlat69;
  let x_1897 : f32 = x_394.unity_LightData.z;
  u_xlat69 = (x_1895 * x_1897);
  let x_1899 : f32 = u_xlat69;
  let x_1901 : vec4<f32> = u_xlat3;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec4<f32> = u_xlat2;
  let x_1909 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1912, 0.0f, 1.0f);
  let x_1914 : f32 = u_xlat69;
  let x_1916 : vec4<f32> = u_xlat3;
  let x_1918 : vec3<f32> = (vec3<f32>(x_1914, x_1914, x_1914) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1921 : vec4<f32> = u_xlat1;
  let x_1923 : vec4<f32> = u_xlat3;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1921.y, x_1921.z, x_1921.w) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
  let x_1929 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1931 : f32 = x_394.unity_LightData.y;
  u_xlat69 = min(x_1929, x_1931);
  let x_1934 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1934));
  let x_1938 : f32 = u_xlat1.x;
  let x_1941 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1944 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1938 * x_1941) + x_1944);
  let x_1948 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1948, 0.0f, 1.0f);
  let x_1952 : f32 = x_1778.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1954 : f32 = x_1778.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1956 : f32 = x_1778.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1958 : f32 = x_1778.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1959 : vec4<f32> = vec4<f32>(x_1952, x_1954, x_1956, x_1958);
  let x_1965 : vec4<bool> = (vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1959.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1965.x, x_1965.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1977 : u32 = u_xlatu_loop_1;
    let x_1978 : u32 = u_xlatu69;
    if ((x_1977 < x_1978)) {
    } else {
      break;
    }
    let x_1981 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1981 >> 2u);
    let x_1984 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1984 & 3u));
    let x_1987 : u32 = u_xlatu72;
    let x_1990 : vec4<f32> = x_394.unity_LightIndices[bitcast<i32>(x_1987)];
    let x_2000 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2005 : vec4<u32> = indexable[x_2000];
    u_xlat72 = dot(x_1990, bitcast<vec4<f32>>(x_2005));
    let x_2009 : f32 = u_xlat72;
    u_xlati72 = i32(x_2009);
    let x_2011 : vec3<f32> = vs_TEXCOORD1;
    let x_2022 : i32 = u_xlati72;
    let x_2024 : vec4<f32> = x_2021.x_AdditionalLightsPosition[x_2022];
    let x_2027 : i32 = u_xlati72;
    let x_2029 : vec4<f32> = x_2021.x_AdditionalLightsPosition[x_2027];
    let x_2031 : vec3<f32> = ((-(x_2011) * vec3<f32>(x_2024.w, x_2024.w, x_2024.w)) + vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
    let x_2032 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
    let x_2035 : vec4<f32> = u_xlat7;
    let x_2037 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2035.x, x_2035.y, x_2035.z), vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : f32 = u_xlat73;
    u_xlat73 = max(x_2040, 0.00006103515625f);
    let x_2043 : f32 = u_xlat73;
    u_xlat51.x = inverseSqrt(x_2043);
    let x_2046 : vec2<f32> = u_xlat51;
    let x_2048 : vec4<f32> = u_xlat7;
    let x_2050 : vec3<f32> = (vec3<f32>(x_2046.x, x_2046.x, x_2046.x) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
    let x_2053 : f32 = u_xlat73;
    u_xlat51.x = (1.0f / x_2053);
    let x_2056 : f32 = u_xlat73;
    let x_2057 : i32 = u_xlati72;
    let x_2059 : f32 = x_2021.x_AdditionalLightsAttenuation[x_2057].x;
    u_xlat73 = (x_2056 * x_2059);
    let x_2061 : f32 = u_xlat73;
    let x_2063 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2061) * x_2063) + 1.0f);
    let x_2066 : f32 = u_xlat73;
    u_xlat73 = max(x_2066, 0.0f);
    let x_2068 : f32 = u_xlat73;
    let x_2069 : f32 = u_xlat73;
    u_xlat73 = (x_2068 * x_2069);
    let x_2071 : f32 = u_xlat73;
    let x_2073 : f32 = u_xlat51.x;
    u_xlat73 = (x_2071 * x_2073);
    let x_2075 : i32 = u_xlati72;
    let x_2077 : vec4<f32> = x_2021.x_AdditionalLightsSpotDir[x_2075];
    let x_2079 : vec4<f32> = u_xlat7;
    u_xlat51.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2084 : f32 = u_xlat51.x;
    let x_2085 : i32 = u_xlati72;
    let x_2087 : f32 = x_2021.x_AdditionalLightsAttenuation[x_2085].z;
    let x_2089 : i32 = u_xlati72;
    let x_2091 : f32 = x_2021.x_AdditionalLightsAttenuation[x_2089].w;
    u_xlat51.x = ((x_2084 * x_2087) + x_2091);
    let x_2095 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2095, 0.0f, 1.0f);
    let x_2099 : f32 = u_xlat51.x;
    let x_2101 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2099 * x_2101);
    let x_2104 : f32 = u_xlat73;
    let x_2106 : f32 = u_xlat51.x;
    u_xlat73 = (x_2104 * x_2106);
    let x_2110 : i32 = u_xlati72;
    let x_2112 : f32 = x_159.x_AdditionalShadowParams[x_2110].w;
    u_xlati51 = i32(x_2112);
    let x_2115 : i32 = u_xlati51;
    u_xlatb74 = (x_2115 >= 0i);
    let x_2117 : bool = u_xlatb74;
    if (x_2117) {
      let x_2121 : i32 = u_xlati72;
      let x_2123 : f32 = x_159.x_AdditionalShadowParams[x_2121].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2123, x_2123, x_2123, x_2123))));
      let x_2127 : bool = u_xlatb74;
      if (x_2127) {
        let x_2131 : vec4<f32> = u_xlat7;
        let x_2134 : vec4<f32> = u_xlat7;
        let x_2137 : vec4<bool> = (abs(vec4<f32>(x_2131.z, x_2131.z, x_2131.y, x_2131.z)) >= abs(vec4<f32>(x_2134.x, x_2134.y, x_2134.x, x_2134.x)));
        let x_2139 : vec3<bool> = vec3<bool>(x_2137.x, x_2137.y, x_2137.z);
        let x_2140 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
        let x_2143 : bool = u_xlatb8.y;
        let x_2145 : bool = u_xlatb8.x;
        u_xlatb74 = (x_2143 & x_2145);
        let x_2147 : vec4<f32> = u_xlat7;
        let x_2150 : vec4<bool> = (-(vec4<f32>(x_2147.z, x_2147.y, x_2147.z, x_2147.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2151 : vec3<bool> = vec3<bool>(x_2150.x, x_2150.y, x_2150.w);
        let x_2152 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2151.x, x_2151.y, x_2152.z, x_2151.z);
        let x_2155 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2155);
        let x_2160 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2160);
        let x_2165 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_2165);
        let x_2168 : bool = u_xlatb8.z;
        if (x_2168) {
          let x_2173 : f32 = u_xlat8.y;
          x_2169 = x_2173;
        } else {
          let x_2175 : f32 = u_xlat75;
          x_2169 = x_2175;
        }
        let x_2176 : f32 = x_2169;
        u_xlat75 = x_2176;
        let x_2178 : bool = u_xlatb74;
        if (x_2178) {
          let x_2183 : f32 = u_xlat8.x;
          x_2179 = x_2183;
        } else {
          let x_2185 : f32 = u_xlat75;
          x_2179 = x_2185;
        }
        let x_2186 : f32 = x_2179;
        u_xlat74 = x_2186;
        let x_2187 : i32 = u_xlati72;
        let x_2189 : f32 = x_159.x_AdditionalShadowParams[x_2187].w;
        u_xlat75 = trunc(x_2189);
        let x_2191 : f32 = u_xlat74;
        let x_2192 : f32 = u_xlat75;
        u_xlat74 = (x_2191 + x_2192);
        let x_2194 : f32 = u_xlat74;
        u_xlati51 = i32(x_2194);
      }
      let x_2196 : i32 = u_xlati51;
      u_xlati51 = (x_2196 << bitcast<u32>(2i));
      let x_2198 : vec3<f32> = vs_TEXCOORD1;
      let x_2201 : i32 = u_xlati51;
      let x_2204 : i32 = u_xlati51;
      let x_2208 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2201 + 1i) / 4i)][((x_2204 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2198.y, x_2198.y, x_2198.y, x_2198.y) * x_2208);
      let x_2210 : i32 = u_xlati51;
      let x_2212 : i32 = u_xlati51;
      let x_2215 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2210 / 4i)][(x_2212 % 4i)];
      let x_2216 : vec3<f32> = vs_TEXCOORD1;
      let x_2219 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2215 * vec4<f32>(x_2216.x, x_2216.x, x_2216.x, x_2216.x)) + x_2219);
      let x_2221 : i32 = u_xlati51;
      let x_2224 : i32 = u_xlati51;
      let x_2228 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2221 + 2i) / 4i)][((x_2224 + 2i) % 4i)];
      let x_2229 : vec3<f32> = vs_TEXCOORD1;
      let x_2232 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2228 * vec4<f32>(x_2229.z, x_2229.z, x_2229.z, x_2229.z)) + x_2232);
      let x_2234 : vec4<f32> = u_xlat8;
      let x_2235 : i32 = u_xlati51;
      let x_2238 : i32 = u_xlati51;
      let x_2242 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2235 + 3i) / 4i)][((x_2238 + 3i) % 4i)];
      u_xlat8 = (x_2234 + x_2242);
      let x_2244 : vec4<f32> = u_xlat8;
      let x_2246 : vec4<f32> = u_xlat8;
      let x_2248 : vec3<f32> = (vec3<f32>(x_2244.x, x_2244.y, x_2244.z) / vec3<f32>(x_2246.w, x_2246.w, x_2246.w));
      let x_2249 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
      let x_2252 : i32 = u_xlati72;
      let x_2254 : f32 = x_159.x_AdditionalShadowParams[x_2252].y;
      u_xlatb51 = (0.0f < x_2254);
      let x_2256 : bool = u_xlatb51;
      if (x_2256) {
        let x_2259 : i32 = u_xlati72;
        let x_2261 : f32 = x_159.x_AdditionalShadowParams[x_2259].y;
        u_xlatb51 = (1.0f == x_2261);
        let x_2263 : bool = u_xlatb51;
        if (x_2263) {
          let x_2266 : vec4<f32> = u_xlat8;
          let x_2270 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2266.x, x_2266.y, x_2266.x, x_2266.y) + x_2270);
          let x_2273 : vec4<f32> = u_xlat9;
          let x_2274 : vec2<f32> = vec2<f32>(x_2273.x, x_2273.y);
          let x_2276 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
          let x_2284 : vec3<f32> = txVec30;
          let x_2286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2284.xy, x_2284.z);
          u_xlat10.x = x_2286;
          let x_2289 : vec4<f32> = u_xlat9;
          let x_2290 : vec2<f32> = vec2<f32>(x_2289.z, x_2289.w);
          let x_2292 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2290.x, x_2290.y, x_2292);
          let x_2299 : vec3<f32> = txVec31;
          let x_2301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2299.xy, x_2299.z);
          u_xlat10.y = x_2301;
          let x_2303 : vec4<f32> = u_xlat8;
          let x_2307 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.y) + x_2307);
          let x_2310 : vec4<f32> = u_xlat9;
          let x_2311 : vec2<f32> = vec2<f32>(x_2310.x, x_2310.y);
          let x_2313 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2311.x, x_2311.y, x_2313);
          let x_2320 : vec3<f32> = txVec32;
          let x_2322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2320.xy, x_2320.z);
          u_xlat10.z = x_2322;
          let x_2325 : vec4<f32> = u_xlat9;
          let x_2326 : vec2<f32> = vec2<f32>(x_2325.z, x_2325.w);
          let x_2328 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2326.x, x_2326.y, x_2328);
          let x_2335 : vec3<f32> = txVec33;
          let x_2337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2335.xy, x_2335.z);
          u_xlat10.w = x_2337;
          let x_2339 : vec4<f32> = u_xlat10;
          u_xlat51.x = dot(x_2339, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2343 : i32 = u_xlati72;
          let x_2345 : f32 = x_159.x_AdditionalShadowParams[x_2343].y;
          u_xlatb74 = (2.0f == x_2345);
          let x_2347 : bool = u_xlatb74;
          if (x_2347) {
            let x_2350 : vec4<f32> = u_xlat8;
            let x_2354 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2357 : vec2<f32> = ((vec2<f32>(x_2350.x, x_2350.y) * vec2<f32>(x_2354.z, x_2354.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2358 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2357.x, x_2357.y, x_2358.z, x_2358.w);
            let x_2360 : vec4<f32> = u_xlat9;
            let x_2362 : vec2<f32> = floor(vec2<f32>(x_2360.x, x_2360.y));
            let x_2363 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2362.x, x_2362.y, x_2363.z, x_2363.w);
            let x_2366 : vec4<f32> = u_xlat8;
            let x_2369 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2372 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2366.x, x_2366.y) * vec2<f32>(x_2369.z, x_2369.w)) + -(vec2<f32>(x_2372.x, x_2372.y)));
            let x_2376 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2376.x, x_2376.x, x_2376.y, x_2376.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2379 : vec4<f32> = u_xlat10;
            let x_2381 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2379.x, x_2379.x, x_2379.z, x_2379.z) * vec4<f32>(x_2381.x, x_2381.x, x_2381.z, x_2381.z));
            let x_2384 : vec4<f32> = u_xlat11;
            let x_2386 : vec2<f32> = (vec2<f32>(x_2384.y, x_2384.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2387 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2386.x, x_2387.y, x_2386.y, x_2387.w);
            let x_2389 : vec4<f32> = u_xlat11;
            let x_2392 : vec2<f32> = u_xlat55;
            let x_2394 : vec2<f32> = ((vec2<f32>(x_2389.x, x_2389.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2392));
            let x_2395 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
            let x_2398 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2398) + vec2<f32>(1.0f, 1.0f));
            let x_2401 : vec2<f32> = u_xlat55;
            let x_2402 : vec2<f32> = min(x_2401, vec2<f32>(0.0f, 0.0f));
            let x_2403 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat12;
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2411 : vec2<f32> = u_xlat57;
            let x_2412 : vec2<f32> = ((-(vec2<f32>(x_2405.x, x_2405.y)) * vec2<f32>(x_2408.x, x_2408.y)) + x_2411);
            let x_2413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2412.x, x_2412.y, x_2413.z, x_2413.w);
            let x_2415 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2415, vec2<f32>(0.0f, 0.0f));
            let x_2417 : vec2<f32> = u_xlat55;
            let x_2419 : vec2<f32> = u_xlat55;
            let x_2421 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2417) * x_2419) + vec2<f32>(x_2421.y, x_2421.w));
            let x_2424 : vec4<f32> = u_xlat12;
            let x_2426 : vec2<f32> = (vec2<f32>(x_2424.x, x_2424.y) + vec2<f32>(1.0f, 1.0f));
            let x_2427 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2426.x, x_2426.y, x_2427.z, x_2427.w);
            let x_2429 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2429 + vec2<f32>(1.0f, 1.0f));
            let x_2431 : vec4<f32> = u_xlat11;
            let x_2433 : vec2<f32> = (vec2<f32>(x_2431.x, x_2431.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2434 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2433.x, x_2433.y, x_2434.z, x_2434.w);
            let x_2436 : vec2<f32> = u_xlat57;
            let x_2437 : vec2<f32> = (x_2436 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2438 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2442 : vec2<f32> = (vec2<f32>(x_2440.x, x_2440.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2443 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2442.x, x_2442.y, x_2443.z, x_2443.w);
            let x_2445 : vec2<f32> = u_xlat55;
            let x_2446 : vec2<f32> = (x_2445 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2447 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2446.x, x_2446.y, x_2447.z, x_2447.w);
            let x_2449 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2449.y, x_2449.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2453 : f32 = u_xlat12.x;
            u_xlat13.z = x_2453;
            let x_2456 : f32 = u_xlat55.x;
            u_xlat13.w = x_2456;
            let x_2459 : f32 = u_xlat14.x;
            u_xlat11.z = x_2459;
            let x_2462 : f32 = u_xlat10.x;
            u_xlat11.w = x_2462;
            let x_2464 : vec4<f32> = u_xlat11;
            let x_2466 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2464.z, x_2464.w, x_2464.x, x_2464.z) + vec4<f32>(x_2466.z, x_2466.w, x_2466.x, x_2466.z));
            let x_2470 : f32 = u_xlat13.y;
            u_xlat12.z = x_2470;
            let x_2473 : f32 = u_xlat55.y;
            u_xlat12.w = x_2473;
            let x_2476 : f32 = u_xlat11.y;
            u_xlat14.z = x_2476;
            let x_2479 : f32 = u_xlat10.z;
            u_xlat14.w = x_2479;
            let x_2481 : vec4<f32> = u_xlat12;
            let x_2483 : vec4<f32> = u_xlat14;
            let x_2485 : vec3<f32> = (vec3<f32>(x_2481.z, x_2481.y, x_2481.w) + vec3<f32>(x_2483.z, x_2483.y, x_2483.w));
            let x_2486 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
            let x_2488 : vec4<f32> = u_xlat11;
            let x_2490 : vec4<f32> = u_xlat15;
            let x_2492 : vec3<f32> = (vec3<f32>(x_2488.x, x_2488.z, x_2488.w) / vec3<f32>(x_2490.z, x_2490.w, x_2490.y));
            let x_2493 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat11;
            let x_2497 : vec3<f32> = (vec3<f32>(x_2495.x, x_2495.y, x_2495.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2498 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat14;
            let x_2502 : vec4<f32> = u_xlat10;
            let x_2504 : vec3<f32> = (vec3<f32>(x_2500.z, x_2500.y, x_2500.w) / vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
            let x_2505 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
            let x_2507 : vec4<f32> = u_xlat12;
            let x_2509 : vec3<f32> = (vec3<f32>(x_2507.x, x_2507.y, x_2507.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2515 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2517 : vec3<f32> = (vec3<f32>(x_2512.y, x_2512.x, x_2512.z) * vec3<f32>(x_2515.x, x_2515.x, x_2515.x));
            let x_2518 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
            let x_2520 : vec4<f32> = u_xlat12;
            let x_2523 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2525 : vec3<f32> = (vec3<f32>(x_2520.x, x_2520.y, x_2520.z) * vec3<f32>(x_2523.y, x_2523.y, x_2523.y));
            let x_2526 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2525.x, x_2525.y, x_2525.z, x_2526.w);
            let x_2529 : f32 = u_xlat12.x;
            u_xlat11.w = x_2529;
            let x_2531 : vec4<f32> = u_xlat9;
            let x_2534 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2537 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2531.x, x_2531.y, x_2531.x, x_2531.y) * vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y)) + vec4<f32>(x_2537.y, x_2537.w, x_2537.x, x_2537.w));
            let x_2540 : vec4<f32> = u_xlat9;
            let x_2543 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2546 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(x_2543.x, x_2543.y)) + vec2<f32>(x_2546.z, x_2546.w));
            let x_2550 : f32 = u_xlat11.y;
            u_xlat12.w = x_2550;
            let x_2552 : vec4<f32> = u_xlat12;
            let x_2553 : vec2<f32> = vec2<f32>(x_2552.y, x_2552.z);
            let x_2554 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2554.x, x_2553.x, x_2554.z, x_2553.y);
            let x_2556 : vec4<f32> = u_xlat9;
            let x_2559 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2556.x, x_2556.y, x_2556.x, x_2556.y) * vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y)) + vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2562.y));
            let x_2565 : vec4<f32> = u_xlat9;
            let x_2568 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2571 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2565.x, x_2565.y, x_2565.x, x_2565.y) * vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y)) + vec4<f32>(x_2571.w, x_2571.y, x_2571.w, x_2571.z));
            let x_2574 : vec4<f32> = u_xlat9;
            let x_2577 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2580 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2574.x, x_2574.y, x_2574.x, x_2574.y) * vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y)) + vec4<f32>(x_2580.x, x_2580.w, x_2580.z, x_2580.w));
            let x_2583 : vec4<f32> = u_xlat10;
            let x_2585 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2583.x, x_2583.x, x_2583.x, x_2583.y) * vec4<f32>(x_2585.z, x_2585.w, x_2585.y, x_2585.z));
            let x_2588 : vec4<f32> = u_xlat10;
            let x_2590 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2588.y, x_2588.y, x_2588.z, x_2588.z) * x_2590);
            let x_2593 : f32 = u_xlat10.z;
            let x_2595 : f32 = u_xlat15.y;
            u_xlat74 = (x_2593 * x_2595);
            let x_2598 : vec4<f32> = u_xlat13;
            let x_2599 : vec2<f32> = vec2<f32>(x_2598.x, x_2598.y);
            let x_2601 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2599.x, x_2599.y, x_2601);
            let x_2608 : vec3<f32> = txVec34;
            let x_2610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2608.xy, x_2608.z);
            u_xlat75 = x_2610;
            let x_2612 : vec4<f32> = u_xlat13;
            let x_2613 : vec2<f32> = vec2<f32>(x_2612.z, x_2612.w);
            let x_2615 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2613.x, x_2613.y, x_2615);
            let x_2623 : vec3<f32> = txVec35;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat76 = x_2625;
            let x_2626 : f32 = u_xlat76;
            let x_2628 : f32 = u_xlat16.y;
            u_xlat76 = (x_2626 * x_2628);
            let x_2631 : f32 = u_xlat16.x;
            let x_2632 : f32 = u_xlat75;
            let x_2634 : f32 = u_xlat76;
            u_xlat75 = ((x_2631 * x_2632) + x_2634);
            let x_2637 : vec2<f32> = u_xlat55;
            let x_2639 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2637.x, x_2637.y, x_2639);
            let x_2646 : vec3<f32> = txVec36;
            let x_2648 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2646.xy, x_2646.z);
            u_xlat76 = x_2648;
            let x_2650 : f32 = u_xlat16.z;
            let x_2651 : f32 = u_xlat76;
            let x_2653 : f32 = u_xlat75;
            u_xlat75 = ((x_2650 * x_2651) + x_2653);
            let x_2656 : vec4<f32> = u_xlat12;
            let x_2657 : vec2<f32> = vec2<f32>(x_2656.x, x_2656.y);
            let x_2659 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2657.x, x_2657.y, x_2659);
            let x_2666 : vec3<f32> = txVec37;
            let x_2668 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2666.xy, x_2666.z);
            u_xlat76 = x_2668;
            let x_2670 : f32 = u_xlat16.w;
            let x_2671 : f32 = u_xlat76;
            let x_2673 : f32 = u_xlat75;
            u_xlat75 = ((x_2670 * x_2671) + x_2673);
            let x_2676 : vec4<f32> = u_xlat14;
            let x_2677 : vec2<f32> = vec2<f32>(x_2676.x, x_2676.y);
            let x_2679 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2677.x, x_2677.y, x_2679);
            let x_2686 : vec3<f32> = txVec38;
            let x_2688 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2686.xy, x_2686.z);
            u_xlat76 = x_2688;
            let x_2690 : f32 = u_xlat17.x;
            let x_2691 : f32 = u_xlat76;
            let x_2693 : f32 = u_xlat75;
            u_xlat75 = ((x_2690 * x_2691) + x_2693);
            let x_2696 : vec4<f32> = u_xlat14;
            let x_2697 : vec2<f32> = vec2<f32>(x_2696.z, x_2696.w);
            let x_2699 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2697.x, x_2697.y, x_2699);
            let x_2706 : vec3<f32> = txVec39;
            let x_2708 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2706.xy, x_2706.z);
            u_xlat76 = x_2708;
            let x_2710 : f32 = u_xlat17.y;
            let x_2711 : f32 = u_xlat76;
            let x_2713 : f32 = u_xlat75;
            u_xlat75 = ((x_2710 * x_2711) + x_2713);
            let x_2716 : vec4<f32> = u_xlat12;
            let x_2717 : vec2<f32> = vec2<f32>(x_2716.z, x_2716.w);
            let x_2719 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
            let x_2726 : vec3<f32> = txVec40;
            let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
            u_xlat76 = x_2728;
            let x_2730 : f32 = u_xlat17.z;
            let x_2731 : f32 = u_xlat76;
            let x_2733 : f32 = u_xlat75;
            u_xlat75 = ((x_2730 * x_2731) + x_2733);
            let x_2736 : vec4<f32> = u_xlat11;
            let x_2737 : vec2<f32> = vec2<f32>(x_2736.x, x_2736.y);
            let x_2739 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2737.x, x_2737.y, x_2739);
            let x_2746 : vec3<f32> = txVec41;
            let x_2748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2746.xy, x_2746.z);
            u_xlat76 = x_2748;
            let x_2750 : f32 = u_xlat17.w;
            let x_2751 : f32 = u_xlat76;
            let x_2753 : f32 = u_xlat75;
            u_xlat75 = ((x_2750 * x_2751) + x_2753);
            let x_2756 : vec4<f32> = u_xlat11;
            let x_2757 : vec2<f32> = vec2<f32>(x_2756.z, x_2756.w);
            let x_2759 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
            let x_2766 : vec3<f32> = txVec42;
            let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
            u_xlat76 = x_2768;
            let x_2769 : f32 = u_xlat74;
            let x_2770 : f32 = u_xlat76;
            let x_2772 : f32 = u_xlat75;
            u_xlat51.x = ((x_2769 * x_2770) + x_2772);
          } else {
            let x_2776 : vec4<f32> = u_xlat8;
            let x_2779 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2782 : vec2<f32> = ((vec2<f32>(x_2776.x, x_2776.y) * vec2<f32>(x_2779.z, x_2779.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2783 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
            let x_2785 : vec4<f32> = u_xlat9;
            let x_2787 : vec2<f32> = floor(vec2<f32>(x_2785.x, x_2785.y));
            let x_2788 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat8;
            let x_2793 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2793.z, x_2793.w)) + -(vec2<f32>(x_2796.x, x_2796.y)));
            let x_2800 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2800.x, x_2800.x, x_2800.y, x_2800.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2803 : vec4<f32> = u_xlat10;
            let x_2805 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2803.x, x_2803.x, x_2803.z, x_2803.z) * vec4<f32>(x_2805.x, x_2805.x, x_2805.z, x_2805.z));
            let x_2808 : vec4<f32> = u_xlat11;
            let x_2810 : vec2<f32> = (vec2<f32>(x_2808.y, x_2808.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2811 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2811.x, x_2810.x, x_2811.z, x_2810.y);
            let x_2813 : vec4<f32> = u_xlat11;
            let x_2816 : vec2<f32> = u_xlat55;
            let x_2818 : vec2<f32> = ((vec2<f32>(x_2813.x, x_2813.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2816));
            let x_2819 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2818.x, x_2819.y, x_2818.y, x_2819.w);
            let x_2821 : vec2<f32> = u_xlat55;
            let x_2823 : vec2<f32> = (-(x_2821) + vec2<f32>(1.0f, 1.0f));
            let x_2824 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2826 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2826, vec2<f32>(0.0f, 0.0f));
            let x_2828 : vec2<f32> = u_xlat57;
            let x_2830 : vec2<f32> = u_xlat57;
            let x_2832 : vec4<f32> = u_xlat11;
            let x_2834 : vec2<f32> = ((-(x_2828) * x_2830) + vec2<f32>(x_2832.x, x_2832.y));
            let x_2835 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2837, vec2<f32>(0.0f, 0.0f));
            let x_2840 : vec2<f32> = u_xlat57;
            let x_2842 : vec2<f32> = u_xlat57;
            let x_2844 : vec4<f32> = u_xlat10;
            let x_2846 : vec2<f32> = ((-(x_2840) * x_2842) + vec2<f32>(x_2844.y, x_2844.w));
            let x_2847 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2846.x, x_2847.y, x_2846.y);
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2851 : vec2<f32> = (vec2<f32>(x_2849.x, x_2849.y) + vec2<f32>(2.0f, 2.0f));
            let x_2852 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
            let x_2854 : vec3<f32> = u_xlat33;
            let x_2856 : vec2<f32> = (vec2<f32>(x_2854.x, x_2854.z) + vec2<f32>(2.0f, 2.0f));
            let x_2857 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2857.x, x_2856.x, x_2857.z, x_2856.y);
            let x_2860 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2860 * 0.08163200318813323975f);
            let x_2863 : vec4<f32> = u_xlat10;
            let x_2865 : vec3<f32> = (vec3<f32>(x_2863.z, x_2863.x, x_2863.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2866.w);
            let x_2868 : vec4<f32> = u_xlat11;
            let x_2870 : vec2<f32> = (vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2871 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2870.x, x_2870.y, x_2871.z, x_2871.w);
            let x_2874 : f32 = u_xlat14.y;
            u_xlat13.x = x_2874;
            let x_2876 : vec2<f32> = u_xlat55;
            let x_2879 : vec2<f32> = ((vec2<f32>(x_2876.x, x_2876.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2880 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2880.x, x_2879.x, x_2880.z, x_2879.y);
            let x_2882 : vec2<f32> = u_xlat55;
            let x_2885 : vec2<f32> = ((vec2<f32>(x_2882.x, x_2882.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2886 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2885.x, x_2886.y, x_2885.y, x_2886.w);
            let x_2889 : f32 = u_xlat10.x;
            u_xlat11.y = x_2889;
            let x_2892 : f32 = u_xlat12.y;
            u_xlat11.w = x_2892;
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2895 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2894 + x_2895);
            let x_2897 : vec2<f32> = u_xlat55;
            let x_2900 : vec2<f32> = ((vec2<f32>(x_2897.y, x_2897.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2901 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2903 : vec2<f32> = u_xlat55;
            let x_2906 : vec2<f32> = ((vec2<f32>(x_2903.y, x_2903.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2906.x, x_2907.y, x_2906.y, x_2907.w);
            let x_2910 : f32 = u_xlat10.y;
            u_xlat12.y = x_2910;
            let x_2912 : vec4<f32> = u_xlat12;
            let x_2913 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2912 + x_2913);
            let x_2915 : vec4<f32> = u_xlat11;
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2915 / x_2916);
            let x_2918 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2918 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2920 : vec4<f32> = u_xlat12;
            let x_2921 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2920 / x_2921);
            let x_2923 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2923 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2925 : vec4<f32> = u_xlat11;
            let x_2928 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2925.w, x_2925.x, x_2925.y, x_2925.z) * vec4<f32>(x_2928.x, x_2928.x, x_2928.x, x_2928.x));
            let x_2931 : vec4<f32> = u_xlat12;
            let x_2934 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2931.x, x_2931.w, x_2931.y, x_2931.z) * vec4<f32>(x_2934.y, x_2934.y, x_2934.y, x_2934.y));
            let x_2937 : vec4<f32> = u_xlat11;
            let x_2938 : vec3<f32> = vec3<f32>(x_2937.y, x_2937.z, x_2937.w);
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2938.x, x_2939.y, x_2938.y, x_2938.z);
            let x_2942 : f32 = u_xlat12.x;
            u_xlat14.y = x_2942;
            let x_2944 : vec4<f32> = u_xlat9;
            let x_2947 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2950 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2944.x, x_2944.y, x_2944.x, x_2944.y) * vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y)) + vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2950.y));
            let x_2953 : vec4<f32> = u_xlat9;
            let x_2956 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2959 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2953.x, x_2953.y) * vec2<f32>(x_2956.x, x_2956.y)) + vec2<f32>(x_2959.w, x_2959.y));
            let x_2963 : f32 = u_xlat14.y;
            u_xlat11.y = x_2963;
            let x_2966 : f32 = u_xlat12.z;
            u_xlat14.y = x_2966;
            let x_2968 : vec4<f32> = u_xlat9;
            let x_2971 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2968.x, x_2968.y, x_2968.x, x_2968.y) * vec4<f32>(x_2971.x, x_2971.y, x_2971.x, x_2971.y)) + vec4<f32>(x_2974.x, x_2974.y, x_2974.z, x_2974.y));
            let x_2977 : vec4<f32> = u_xlat9;
            let x_2980 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2983 : vec4<f32> = u_xlat14;
            let x_2985 : vec2<f32> = ((vec2<f32>(x_2977.x, x_2977.y) * vec2<f32>(x_2980.x, x_2980.y)) + vec2<f32>(x_2983.w, x_2983.y));
            let x_2986 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
            let x_2989 : f32 = u_xlat14.y;
            u_xlat11.z = x_2989;
            let x_2991 : vec4<f32> = u_xlat9;
            let x_2994 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2997 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2991.x, x_2991.y, x_2991.x, x_2991.y) * vec4<f32>(x_2994.x, x_2994.y, x_2994.x, x_2994.y)) + vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.z));
            let x_3001 : f32 = u_xlat12.w;
            u_xlat14.y = x_3001;
            let x_3004 : vec4<f32> = u_xlat9;
            let x_3007 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3010 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_3004.x, x_3004.y, x_3004.x, x_3004.y) * vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y)) + vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3010.y));
            let x_3014 : vec4<f32> = u_xlat9;
            let x_3017 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3020 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(x_3017.x, x_3017.y)) + vec2<f32>(x_3020.w, x_3020.y));
            let x_3024 : f32 = u_xlat14.y;
            u_xlat11.w = x_3024;
            let x_3027 : vec4<f32> = u_xlat9;
            let x_3030 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3027.x, x_3027.y) * vec2<f32>(x_3030.x, x_3030.y)) + vec2<f32>(x_3033.x, x_3033.w));
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3037 : vec3<f32> = vec3<f32>(x_3036.x, x_3036.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3037.x, x_3038.y, x_3037.y, x_3037.z);
            let x_3040 : vec4<f32> = u_xlat9;
            let x_3043 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3046 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y) * vec4<f32>(x_3043.x, x_3043.y, x_3043.x, x_3043.y)) + vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3046.y));
            let x_3050 : vec4<f32> = u_xlat9;
            let x_3053 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(x_3053.x, x_3053.y)) + vec2<f32>(x_3056.w, x_3056.y));
            let x_3060 : f32 = u_xlat11.x;
            u_xlat12.x = x_3060;
            let x_3062 : vec4<f32> = u_xlat9;
            let x_3065 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat12;
            let x_3070 : vec2<f32> = ((vec2<f32>(x_3062.x, x_3062.y) * vec2<f32>(x_3065.x, x_3065.y)) + vec2<f32>(x_3068.x, x_3068.y));
            let x_3071 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3070.x, x_3070.y, x_3071.z, x_3071.w);
            let x_3074 : vec4<f32> = u_xlat10;
            let x_3076 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3074.x, x_3074.x, x_3074.x, x_3074.x) * x_3076);
            let x_3079 : vec4<f32> = u_xlat10;
            let x_3081 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3079.y, x_3079.y, x_3079.y, x_3079.y) * x_3081);
            let x_3084 : vec4<f32> = u_xlat10;
            let x_3086 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3084.z, x_3084.z, x_3084.z, x_3084.z) * x_3086);
            let x_3088 : vec4<f32> = u_xlat10;
            let x_3090 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3088.w, x_3088.w, x_3088.w, x_3088.w) * x_3090);
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
            let x_3096 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec43;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat74 = x_3105;
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.z, x_3107.w);
            let x_3110 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec44;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat75 = x_3119;
            let x_3120 : f32 = u_xlat75;
            let x_3122 : f32 = u_xlat20.y;
            u_xlat75 = (x_3120 * x_3122);
            let x_3125 : f32 = u_xlat20.x;
            let x_3126 : f32 = u_xlat74;
            let x_3128 : f32 = u_xlat75;
            u_xlat74 = ((x_3125 * x_3126) + x_3128);
            let x_3131 : vec2<f32> = u_xlat55;
            let x_3133 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec45;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat75 = x_3142;
            let x_3144 : f32 = u_xlat20.z;
            let x_3145 : f32 = u_xlat75;
            let x_3147 : f32 = u_xlat74;
            u_xlat74 = ((x_3144 * x_3145) + x_3147);
            let x_3150 : vec4<f32> = u_xlat18;
            let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
            let x_3153 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec46;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat75 = x_3162;
            let x_3164 : f32 = u_xlat20.w;
            let x_3165 : f32 = u_xlat75;
            let x_3167 : f32 = u_xlat74;
            u_xlat74 = ((x_3164 * x_3165) + x_3167);
            let x_3170 : vec4<f32> = u_xlat16;
            let x_3171 : vec2<f32> = vec2<f32>(x_3170.x, x_3170.y);
            let x_3173 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3171.x, x_3171.y, x_3173);
            let x_3180 : vec3<f32> = txVec47;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat75 = x_3182;
            let x_3184 : f32 = u_xlat21.x;
            let x_3185 : f32 = u_xlat75;
            let x_3187 : f32 = u_xlat74;
            u_xlat74 = ((x_3184 * x_3185) + x_3187);
            let x_3190 : vec4<f32> = u_xlat16;
            let x_3191 : vec2<f32> = vec2<f32>(x_3190.z, x_3190.w);
            let x_3193 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3191.x, x_3191.y, x_3193);
            let x_3200 : vec3<f32> = txVec48;
            let x_3202 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3200.xy, x_3200.z);
            u_xlat75 = x_3202;
            let x_3204 : f32 = u_xlat21.y;
            let x_3205 : f32 = u_xlat75;
            let x_3207 : f32 = u_xlat74;
            u_xlat74 = ((x_3204 * x_3205) + x_3207);
            let x_3210 : vec4<f32> = u_xlat17;
            let x_3211 : vec2<f32> = vec2<f32>(x_3210.x, x_3210.y);
            let x_3213 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec49;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat75 = x_3222;
            let x_3224 : f32 = u_xlat21.z;
            let x_3225 : f32 = u_xlat75;
            let x_3227 : f32 = u_xlat74;
            u_xlat74 = ((x_3224 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat18;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.z, x_3230.w);
            let x_3233 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec50;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat75 = x_3242;
            let x_3244 : f32 = u_xlat21.w;
            let x_3245 : f32 = u_xlat75;
            let x_3247 : f32 = u_xlat74;
            u_xlat74 = ((x_3244 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat19;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.x, x_3250.y);
            let x_3253 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec51;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat75 = x_3262;
            let x_3264 : f32 = u_xlat22.x;
            let x_3265 : f32 = u_xlat75;
            let x_3267 : f32 = u_xlat74;
            u_xlat74 = ((x_3264 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat19;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.z, x_3270.w);
            let x_3273 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec52;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat75 = x_3282;
            let x_3284 : f32 = u_xlat22.y;
            let x_3285 : f32 = u_xlat75;
            let x_3287 : f32 = u_xlat74;
            u_xlat74 = ((x_3284 * x_3285) + x_3287);
            let x_3290 : vec2<f32> = u_xlat34;
            let x_3292 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec53;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat75 = x_3301;
            let x_3303 : f32 = u_xlat22.z;
            let x_3304 : f32 = u_xlat75;
            let x_3306 : f32 = u_xlat74;
            u_xlat74 = ((x_3303 * x_3304) + x_3306);
            let x_3309 : vec2<f32> = u_xlat63;
            let x_3311 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3309.x, x_3309.y, x_3311);
            let x_3318 : vec3<f32> = txVec54;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat75 = x_3320;
            let x_3322 : f32 = u_xlat22.w;
            let x_3323 : f32 = u_xlat75;
            let x_3325 : f32 = u_xlat74;
            u_xlat74 = ((x_3322 * x_3323) + x_3325);
            let x_3328 : vec4<f32> = u_xlat14;
            let x_3329 : vec2<f32> = vec2<f32>(x_3328.x, x_3328.y);
            let x_3331 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec55;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat75 = x_3340;
            let x_3342 : f32 = u_xlat10.x;
            let x_3343 : f32 = u_xlat75;
            let x_3345 : f32 = u_xlat74;
            u_xlat74 = ((x_3342 * x_3343) + x_3345);
            let x_3348 : vec4<f32> = u_xlat14;
            let x_3349 : vec2<f32> = vec2<f32>(x_3348.z, x_3348.w);
            let x_3351 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec56;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat75 = x_3360;
            let x_3362 : f32 = u_xlat10.y;
            let x_3363 : f32 = u_xlat75;
            let x_3365 : f32 = u_xlat74;
            u_xlat74 = ((x_3362 * x_3363) + x_3365);
            let x_3368 : vec2<f32> = u_xlat58;
            let x_3370 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec57;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat75 = x_3379;
            let x_3381 : f32 = u_xlat10.z;
            let x_3382 : f32 = u_xlat75;
            let x_3384 : f32 = u_xlat74;
            u_xlat74 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat9;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.x, x_3387.y);
            let x_3390 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec58;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat75 = x_3399;
            let x_3401 : f32 = u_xlat10.w;
            let x_3402 : f32 = u_xlat75;
            let x_3404 : f32 = u_xlat74;
            u_xlat51.x = ((x_3401 * x_3402) + x_3404);
          }
        }
      } else {
        let x_3409 : vec4<f32> = u_xlat8;
        let x_3410 : vec2<f32> = vec2<f32>(x_3409.x, x_3409.y);
        let x_3412 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
        let x_3419 : vec3<f32> = txVec59;
        let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
        u_xlat51.x = x_3421;
      }
      let x_3423 : i32 = u_xlati72;
      let x_3425 : f32 = x_159.x_AdditionalShadowParams[x_3423].x;
      u_xlat74 = (1.0f + -(x_3425));
      let x_3429 : f32 = u_xlat51.x;
      let x_3430 : i32 = u_xlati72;
      let x_3432 : f32 = x_159.x_AdditionalShadowParams[x_3430].x;
      let x_3434 : f32 = u_xlat74;
      u_xlat51.x = ((x_3429 * x_3432) + x_3434);
      let x_3438 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3438);
      let x_3442 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3442 >= 1.0f);
      let x_3444 : bool = u_xlatb74;
      let x_3445 : bool = u_xlatb75;
      u_xlatb74 = (x_3444 | x_3445);
      let x_3447 : bool = u_xlatb74;
      if (x_3447) {
        x_3448 = 1.0f;
      } else {
        let x_3453 : f32 = u_xlat51.x;
        x_3448 = x_3453;
      }
      let x_3454 : f32 = x_3448;
      u_xlat51.x = x_3454;
    } else {
      u_xlat51.x = 1.0f;
    }
    let x_3459 : f32 = u_xlat51.x;
    u_xlat74 = (-(x_3459) + 1.0f);
    let x_3463 : f32 = u_xlat1.x;
    let x_3464 : f32 = u_xlat74;
    let x_3467 : f32 = u_xlat51.x;
    u_xlat51.x = ((x_3463 * x_3464) + x_3467);
    let x_3471 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3471 & 31i)));
    let x_3475 : i32 = u_xlati74;
    let x_3478 : f32 = x_1778.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3475) & bitcast<u32>(x_3478)));
    let x_3482 : i32 = u_xlati74;
    if ((x_3482 != 0i)) {
      let x_3486 : i32 = u_xlati72;
      let x_3488 : f32 = x_1778.x_AdditionalLightsLightTypes[x_3486].el;
      u_xlati74 = i32(x_3488);
      let x_3491 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3491 != 0i));
      let x_3495 : i32 = u_xlati72;
      u_xlati76 = (x_3495 << bitcast<u32>(2i));
      let x_3497 : i32 = u_xlati75;
      if ((x_3497 != 0i)) {
        let x_3501 : vec3<f32> = vs_TEXCOORD1;
        let x_3503 : i32 = u_xlati76;
        let x_3506 : i32 = u_xlati76;
        let x_3510 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3503 + 1i) / 4i)][((x_3506 + 1i) % 4i)];
        let x_3512 : vec3<f32> = (vec3<f32>(x_3501.y, x_3501.y, x_3501.y) * vec3<f32>(x_3510.x, x_3510.y, x_3510.w));
        let x_3513 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3513.w);
        let x_3515 : i32 = u_xlati76;
        let x_3517 : i32 = u_xlati76;
        let x_3520 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[(x_3515 / 4i)][(x_3517 % 4i)];
        let x_3522 : vec3<f32> = vs_TEXCOORD1;
        let x_3525 : vec4<f32> = u_xlat8;
        let x_3527 : vec3<f32> = ((vec3<f32>(x_3520.x, x_3520.y, x_3520.w) * vec3<f32>(x_3522.x, x_3522.x, x_3522.x)) + vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
        let x_3528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3527.x, x_3527.y, x_3527.z, x_3528.w);
        let x_3530 : i32 = u_xlati76;
        let x_3533 : i32 = u_xlati76;
        let x_3537 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3530 + 2i) / 4i)][((x_3533 + 2i) % 4i)];
        let x_3539 : vec3<f32> = vs_TEXCOORD1;
        let x_3542 : vec4<f32> = u_xlat8;
        let x_3544 : vec3<f32> = ((vec3<f32>(x_3537.x, x_3537.y, x_3537.w) * vec3<f32>(x_3539.z, x_3539.z, x_3539.z)) + vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
        let x_3545 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3545.w);
        let x_3547 : vec4<f32> = u_xlat8;
        let x_3549 : i32 = u_xlati76;
        let x_3552 : i32 = u_xlati76;
        let x_3556 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3549 + 3i) / 4i)][((x_3552 + 3i) % 4i)];
        let x_3558 : vec3<f32> = (vec3<f32>(x_3547.x, x_3547.y, x_3547.z) + vec3<f32>(x_3556.x, x_3556.y, x_3556.w));
        let x_3559 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3558.x, x_3558.y, x_3558.z, x_3559.w);
        let x_3561 : vec4<f32> = u_xlat8;
        let x_3563 : vec4<f32> = u_xlat8;
        let x_3565 : vec2<f32> = (vec2<f32>(x_3561.x, x_3561.y) / vec2<f32>(x_3563.z, x_3563.z));
        let x_3566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3565.x, x_3565.y, x_3566.z, x_3566.w);
        let x_3568 : vec4<f32> = u_xlat8;
        let x_3571 : vec2<f32> = ((vec2<f32>(x_3568.x, x_3568.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3571.x, x_3571.y, x_3572.z, x_3572.w);
        let x_3574 : vec4<f32> = u_xlat8;
        let x_3578 : vec2<f32> = clamp(vec2<f32>(x_3574.x, x_3574.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3579 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3578.x, x_3578.y, x_3579.z, x_3579.w);
        let x_3581 : i32 = u_xlati72;
        let x_3583 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3581];
        let x_3585 : vec4<f32> = u_xlat8;
        let x_3588 : i32 = u_xlati72;
        let x_3590 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3588];
        let x_3592 : vec2<f32> = ((vec2<f32>(x_3583.x, x_3583.y) * vec2<f32>(x_3585.x, x_3585.y)) + vec2<f32>(x_3590.z, x_3590.w));
        let x_3593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3592.x, x_3592.y, x_3593.z, x_3593.w);
      } else {
        let x_3596 : i32 = u_xlati74;
        u_xlatb74 = (x_3596 == 1i);
        let x_3598 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3598);
        let x_3600 : i32 = u_xlati74;
        if ((x_3600 != 0i)) {
          let x_3604 : vec3<f32> = vs_TEXCOORD1;
          let x_3606 : i32 = u_xlati76;
          let x_3609 : i32 = u_xlati76;
          let x_3613 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3606 + 1i) / 4i)][((x_3609 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3604.y, x_3604.y) * vec2<f32>(x_3613.x, x_3613.y));
          let x_3616 : i32 = u_xlati76;
          let x_3618 : i32 = u_xlati76;
          let x_3621 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[(x_3616 / 4i)][(x_3618 % 4i)];
          let x_3623 : vec3<f32> = vs_TEXCOORD1;
          let x_3626 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3621.x, x_3621.y) * vec2<f32>(x_3623.x, x_3623.x)) + x_3626);
          let x_3628 : i32 = u_xlati76;
          let x_3631 : i32 = u_xlati76;
          let x_3635 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3628 + 2i) / 4i)][((x_3631 + 2i) % 4i)];
          let x_3637 : vec3<f32> = vs_TEXCOORD1;
          let x_3640 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3635.x, x_3635.y) * vec2<f32>(x_3637.z, x_3637.z)) + x_3640);
          let x_3642 : vec2<f32> = u_xlat54;
          let x_3643 : i32 = u_xlati76;
          let x_3646 : i32 = u_xlati76;
          let x_3650 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3643 + 3i) / 4i)][((x_3646 + 3i) % 4i)];
          u_xlat54 = (x_3642 + vec2<f32>(x_3650.x, x_3650.y));
          let x_3653 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3653 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3656 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3656);
          let x_3658 : i32 = u_xlati72;
          let x_3660 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3658];
          let x_3662 : vec2<f32> = u_xlat54;
          let x_3664 : i32 = u_xlati72;
          let x_3666 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3664];
          let x_3668 : vec2<f32> = ((vec2<f32>(x_3660.x, x_3660.y) * x_3662) + vec2<f32>(x_3666.z, x_3666.w));
          let x_3669 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3668.x, x_3668.y, x_3669.z, x_3669.w);
        } else {
          let x_3672 : vec3<f32> = vs_TEXCOORD1;
          let x_3674 : i32 = u_xlati76;
          let x_3677 : i32 = u_xlati76;
          let x_3681 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3674 + 1i) / 4i)][((x_3677 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3672.y, x_3672.y, x_3672.y, x_3672.y) * x_3681);
          let x_3683 : i32 = u_xlati76;
          let x_3685 : i32 = u_xlati76;
          let x_3688 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[(x_3683 / 4i)][(x_3685 % 4i)];
          let x_3689 : vec3<f32> = vs_TEXCOORD1;
          let x_3692 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3688 * vec4<f32>(x_3689.x, x_3689.x, x_3689.x, x_3689.x)) + x_3692);
          let x_3694 : i32 = u_xlati76;
          let x_3697 : i32 = u_xlati76;
          let x_3701 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3694 + 2i) / 4i)][((x_3697 + 2i) % 4i)];
          let x_3702 : vec3<f32> = vs_TEXCOORD1;
          let x_3705 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3701 * vec4<f32>(x_3702.z, x_3702.z, x_3702.z, x_3702.z)) + x_3705);
          let x_3707 : vec4<f32> = u_xlat9;
          let x_3708 : i32 = u_xlati76;
          let x_3711 : i32 = u_xlati76;
          let x_3715 : vec4<f32> = x_1778.x_AdditionalLightsWorldToLights[((x_3708 + 3i) / 4i)][((x_3711 + 3i) % 4i)];
          u_xlat9 = (x_3707 + x_3715);
          let x_3717 : vec4<f32> = u_xlat9;
          let x_3719 : vec4<f32> = u_xlat9;
          let x_3721 : vec3<f32> = (vec3<f32>(x_3717.x, x_3717.y, x_3717.z) / vec3<f32>(x_3719.w, x_3719.w, x_3719.w));
          let x_3722 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3722.w);
          let x_3724 : vec4<f32> = u_xlat9;
          let x_3726 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3724.x, x_3724.y, x_3724.z), vec3<f32>(x_3726.x, x_3726.y, x_3726.z));
          let x_3729 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3729);
          let x_3731 : f32 = u_xlat74;
          let x_3733 : vec4<f32> = u_xlat9;
          let x_3735 : vec3<f32> = (vec3<f32>(x_3731, x_3731, x_3731) * vec3<f32>(x_3733.x, x_3733.y, x_3733.z));
          let x_3736 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3735.x, x_3735.y, x_3735.z, x_3736.w);
          let x_3738 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3738.x, x_3738.y, x_3738.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3743 : f32 = u_xlat74;
          u_xlat74 = max(x_3743, 0.00000099999999747524f);
          let x_3746 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3746);
          let x_3748 : f32 = u_xlat74;
          let x_3750 : vec4<f32> = u_xlat9;
          let x_3752 : vec3<f32> = (vec3<f32>(x_3748, x_3748, x_3748) * vec3<f32>(x_3750.z, x_3750.x, x_3750.y));
          let x_3753 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3752.x, x_3752.y, x_3752.z, x_3753.w);
          let x_3756 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3756);
          let x_3760 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3760, 0.0f, 1.0f);
          let x_3764 : vec4<f32> = u_xlat10;
          let x_3766 : vec4<bool> = (vec4<f32>(x_3764.y, x_3764.z, x_3764.y, x_3764.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3766.x, x_3766.y);
          let x_3769 : bool = u_xlatb54.x;
          if (x_3769) {
            let x_3774 : f32 = u_xlat10.x;
            x_3770 = x_3774;
          } else {
            let x_3777 : f32 = u_xlat10.x;
            x_3770 = -(x_3777);
          }
          let x_3779 : f32 = x_3770;
          u_xlat54.x = x_3779;
          let x_3782 : bool = u_xlatb54.y;
          if (x_3782) {
            let x_3787 : f32 = u_xlat10.x;
            x_3783 = x_3787;
          } else {
            let x_3790 : f32 = u_xlat10.x;
            x_3783 = -(x_3790);
          }
          let x_3792 : f32 = x_3783;
          u_xlat54.y = x_3792;
          let x_3794 : vec4<f32> = u_xlat9;
          let x_3796 : f32 = u_xlat74;
          let x_3799 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3794.x, x_3794.y) * vec2<f32>(x_3796, x_3796)) + x_3799);
          let x_3801 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3801 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3804 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3804, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3808 : i32 = u_xlati72;
          let x_3810 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3808];
          let x_3812 : vec2<f32> = u_xlat54;
          let x_3814 : i32 = u_xlati72;
          let x_3816 : vec4<f32> = x_1778.x_AdditionalLightsCookieAtlasUVRects[x_3814];
          let x_3818 : vec2<f32> = ((vec2<f32>(x_3810.x, x_3810.y) * x_3812) + vec2<f32>(x_3816.z, x_3816.w));
          let x_3819 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3818.x, x_3818.y, x_3819.z, x_3819.w);
        }
      }
      let x_3826 : vec4<f32> = u_xlat8;
      let x_3828 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3826.x, x_3826.y), 0.0f);
      u_xlat8 = x_3828;
      let x_3830 : bool = u_xlatb5.y;
      if (x_3830) {
        let x_3835 : f32 = u_xlat8.w;
        x_3831 = x_3835;
      } else {
        let x_3838 : f32 = u_xlat8.x;
        x_3831 = x_3838;
      }
      let x_3839 : f32 = x_3831;
      u_xlat74 = x_3839;
      let x_3841 : bool = u_xlatb5.x;
      if (x_3841) {
        let x_3845 : vec4<f32> = u_xlat8;
        x_3842 = vec3<f32>(x_3845.x, x_3845.y, x_3845.z);
      } else {
        let x_3848 : f32 = u_xlat74;
        x_3842 = vec3<f32>(x_3848, x_3848, x_3848);
      }
      let x_3850 : vec3<f32> = x_3842;
      let x_3851 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3850.x, x_3850.y, x_3850.z, x_3851.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3857 : vec4<f32> = u_xlat8;
    let x_3859 : i32 = u_xlati72;
    let x_3861 : vec4<f32> = x_2021.x_AdditionalLightsColor[x_3859];
    let x_3863 : vec3<f32> = (vec3<f32>(x_3857.x, x_3857.y, x_3857.z) * vec3<f32>(x_3861.x, x_3861.y, x_3861.z));
    let x_3864 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3863.x, x_3863.y, x_3863.z, x_3864.w);
    let x_3866 : f32 = u_xlat73;
    let x_3868 : f32 = u_xlat51.x;
    u_xlat72 = (x_3866 * x_3868);
    let x_3870 : f32 = u_xlat72;
    let x_3872 : vec4<f32> = u_xlat8;
    let x_3874 : vec3<f32> = (vec3<f32>(x_3870, x_3870, x_3870) * vec3<f32>(x_3872.x, x_3872.y, x_3872.z));
    let x_3875 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3875.w);
    let x_3877 : vec4<f32> = u_xlat2;
    let x_3879 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_3877.x, x_3877.y, x_3877.z), vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
    let x_3882 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3882, 0.0f, 1.0f);
    let x_3884 : f32 = u_xlat72;
    let x_3886 : vec4<f32> = u_xlat8;
    let x_3888 : vec3<f32> = (vec3<f32>(x_3884, x_3884, x_3884) * vec3<f32>(x_3886.x, x_3886.y, x_3886.z));
    let x_3889 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3888.x, x_3888.y, x_3888.z, x_3889.w);
    let x_3891 : vec4<f32> = u_xlat7;
    let x_3893 : vec4<f32> = u_xlat1;
    let x_3896 : vec4<f32> = u_xlat6;
    let x_3898 : vec3<f32> = ((vec3<f32>(x_3891.x, x_3891.y, x_3891.z) * vec3<f32>(x_3893.y, x_3893.z, x_3893.w)) + vec3<f32>(x_3896.x, x_3896.y, x_3896.z));
    let x_3899 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3899.w);

    continuing {
      let x_3901 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3901 + bitcast<u32>(1i));
    }
  }
  let x_3903 : vec4<f32> = u_xlat4;
  let x_3905 : vec4<f32> = u_xlat1;
  let x_3908 : vec4<f32> = u_xlat3;
  let x_3910 : vec3<f32> = ((vec3<f32>(x_3903.x, x_3903.y, x_3903.z) * vec3<f32>(x_3905.y, x_3905.z, x_3905.w)) + vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
  let x_3911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
  let x_3913 : vec4<f32> = u_xlat6;
  let x_3915 : vec4<f32> = u_xlat1;
  let x_3917 : vec3<f32> = (vec3<f32>(x_3913.x, x_3913.y, x_3913.z) + vec3<f32>(x_3915.x, x_3915.y, x_3915.z));
  let x_3918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3917.x, x_3917.y, x_3917.z, x_3918.w);
  let x_3920 : f32 = u_xlat23;
  let x_3921 : f32 = u_xlat23;
  u_xlat23 = (x_3920 * -(x_3921));
  let x_3924 : f32 = u_xlat23;
  u_xlat23 = exp2(x_3924);
  let x_3926 : vec4<f32> = u_xlat1;
  let x_3929 : vec4<f32> = x_28.unity_FogColor;
  let x_3932 : vec3<f32> = (vec3<f32>(x_3926.x, x_3926.y, x_3926.z) + -(vec3<f32>(x_3929.x, x_3929.y, x_3929.z)));
  let x_3933 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3932.x, x_3932.y, x_3932.z, x_3933.w);
  let x_3937 : f32 = u_xlat23;
  let x_3939 : vec4<f32> = u_xlat1;
  let x_3943 : vec4<f32> = x_28.unity_FogColor;
  let x_3945 : vec3<f32> = ((vec3<f32>(x_3937, x_3937, x_3937) * vec3<f32>(x_3939.x, x_3939.y, x_3939.z)) + vec3<f32>(x_3943.x, x_3943.y, x_3943.z));
  let x_3946 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3945.x, x_3945.y, x_3945.z, x_3946.w);
  let x_3949 : f32 = x_42.x_Surface;
  u_xlatb23 = (x_3949 == 1.0f);
  let x_3951 : bool = u_xlatb23;
  let x_3952 : bool = u_xlatb46;
  u_xlatb23 = (x_3951 | x_3952);
  let x_3954 : bool = u_xlatb23;
  if (x_3954) {
    let x_3959 : f32 = u_xlat0.x;
    x_3955 = x_3959;
  } else {
    x_3955 = 1.0f;
  }
  let x_3961 : f32 = x_3955;
  SV_Target0.w = x_3961;
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


