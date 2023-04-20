diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat27 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat78 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb53 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat53 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(3) var<uniform> x_665 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(4) var<uniform> x_1986 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2449 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
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
  var x_2069 : f32;
  var x_2080 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2587 : f32;
  var x_2596 : f32;
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
  var x_4172 : f32;
  var x_4185 : f32;
  var x_4233 : f32;
  var x_4244 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb26 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat26;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb26 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat52 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb26;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat52;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat26 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat27.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat27.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat52;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat52 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat52;
  u_xlatb78 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat52;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat52;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat27.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat52;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat52 = x_207;
  let x_208 : bool = u_xlatb78;
  if (x_208) {
    let x_213 : f32 = u_xlat27.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat52;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat52 = x_216;
  let x_217 : f32 = u_xlat52;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat26;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat78;
  u_xlat78 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat78;
  u_xlat78 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_319);
  let x_321 : f32 = u_xlat78;
  u_xlat78 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb53.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb53.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb53.x;
  u_xlat53.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb53.y;
  u_xlat53.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat53.y;
  let x_367 : f32 = u_xlat53.x;
  u_xlat53.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat53;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat27 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat27;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat78;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat78;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat79;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb78;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_490 : f32 = vs_INTERP7.y;
  let x_492 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_490 * x_492);
  let x_495 : f32 = x_29.unity_MatrixV[0i].z;
  let x_497 : f32 = vs_INTERP7.x;
  let x_499 : f32 = u_xlat78;
  u_xlat78 = ((x_495 * x_497) + x_499);
  let x_502 : f32 = x_29.unity_MatrixV[2i].z;
  let x_504 : f32 = vs_INTERP7.z;
  let x_506 : f32 = u_xlat78;
  u_xlat78 = ((x_502 * x_504) + x_506);
  let x_508 : f32 = u_xlat78;
  let x_510 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_508 + x_510);
  let x_512 : f32 = u_xlat78;
  let x_516 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_512) + -(x_516));
  let x_519 : f32 = u_xlat78;
  u_xlat78 = max(x_519, 0.0f);
  let x_521 : f32 = u_xlat78;
  let x_524 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_521 * x_524);
  let x_533 : vec2<f32> = vs_INTERP0;
  let x_535 : f32 = x_29.x_GlobalMipBias.x;
  let x_536 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_533, x_535);
  u_xlat4 = x_536;
  let x_542 : vec2<f32> = vs_INTERP0;
  let x_544 : f32 = x_29.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_542, x_544);
  u_xlat5 = vec3<f32>(x_545.x, x_545.y, x_545.z);
  let x_547 : vec4<f32> = u_xlat4;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : f32 = u_xlat79;
  u_xlat79 = (x_559 + 0.5f);
  let x_562 : f32 = u_xlat79;
  let x_564 : vec3<f32> = u_xlat5;
  let x_565 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = u_xlat4.w;
  u_xlat79 = max(x_569, 0.00009999999747378752f);
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : f32 = u_xlat79;
  let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) / vec3<f32>(x_574, x_574, x_574));
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat2;
  let x_580 : vec2<f32> = vec2<f32>(x_579.x, x_579.y);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_587 : vec2<f32> = clamp(vec2<f32>(x_583.x, x_583.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_588 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_591 : f32 = u_xlat2.x;
  u_xlat79 = ((-(x_591) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_597 : f32 = u_xlat79;
  let x_600 : f32 = u_xlat2.y;
  u_xlat80 = (-(x_597) + x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat79;
  u_xlat5 = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604));
  let x_607 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat79;
  let x_629 : f32 = u_xlat79;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat28 = (x_639 * x_641);
  let x_643 : f32 = u_xlat80;
  u_xlat80 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat80;
  u_xlat80 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat81 = ((x_649 * 4.0f) + 2.0f);
  let x_655 : f32 = u_xlat2.z;
  u_xlat54 = min(x_655, 1.0f);
  let x_668 : f32 = x_665.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_668);
  let x_670 : bool = u_xlatb82;
  if (x_670) {
    let x_674 : f32 = x_665.x_MainLightShadowParams.y;
    u_xlatb82 = (x_674 == 1.0f);
    let x_676 : bool = u_xlatb82;
    if (x_676) {
      let x_681 : vec4<f32> = vs_INTERP3;
      let x_685 : vec4<f32> = x_665.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_681.x, x_681.y, x_681.x, x_681.y) + x_685);
      let x_688 : vec4<f32> = u_xlat6;
      let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
      let x_691 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_689.x, x_689.y, x_691);
      let x_704 : vec3<f32> = txVec0;
      let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_704.xy, x_704.z);
      u_xlat7.x = x_706;
      let x_709 : vec4<f32> = u_xlat6;
      let x_710 : vec2<f32> = vec2<f32>(x_709.z, x_709.w);
      let x_712 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_710.x, x_710.y, x_712);
      let x_719 : vec3<f32> = txVec1;
      let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_719.xy, x_719.z);
      u_xlat7.y = x_721;
      let x_723 : vec4<f32> = vs_INTERP3;
      let x_726 : vec4<f32> = x_665.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y) + x_726);
      let x_729 : vec4<f32> = u_xlat6;
      let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
      let x_732 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_730.x, x_730.y, x_732);
      let x_739 : vec3<f32> = txVec2;
      let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
      u_xlat7.z = x_741;
      let x_744 : vec4<f32> = u_xlat6;
      let x_745 : vec2<f32> = vec2<f32>(x_744.z, x_744.w);
      let x_747 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_745.x, x_745.y, x_747);
      let x_754 : vec3<f32> = txVec3;
      let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
      u_xlat7.w = x_756;
      let x_759 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_759, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_766 : f32 = x_665.x_MainLightShadowParams.y;
      u_xlatb83 = (x_766 == 2.0f);
      let x_768 : bool = u_xlatb83;
      if (x_768) {
        let x_771 : vec4<f32> = vs_INTERP3;
        let x_774 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_778 : vec2<f32> = ((vec2<f32>(x_771.x, x_771.y) * vec2<f32>(x_774.z, x_774.w)) + vec2<f32>(0.5f, 0.5f));
        let x_779 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat6;
        let x_783 : vec2<f32> = floor(vec2<f32>(x_781.x, x_781.y));
        let x_784 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_787 : vec4<f32> = vs_INTERP3;
        let x_790 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_793 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_790.z, x_790.w)) + -(vec2<f32>(x_793.x, x_793.y)));
        let x_797 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_797.x, x_797.x, x_797.y, x_797.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_802 : vec4<f32> = u_xlat7;
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_802.x, x_802.x, x_802.z, x_802.z) * vec4<f32>(x_804.x, x_804.x, x_804.z, x_804.z));
        let x_807 : vec4<f32> = u_xlat8;
        let x_811 : vec2<f32> = (vec2<f32>(x_807.y, x_807.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_812.y, x_811.y, x_812.w);
        let x_814 : vec4<f32> = u_xlat8;
        let x_817 : vec2<f32> = u_xlat58;
        let x_819 : vec2<f32> = ((vec2<f32>(x_814.x, x_814.z) * vec2<f32>(0.5f, 0.5f)) + -(x_817));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_823 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_823) + vec2<f32>(1.0f, 1.0f));
        let x_828 : vec2<f32> = u_xlat58;
        let x_830 : vec2<f32> = min(x_828, vec2<f32>(0.0f, 0.0f));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat9;
        let x_836 : vec4<f32> = u_xlat9;
        let x_839 : vec2<f32> = u_xlat60;
        let x_840 : vec2<f32> = ((-(vec2<f32>(x_833.x, x_833.y)) * vec2<f32>(x_836.x, x_836.y)) + x_839);
        let x_841 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_843, vec2<f32>(0.0f, 0.0f));
        let x_845 : vec2<f32> = u_xlat58;
        let x_847 : vec2<f32> = u_xlat58;
        let x_849 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_845) * x_847) + vec2<f32>(x_849.y, x_849.w));
        let x_852 : vec4<f32> = u_xlat9;
        let x_854 : vec2<f32> = (vec2<f32>(x_852.x, x_852.y) + vec2<f32>(1.0f, 1.0f));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_857 + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec4<f32> = u_xlat8;
        let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_865 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec2<f32> = u_xlat60;
        let x_868 : vec2<f32> = (x_867 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_873 : vec2<f32> = (vec2<f32>(x_871.x, x_871.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_877 : vec2<f32> = u_xlat58;
        let x_878 : vec2<f32> = (x_877 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_881.y, x_881.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_885 : f32 = u_xlat9.x;
        u_xlat10.z = x_885;
        let x_888 : f32 = u_xlat58.x;
        u_xlat10.w = x_888;
        let x_891 : f32 = u_xlat11.x;
        u_xlat8.z = x_891;
        let x_894 : f32 = u_xlat7.x;
        u_xlat8.w = x_894;
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_897.z, x_897.w, x_897.x, x_897.z) + vec4<f32>(x_899.z, x_899.w, x_899.x, x_899.z));
        let x_903 : f32 = u_xlat10.y;
        u_xlat9.z = x_903;
        let x_906 : f32 = u_xlat58.y;
        u_xlat9.w = x_906;
        let x_909 : f32 = u_xlat8.y;
        u_xlat11.z = x_909;
        let x_912 : f32 = u_xlat7.z;
        u_xlat11.w = x_912;
        let x_914 : vec4<f32> = u_xlat9;
        let x_916 : vec4<f32> = u_xlat11;
        let x_918 : vec3<f32> = (vec3<f32>(x_914.z, x_914.y, x_914.w) + vec3<f32>(x_916.z, x_916.y, x_916.w));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
        let x_921 : vec4<f32> = u_xlat8;
        let x_923 : vec4<f32> = u_xlat12;
        let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.z, x_921.w) / vec3<f32>(x_923.z, x_923.w, x_923.y));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat8;
        let x_933 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat11;
        let x_938 : vec4<f32> = u_xlat7;
        let x_940 : vec3<f32> = (vec3<f32>(x_936.z, x_936.y, x_936.w) / vec3<f32>(x_938.x, x_938.y, x_938.z));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat9;
        let x_945 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
        let x_948 : vec4<f32> = u_xlat8;
        let x_951 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_953 : vec3<f32> = (vec3<f32>(x_948.y, x_948.x, x_948.z) * vec3<f32>(x_951.x, x_951.x, x_951.x));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat9;
        let x_959 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_961 : vec3<f32> = (vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(x_959.y, x_959.y, x_959.y));
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_965 : f32 = u_xlat9.x;
        u_xlat8.w = x_965;
        let x_967 : vec4<f32> = u_xlat6;
        let x_970 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y) * vec4<f32>(x_970.x, x_970.y, x_970.x, x_970.y)) + vec4<f32>(x_973.y, x_973.w, x_973.x, x_973.w));
        let x_976 : vec4<f32> = u_xlat6;
        let x_979 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.z, x_982.w));
        let x_986 : f32 = u_xlat8.y;
        u_xlat9.w = x_986;
        let x_988 : vec4<f32> = u_xlat9;
        let x_989 : vec2<f32> = vec2<f32>(x_988.y, x_988.z);
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_989.x, x_990.z, x_989.y);
        let x_992 : vec4<f32> = u_xlat6;
        let x_995 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) * vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y)) + vec4<f32>(x_998.x, x_998.y, x_998.z, x_998.y));
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) * vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y)) + vec4<f32>(x_1007.w, x_1007.y, x_1007.w, x_1007.z));
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1013 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y) * vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y)) + vec4<f32>(x_1016.x, x_1016.w, x_1016.z, x_1016.w));
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1020.x, x_1020.x, x_1020.x, x_1020.y) * vec4<f32>(x_1022.z, x_1022.w, x_1022.y, x_1022.z));
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1026.y, x_1026.y, x_1026.z, x_1026.z) * x_1028);
        let x_1032 : f32 = u_xlat7.z;
        let x_1034 : f32 = u_xlat12.y;
        u_xlat83 = (x_1032 * x_1034);
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
        let x_1040 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec4;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
        u_xlat6.x = x_1049;
        let x_1052 : vec4<f32> = u_xlat10;
        let x_1053 : vec2<f32> = vec2<f32>(x_1052.z, x_1052.w);
        let x_1055 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1053.x, x_1053.y, x_1055);
        let x_1063 : vec3<f32> = txVec5;
        let x_1065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1063.xy, x_1063.z);
        u_xlat32 = x_1065;
        let x_1066 : f32 = u_xlat32;
        let x_1068 : f32 = u_xlat13.y;
        u_xlat32 = (x_1066 * x_1068);
        let x_1071 : f32 = u_xlat13.x;
        let x_1073 : f32 = u_xlat6.x;
        let x_1075 : f32 = u_xlat32;
        u_xlat6.x = ((x_1071 * x_1073) + x_1075);
        let x_1079 : vec2<f32> = u_xlat58;
        let x_1081 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec6;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
        u_xlat32 = x_1090;
        let x_1092 : f32 = u_xlat13.z;
        let x_1093 : f32 = u_xlat32;
        let x_1096 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1092 * x_1093) + x_1096);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.x, x_1100.y);
        let x_1103 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec7;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1110.xy, x_1110.z);
        u_xlat32 = x_1112;
        let x_1114 : f32 = u_xlat13.w;
        let x_1115 : f32 = u_xlat32;
        let x_1118 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1114 * x_1115) + x_1118);
        let x_1122 : vec4<f32> = u_xlat11;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec8;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1132.xy, x_1132.z);
        u_xlat32 = x_1134;
        let x_1136 : f32 = u_xlat14.x;
        let x_1137 : f32 = u_xlat32;
        let x_1140 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1136 * x_1137) + x_1140);
        let x_1144 : vec4<f32> = u_xlat11;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec9;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1154.xy, x_1154.z);
        u_xlat32 = x_1156;
        let x_1158 : f32 = u_xlat14.y;
        let x_1159 : f32 = u_xlat32;
        let x_1162 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1158 * x_1159) + x_1162);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec10;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1176.xy, x_1176.z);
        u_xlat32 = x_1178;
        let x_1180 : f32 = u_xlat14.z;
        let x_1181 : f32 = u_xlat32;
        let x_1184 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1180 * x_1181) + x_1184);
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.x, x_1188.y);
        let x_1191 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec11;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat32 = x_1200;
        let x_1202 : f32 = u_xlat14.w;
        let x_1203 : f32 = u_xlat32;
        let x_1206 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1202 * x_1203) + x_1206);
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.z, x_1210.w);
        let x_1213 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec12;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1220.xy, x_1220.z);
        u_xlat32 = x_1222;
        let x_1223 : f32 = u_xlat83;
        let x_1224 : f32 = u_xlat32;
        let x_1227 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1223 * x_1224) + x_1227);
      } else {
        let x_1230 : vec4<f32> = vs_INTERP3;
        let x_1233 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.z, x_1233.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1237 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1241 : vec2<f32> = floor(vec2<f32>(x_1239.x, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec4<f32> = vs_INTERP3;
        let x_1247 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(x_1247.z, x_1247.w)) + -(vec2<f32>(x_1250.x, x_1250.y)));
        let x_1254 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1254.x, x_1254.x, x_1254.y, x_1254.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1257 : vec4<f32> = u_xlat7;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1257.x, x_1257.x, x_1257.z, x_1257.z) * vec4<f32>(x_1259.x, x_1259.x, x_1259.z, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1266 : vec2<f32> = (vec2<f32>(x_1262.y, x_1262.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1267.x, x_1266.x, x_1267.z, x_1266.y);
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1272 : vec2<f32> = u_xlat58;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1272));
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1274.x, x_1275.y, x_1274.y, x_1275.w);
        let x_1277 : vec2<f32> = u_xlat58;
        let x_1279 : vec2<f32> = (-(x_1277) + vec2<f32>(1.0f, 1.0f));
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1282 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1282, vec2<f32>(0.0f, 0.0f));
        let x_1284 : vec2<f32> = u_xlat60;
        let x_1286 : vec2<f32> = u_xlat60;
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1290 : vec2<f32> = ((-(x_1284) * x_1286) + vec2<f32>(x_1288.x, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
        let x_1293 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1293, vec2<f32>(0.0f, 0.0f));
        let x_1296 : vec2<f32> = u_xlat60;
        let x_1298 : vec2<f32> = u_xlat60;
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1302 : vec2<f32> = ((-(x_1296) * x_1298) + vec2<f32>(x_1300.y, x_1300.w));
        let x_1303 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1302.x, x_1303.y, x_1302.y);
        let x_1305 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = (vec2<f32>(x_1305.x, x_1305.y) + vec2<f32>(2.0f, 2.0f));
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec3<f32> = u_xlat33;
        let x_1312 : vec2<f32> = (vec2<f32>(x_1310.x, x_1310.z) + vec2<f32>(2.0f, 2.0f));
        let x_1313 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1313.x, x_1312.x, x_1313.z, x_1312.y);
        let x_1316 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1316 * 0.08163200318813323975f);
        let x_1320 : vec4<f32> = u_xlat7;
        let x_1323 : vec3<f32> = (vec3<f32>(x_1320.z, x_1320.x, x_1320.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat8;
        let x_1329 : vec2<f32> = (vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1333 : f32 = u_xlat11.y;
        u_xlat10.x = x_1333;
        let x_1335 : vec2<f32> = u_xlat58;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1335.x, x_1335.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1343.x, x_1342.x, x_1343.z, x_1342.y);
        let x_1345 : vec2<f32> = u_xlat58;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1350 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1349.x, x_1350.y, x_1349.y, x_1350.w);
        let x_1353 : f32 = u_xlat7.x;
        u_xlat8.y = x_1353;
        let x_1356 : f32 = u_xlat9.y;
        u_xlat8.w = x_1356;
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1358 + x_1359);
        let x_1361 : vec2<f32> = u_xlat58;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1361.y, x_1361.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1365.x, x_1364.x, x_1365.z, x_1364.y);
        let x_1367 : vec2<f32> = u_xlat58;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1367.y, x_1367.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1371 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1370.x, x_1371.y, x_1370.y, x_1371.w);
        let x_1374 : f32 = u_xlat7.y;
        u_xlat9.y = x_1374;
        let x_1376 : vec4<f32> = u_xlat9;
        let x_1377 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1376 + x_1377);
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1380 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1379 / x_1380);
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1382 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1388 : vec4<f32> = u_xlat9;
        let x_1389 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1388 / x_1389);
        let x_1391 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1391 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1396 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1393.w, x_1393.x, x_1393.y, x_1393.z) * vec4<f32>(x_1396.x, x_1396.x, x_1396.x, x_1396.x));
        let x_1399 : vec4<f32> = u_xlat9;
        let x_1402 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1399.x, x_1399.w, x_1399.y, x_1399.z) * vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1406 : vec3<f32> = vec3<f32>(x_1405.y, x_1405.z, x_1405.w);
        let x_1407 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1406.x, x_1407.y, x_1406.y, x_1406.z);
        let x_1410 : f32 = u_xlat9.x;
        u_xlat11.y = x_1410;
        let x_1412 : vec4<f32> = u_xlat6;
        let x_1415 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.y) * vec4<f32>(x_1415.x, x_1415.y, x_1415.x, x_1415.y)) + vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1418.y));
        let x_1421 : vec4<f32> = u_xlat6;
        let x_1424 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1421.x, x_1421.y) * vec2<f32>(x_1424.x, x_1424.y)) + vec2<f32>(x_1427.w, x_1427.y));
        let x_1431 : f32 = u_xlat11.y;
        u_xlat8.y = x_1431;
        let x_1434 : f32 = u_xlat9.z;
        u_xlat11.y = x_1434;
        let x_1436 : vec4<f32> = u_xlat6;
        let x_1439 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.y) * vec4<f32>(x_1439.x, x_1439.y, x_1439.x, x_1439.y)) + vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1442.y));
        let x_1445 : vec4<f32> = u_xlat6;
        let x_1448 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1453 : vec2<f32> = ((vec2<f32>(x_1445.x, x_1445.y) * vec2<f32>(x_1448.x, x_1448.y)) + vec2<f32>(x_1451.w, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1453.x, x_1453.y, x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat11.y;
        u_xlat8.z = x_1457;
        let x_1460 : vec4<f32> = u_xlat6;
        let x_1463 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1466 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y) * vec4<f32>(x_1463.x, x_1463.y, x_1463.x, x_1463.y)) + vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.z));
        let x_1470 : f32 = u_xlat9.w;
        u_xlat11.y = x_1470;
        let x_1473 : vec4<f32> = u_xlat6;
        let x_1476 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y) * vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.y)) + vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1479.y));
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1491 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.w, x_1489.y));
        let x_1492 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1491.x, x_1491.y, x_1492.z);
        let x_1495 : f32 = u_xlat11.y;
        u_xlat8.w = x_1495;
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1501.x, x_1501.y)) + vec2<f32>(x_1504.x, x_1504.w));
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1508 : vec3<f32> = vec3<f32>(x_1507.x, x_1507.z, x_1507.w);
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1508.x, x_1509.y, x_1508.y, x_1508.z);
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1514 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y) * vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y)) + vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1517.y));
        let x_1521 : vec4<f32> = u_xlat6;
        let x_1524 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.x, x_1524.y)) + vec2<f32>(x_1527.w, x_1527.y));
        let x_1531 : f32 = u_xlat8.x;
        u_xlat9.x = x_1531;
        let x_1533 : vec4<f32> = u_xlat6;
        let x_1536 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat9;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1536.x, x_1536.y)) + vec2<f32>(x_1539.x, x_1539.y));
        let x_1542 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1541.x, x_1541.y, x_1542.z, x_1542.w);
        let x_1545 : vec4<f32> = u_xlat7;
        let x_1547 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1545.x, x_1545.x, x_1545.x, x_1545.x) * x_1547);
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1552 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1550.y, x_1550.y, x_1550.y, x_1550.y) * x_1552);
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1557 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1555.z, x_1555.z, x_1555.z, x_1555.z) * x_1557);
        let x_1559 : vec4<f32> = u_xlat7;
        let x_1561 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1559.w, x_1559.w, x_1559.w, x_1559.w) * x_1561);
        let x_1564 : vec4<f32> = u_xlat12;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec13;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat83 = x_1576;
        let x_1578 : vec4<f32> = u_xlat12;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec14;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat8.x = x_1590;
        let x_1593 : f32 = u_xlat8.x;
        let x_1595 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1593 * x_1595);
        let x_1599 : f32 = u_xlat17.x;
        let x_1600 : f32 = u_xlat83;
        let x_1603 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1599 * x_1600) + x_1603);
        let x_1606 : vec2<f32> = u_xlat58;
        let x_1608 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec15;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat58.x = x_1617;
        let x_1620 : f32 = u_xlat17.z;
        let x_1622 : f32 = u_xlat58.x;
        let x_1624 : f32 = u_xlat83;
        u_xlat83 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat15;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec16;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat58.x = x_1639;
        let x_1642 : f32 = u_xlat17.w;
        let x_1644 : f32 = u_xlat58.x;
        let x_1646 : f32 = u_xlat83;
        u_xlat83 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat13;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec17;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat58.x = x_1661;
        let x_1664 : f32 = u_xlat18.x;
        let x_1666 : f32 = u_xlat58.x;
        let x_1668 : f32 = u_xlat83;
        u_xlat83 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec4<f32> = u_xlat13;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec18;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat58.x = x_1683;
        let x_1686 : f32 = u_xlat18.y;
        let x_1688 : f32 = u_xlat58.x;
        let x_1690 : f32 = u_xlat83;
        u_xlat83 = ((x_1686 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat14;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.x, x_1693.y);
        let x_1696 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec19;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1703.xy, x_1703.z);
        u_xlat58.x = x_1705;
        let x_1708 : f32 = u_xlat18.z;
        let x_1710 : f32 = u_xlat58.x;
        let x_1712 : f32 = u_xlat83;
        u_xlat83 = ((x_1708 * x_1710) + x_1712);
        let x_1715 : vec4<f32> = u_xlat15;
        let x_1716 : vec2<f32> = vec2<f32>(x_1715.z, x_1715.w);
        let x_1718 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1725 : vec3<f32> = txVec20;
        let x_1727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1725.xy, x_1725.z);
        u_xlat58.x = x_1727;
        let x_1730 : f32 = u_xlat18.w;
        let x_1732 : f32 = u_xlat58.x;
        let x_1734 : f32 = u_xlat83;
        u_xlat83 = ((x_1730 * x_1732) + x_1734);
        let x_1737 : vec4<f32> = u_xlat16;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec21;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat58.x = x_1749;
        let x_1752 : f32 = u_xlat19.x;
        let x_1754 : f32 = u_xlat58.x;
        let x_1756 : f32 = u_xlat83;
        u_xlat83 = ((x_1752 * x_1754) + x_1756);
        let x_1759 : vec4<f32> = u_xlat16;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.z, x_1759.w);
        let x_1762 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec22;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1769.xy, x_1769.z);
        u_xlat58.x = x_1771;
        let x_1774 : f32 = u_xlat19.y;
        let x_1776 : f32 = u_xlat58.x;
        let x_1778 : f32 = u_xlat83;
        u_xlat83 = ((x_1774 * x_1776) + x_1778);
        let x_1781 : vec3<f32> = u_xlat34;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.x, x_1781.y);
        let x_1784 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec23;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1791.xy, x_1791.z);
        u_xlat58.x = x_1793;
        let x_1796 : f32 = u_xlat19.z;
        let x_1798 : f32 = u_xlat58.x;
        let x_1800 : f32 = u_xlat83;
        u_xlat83 = ((x_1796 * x_1798) + x_1800);
        let x_1803 : vec2<f32> = u_xlat66;
        let x_1805 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec24;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1812.xy, x_1812.z);
        u_xlat58.x = x_1814;
        let x_1817 : f32 = u_xlat19.w;
        let x_1819 : f32 = u_xlat58.x;
        let x_1821 : f32 = u_xlat83;
        u_xlat83 = ((x_1817 * x_1819) + x_1821);
        let x_1824 : vec4<f32> = u_xlat11;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec25;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1834.xy, x_1834.z);
        u_xlat58.x = x_1836;
        let x_1839 : f32 = u_xlat7.x;
        let x_1841 : f32 = u_xlat58.x;
        let x_1843 : f32 = u_xlat83;
        u_xlat83 = ((x_1839 * x_1841) + x_1843);
        let x_1846 : vec4<f32> = u_xlat11;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.z, x_1846.w);
        let x_1849 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec26;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1856.xy, x_1856.z);
        u_xlat58.x = x_1858;
        let x_1861 : f32 = u_xlat7.y;
        let x_1863 : f32 = u_xlat58.x;
        let x_1865 : f32 = u_xlat83;
        u_xlat83 = ((x_1861 * x_1863) + x_1865);
        let x_1868 : vec2<f32> = u_xlat61;
        let x_1870 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1877 : vec3<f32> = txVec27;
        let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
        u_xlat58.x = x_1879;
        let x_1882 : f32 = u_xlat7.z;
        let x_1884 : f32 = u_xlat58.x;
        let x_1886 : f32 = u_xlat83;
        u_xlat83 = ((x_1882 * x_1884) + x_1886);
        let x_1889 : vec4<f32> = u_xlat6;
        let x_1890 : vec2<f32> = vec2<f32>(x_1889.x, x_1889.y);
        let x_1892 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec28;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1899.xy, x_1899.z);
        u_xlat6.x = x_1901;
        let x_1904 : f32 = u_xlat7.w;
        let x_1906 : f32 = u_xlat6.x;
        let x_1908 : f32 = u_xlat83;
        u_xlat82 = ((x_1904 * x_1906) + x_1908);
      }
    }
  } else {
    let x_1912 : vec4<f32> = vs_INTERP3;
    let x_1913 : vec2<f32> = vec2<f32>(x_1912.x, x_1912.y);
    let x_1915 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
    let x_1922 : vec3<f32> = txVec29;
    let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1922.xy, x_1922.z);
    u_xlat82 = x_1924;
  }
  let x_1926 : f32 = x_665.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1926) + 1.0f);
  let x_1929 : f32 = u_xlat82;
  let x_1931 : f32 = x_665.x_MainLightShadowParams.x;
  let x_1933 : f32 = u_xlat83;
  u_xlat82 = ((x_1929 * x_1931) + x_1933);
  let x_1936 : f32 = vs_INTERP3.z;
  u_xlatb83 = (0.0f >= x_1936);
  let x_1940 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_1940 >= 1.0f);
  let x_1942 : bool = u_xlatb83;
  let x_1943 : bool = u_xlatb6;
  u_xlatb83 = (x_1942 | x_1943);
  let x_1945 : bool = u_xlatb83;
  let x_1946 : f32 = u_xlat82;
  u_xlat82 = select(x_1946, 1.0f, x_1945);
  let x_1948 : vec3<f32> = vs_INTERP7;
  let x_1950 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1952 : vec3<f32> = (x_1948 + -(x_1950));
  let x_1953 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1955 : vec4<f32> = u_xlat6;
  let x_1957 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1955.x, x_1955.y, x_1955.z), vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : f32 = u_xlat83;
  let x_1962 : f32 = x_665.x_MainLightShadowParams.z;
  let x_1965 : f32 = x_665.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1960 * x_1962) + x_1965);
  let x_1969 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1969, 0.0f, 1.0f);
  let x_1972 : f32 = u_xlat82;
  u_xlat32 = (-(x_1972) + 1.0f);
  let x_1976 : f32 = u_xlat6.x;
  let x_1977 : f32 = u_xlat32;
  let x_1979 : f32 = u_xlat82;
  u_xlat82 = ((x_1976 * x_1977) + x_1979);
  let x_1988 : f32 = x_1986.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1988 == -1.0f));
  let x_1990 : bool = u_xlatb6;
  if (x_1990) {
    let x_1993 : vec3<f32> = vs_INTERP7;
    let x_1996 : vec4<f32> = x_1986.x_MainLightWorldToLight[1i];
    let x_1998 : vec2<f32> = (vec2<f32>(x_1993.y, x_1993.y) * vec2<f32>(x_1996.x, x_1996.y));
    let x_1999 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1998.x, x_1998.y, x_1999.z, x_1999.w);
    let x_2002 : vec4<f32> = x_1986.x_MainLightWorldToLight[0i];
    let x_2004 : vec3<f32> = vs_INTERP7;
    let x_2007 : vec4<f32> = u_xlat6;
    let x_2009 : vec2<f32> = ((vec2<f32>(x_2002.x, x_2002.y) * vec2<f32>(x_2004.x, x_2004.x)) + vec2<f32>(x_2007.x, x_2007.y));
    let x_2010 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
    let x_2013 : vec4<f32> = x_1986.x_MainLightWorldToLight[2i];
    let x_2015 : vec3<f32> = vs_INTERP7;
    let x_2018 : vec4<f32> = u_xlat6;
    let x_2020 : vec2<f32> = ((vec2<f32>(x_2013.x, x_2013.y) * vec2<f32>(x_2015.z, x_2015.z)) + vec2<f32>(x_2018.x, x_2018.y));
    let x_2021 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
    let x_2023 : vec4<f32> = u_xlat6;
    let x_2026 : vec4<f32> = x_1986.x_MainLightWorldToLight[3i];
    let x_2028 : vec2<f32> = (vec2<f32>(x_2023.x, x_2023.y) + vec2<f32>(x_2026.x, x_2026.y));
    let x_2029 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2028.x, x_2028.y, x_2029.z, x_2029.w);
    let x_2031 : vec4<f32> = u_xlat6;
    let x_2034 : vec2<f32> = ((vec2<f32>(x_2031.x, x_2031.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2035 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2034.x, x_2034.y, x_2035.z, x_2035.w);
    let x_2042 : vec4<f32> = u_xlat6;
    let x_2045 : f32 = x_29.x_GlobalMipBias.x;
    let x_2046 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2042.x, x_2042.y), x_2045);
    u_xlat6 = x_2046;
    let x_2049 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2051 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2053 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2055 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2056 : vec4<f32> = vec4<f32>(x_2049, x_2051, x_2053, x_2055);
    let x_2064 : vec4<bool> = (vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2056.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2064.x, x_2064.y);
    let x_2068 : bool = u_xlatb7.y;
    if (x_2068) {
      let x_2073 : f32 = u_xlat6.w;
      x_2069 = x_2073;
    } else {
      let x_2076 : f32 = u_xlat6.x;
      x_2069 = x_2076;
    }
    let x_2077 : f32 = x_2069;
    u_xlat84 = x_2077;
    let x_2079 : bool = u_xlatb7.x;
    if (x_2079) {
      let x_2083 : vec4<f32> = u_xlat6;
      x_2080 = vec3<f32>(x_2083.x, x_2083.y, x_2083.z);
    } else {
      let x_2086 : f32 = u_xlat84;
      x_2080 = vec3<f32>(x_2086, x_2086, x_2086);
    }
    let x_2088 : vec3<f32> = x_2080;
    let x_2089 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2095 : vec4<f32> = u_xlat6;
  let x_2098 : vec4<f32> = x_29.x_MainLightColor;
  let x_2100 : vec3<f32> = (vec3<f32>(x_2095.x, x_2095.y, x_2095.z) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec4<f32> = u_xlat3;
  let x_2106 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2103.x, x_2103.y, x_2103.z)), vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : f32 = u_xlat84;
  let x_2110 : f32 = u_xlat84;
  u_xlat84 = (x_2109 + x_2110);
  let x_2112 : vec4<f32> = u_xlat1;
  let x_2114 : f32 = u_xlat84;
  let x_2118 : vec4<f32> = u_xlat3;
  let x_2121 : vec3<f32> = ((vec3<f32>(x_2112.x, x_2112.y, x_2112.z) * -(vec3<f32>(x_2114, x_2114, x_2114))) + -(vec3<f32>(x_2118.x, x_2118.y, x_2118.z)));
  let x_2122 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
  let x_2124 : vec4<f32> = u_xlat1;
  let x_2126 : vec4<f32> = u_xlat3;
  u_xlat84 = dot(vec3<f32>(x_2124.x, x_2124.y, x_2124.z), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2129 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2129, 0.0f, 1.0f);
  let x_2131 : f32 = u_xlat84;
  u_xlat84 = (-(x_2131) + 1.0f);
  let x_2134 : f32 = u_xlat84;
  let x_2135 : f32 = u_xlat84;
  u_xlat84 = (x_2134 * x_2135);
  let x_2137 : f32 = u_xlat84;
  let x_2138 : f32 = u_xlat84;
  u_xlat84 = (x_2137 * x_2138);
  let x_2141 : f32 = u_xlat79;
  u_xlat85 = ((-(x_2141) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2147 : f32 = u_xlat79;
  let x_2148 : f32 = u_xlat85;
  u_xlat79 = (x_2147 * x_2148);
  let x_2150 : f32 = u_xlat79;
  u_xlat79 = (x_2150 * 6.0f);
  let x_2160 : vec4<f32> = u_xlat7;
  let x_2162 : f32 = u_xlat79;
  let x_2163 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2160.x, x_2160.y, x_2160.z), x_2162);
  u_xlat7 = x_2163;
  let x_2165 : f32 = u_xlat7.w;
  u_xlat79 = (x_2165 + -1.0f);
  let x_2168 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2169 : f32 = u_xlat79;
  u_xlat79 = ((x_2168 * x_2169) + 1.0f);
  let x_2172 : f32 = u_xlat79;
  u_xlat79 = max(x_2172, 0.0f);
  let x_2174 : f32 = u_xlat79;
  u_xlat79 = log2(x_2174);
  let x_2176 : f32 = u_xlat79;
  let x_2178 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_2176 * x_2178);
  let x_2180 : f32 = u_xlat79;
  u_xlat79 = exp2(x_2180);
  let x_2182 : f32 = u_xlat79;
  let x_2184 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_2182 * x_2184);
  let x_2186 : vec4<f32> = u_xlat7;
  let x_2188 : f32 = u_xlat79;
  let x_2190 : vec3<f32> = (vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188, x_2188, x_2188));
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat2;
  let x_2195 : vec4<f32> = u_xlat2;
  let x_2199 : vec2<f32> = ((vec2<f32>(x_2193.x, x_2193.x) * vec2<f32>(x_2195.x, x_2195.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2200 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
  let x_2203 : f32 = u_xlat8.y;
  u_xlat79 = (1.0f / x_2203);
  let x_2205 : vec4<f32> = u_xlat0;
  let x_2208 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_2205.x, x_2205.y, x_2205.z)) + vec3<f32>(x_2208, x_2208, x_2208));
  let x_2211 : f32 = u_xlat84;
  let x_2213 : vec3<f32> = u_xlat34;
  let x_2215 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2211, x_2211, x_2211) * x_2213) + vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : f32 = u_xlat79;
  let x_2220 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2218, x_2218, x_2218) * x_2220);
  let x_2222 : vec4<f32> = u_xlat7;
  let x_2224 : vec3<f32> = u_xlat34;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2222.x, x_2222.y, x_2222.z) * x_2224);
  let x_2226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec4<f32> = u_xlat4;
  let x_2230 : vec3<f32> = u_xlat5;
  let x_2232 : vec4<f32> = u_xlat7;
  let x_2234 : vec3<f32> = ((vec3<f32>(x_2228.x, x_2228.y, x_2228.z) * x_2230) + vec3<f32>(x_2232.x, x_2232.y, x_2232.z));
  let x_2235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
  let x_2237 : f32 = u_xlat82;
  let x_2239 : f32 = x_349.unity_LightData.z;
  u_xlat79 = (x_2237 * x_2239);
  let x_2241 : vec4<f32> = u_xlat1;
  let x_2244 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2241.x, x_2241.y, x_2241.z), vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2249 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2249, 0.0f, 1.0f);
  let x_2252 : f32 = u_xlat79;
  let x_2254 : f32 = u_xlat2.x;
  u_xlat79 = (x_2252 * x_2254);
  let x_2256 : f32 = u_xlat79;
  let x_2258 : vec4<f32> = u_xlat6;
  let x_2260 : vec3<f32> = (vec3<f32>(x_2256, x_2256, x_2256) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
  let x_2261 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
  let x_2263 : vec4<f32> = u_xlat3;
  let x_2266 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2268 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.y, x_2263.z) + vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : vec4<f32> = u_xlat7;
  let x_2273 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2271.x, x_2271.y, x_2271.z), vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : f32 = u_xlat79;
  u_xlat79 = max(x_2276, 1.17549435e-38f);
  let x_2279 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_2279);
  let x_2281 : f32 = u_xlat79;
  let x_2283 : vec4<f32> = u_xlat7;
  let x_2285 : vec3<f32> = (vec3<f32>(x_2281, x_2281, x_2281) * vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
  let x_2288 : vec4<f32> = u_xlat1;
  let x_2290 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2288.x, x_2288.y, x_2288.z), vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
  let x_2293 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2293, 0.0f, 1.0f);
  let x_2296 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2298 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2296.x, x_2296.y, x_2296.z), vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2303 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2303, 0.0f, 1.0f);
  let x_2306 : f32 = u_xlat79;
  let x_2307 : f32 = u_xlat79;
  u_xlat79 = (x_2306 * x_2307);
  let x_2309 : f32 = u_xlat79;
  let x_2311 : f32 = u_xlat8.x;
  u_xlat79 = ((x_2309 * x_2311) + 1.00001001358032226562f);
  let x_2316 : f32 = u_xlat2.x;
  let x_2318 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2316 * x_2318);
  let x_2321 : f32 = u_xlat79;
  let x_2322 : f32 = u_xlat79;
  u_xlat79 = (x_2321 * x_2322);
  let x_2325 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2325, 0.10000000149011611938f);
  let x_2329 : f32 = u_xlat79;
  let x_2331 : f32 = u_xlat2.x;
  u_xlat79 = (x_2329 * x_2331);
  let x_2333 : f32 = u_xlat81;
  let x_2334 : f32 = u_xlat79;
  u_xlat79 = (x_2333 * x_2334);
  let x_2336 : f32 = u_xlat28;
  let x_2337 : f32 = u_xlat79;
  u_xlat79 = (x_2336 / x_2337);
  let x_2339 : vec4<f32> = u_xlat0;
  let x_2341 : f32 = u_xlat79;
  let x_2344 : vec3<f32> = u_xlat5;
  let x_2345 : vec3<f32> = ((vec3<f32>(x_2339.x, x_2339.y, x_2339.z) * vec3<f32>(x_2341, x_2341, x_2341)) + x_2344);
  let x_2346 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2348 : vec4<f32> = u_xlat6;
  let x_2350 : vec4<f32> = u_xlat7;
  let x_2352 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
  let x_2356 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2358 : f32 = x_349.unity_LightData.y;
  u_xlat79 = min(x_2356, x_2358);
  let x_2362 : f32 = u_xlat79;
  u_xlatu79 = bitcast<u32>(i32(x_2362));
  let x_2365 : f32 = u_xlat83;
  let x_2368 : f32 = x_665.x_AdditionalShadowFadeParams.x;
  let x_2371 : f32 = x_665.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2365 * x_2368) + x_2371);
  let x_2375 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2375, 0.0f, 1.0f);
  let x_2379 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2381 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2383 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2385 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2386 : vec4<f32> = vec4<f32>(x_2379, x_2381, x_2383, x_2385);
  let x_2392 : vec4<bool> = (vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2386.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2392.x, x_2392.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2404 : u32 = u_xlatu_loop_1;
    let x_2405 : u32 = u_xlatu79;
    if ((x_2404 < x_2405)) {
    } else {
      break;
    }
    let x_2408 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2408 >> 2u);
    let x_2412 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2412 & 3u));
    let x_2415 : u32 = u_xlatu82;
    let x_2418 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2415)];
    let x_2428 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2433 : vec4<u32> = indexable[x_2428];
    u_xlat82 = dot(x_2418, bitcast<vec4<f32>>(x_2433));
    let x_2437 : f32 = u_xlat82;
    u_xlati82 = i32(x_2437);
    let x_2439 : vec3<f32> = vs_INTERP7;
    let x_2450 : i32 = u_xlati82;
    let x_2452 : vec4<f32> = x_2449.x_AdditionalLightsPosition[x_2450];
    let x_2455 : i32 = u_xlati82;
    let x_2457 : vec4<f32> = x_2449.x_AdditionalLightsPosition[x_2455];
    let x_2459 : vec3<f32> = ((-(x_2439) * vec3<f32>(x_2452.w, x_2452.w, x_2452.w)) + vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
    let x_2462 : vec4<f32> = u_xlat9;
    let x_2464 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2462.x, x_2462.y, x_2462.z), vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
    let x_2467 : f32 = u_xlat83;
    u_xlat83 = max(x_2467, 0.00006103515625f);
    let x_2470 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2470);
    let x_2472 : f32 = u_xlat84;
    let x_2474 : vec4<f32> = u_xlat9;
    let x_2476 : vec3<f32> = (vec3<f32>(x_2472, x_2472, x_2472) * vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
    let x_2477 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
    let x_2480 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2480);
    let x_2482 : f32 = u_xlat83;
    let x_2483 : i32 = u_xlati82;
    let x_2485 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2483].x;
    u_xlat83 = (x_2482 * x_2485);
    let x_2487 : f32 = u_xlat83;
    let x_2489 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2487) * x_2489) + 1.0f);
    let x_2492 : f32 = u_xlat83;
    u_xlat83 = max(x_2492, 0.0f);
    let x_2494 : f32 = u_xlat83;
    let x_2495 : f32 = u_xlat83;
    u_xlat83 = (x_2494 * x_2495);
    let x_2497 : f32 = u_xlat83;
    let x_2498 : f32 = u_xlat59;
    u_xlat83 = (x_2497 * x_2498);
    let x_2500 : i32 = u_xlati82;
    let x_2502 : vec4<f32> = x_2449.x_AdditionalLightsSpotDir[x_2500];
    let x_2504 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2502.x, x_2502.y, x_2502.z), vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
    let x_2507 : f32 = u_xlat59;
    let x_2508 : i32 = u_xlati82;
    let x_2510 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2508].z;
    let x_2512 : i32 = u_xlati82;
    let x_2514 : f32 = x_2449.x_AdditionalLightsAttenuation[x_2512].w;
    u_xlat59 = ((x_2507 * x_2510) + x_2514);
    let x_2516 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2516, 0.0f, 1.0f);
    let x_2518 : f32 = u_xlat59;
    let x_2519 : f32 = u_xlat59;
    u_xlat59 = (x_2518 * x_2519);
    let x_2521 : f32 = u_xlat83;
    let x_2522 : f32 = u_xlat59;
    u_xlat83 = (x_2521 * x_2522);
    let x_2526 : i32 = u_xlati82;
    let x_2528 : f32 = x_665.x_AdditionalShadowParams[x_2526].w;
    u_xlati59 = i32(x_2528);
    let x_2531 : i32 = u_xlati59;
    u_xlatb85 = (x_2531 >= 0i);
    let x_2533 : bool = u_xlatb85;
    if (x_2533) {
      let x_2537 : i32 = u_xlati82;
      let x_2539 : f32 = x_665.x_AdditionalShadowParams[x_2537].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2539, x_2539, x_2539, x_2539))));
      let x_2543 : bool = u_xlatb85;
      if (x_2543) {
        let x_2548 : vec4<f32> = u_xlat10;
        let x_2551 : vec4<f32> = u_xlat10;
        let x_2554 : vec4<bool> = (abs(vec4<f32>(x_2548.z, x_2548.z, x_2548.y, x_2548.z)) >= abs(vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.x)));
        let x_2556 : vec3<bool> = vec3<bool>(x_2554.x, x_2554.y, x_2554.z);
        let x_2557 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
        let x_2560 : bool = u_xlatb11.y;
        let x_2562 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2560 & x_2562);
        let x_2564 : vec4<f32> = u_xlat10;
        let x_2567 : vec4<bool> = (-(vec4<f32>(x_2564.z, x_2564.y, x_2564.z, x_2564.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2568 : vec3<bool> = vec3<bool>(x_2567.x, x_2567.y, x_2567.w);
        let x_2569 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2568.x, x_2568.y, x_2569.z, x_2568.z);
        let x_2572 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2572);
        let x_2577 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2577);
        let x_2583 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2583);
        let x_2586 : bool = u_xlatb11.z;
        if (x_2586) {
          let x_2591 : f32 = u_xlat11.y;
          x_2587 = x_2591;
        } else {
          let x_2593 : f32 = u_xlat87;
          x_2587 = x_2593;
        }
        let x_2594 : f32 = x_2587;
        u_xlat87 = x_2594;
        let x_2595 : bool = u_xlatb85;
        if (x_2595) {
          let x_2600 : f32 = u_xlat11.x;
          x_2596 = x_2600;
        } else {
          let x_2602 : f32 = u_xlat87;
          x_2596 = x_2602;
        }
        let x_2603 : f32 = x_2596;
        u_xlat85 = x_2603;
        let x_2604 : i32 = u_xlati82;
        let x_2606 : f32 = x_665.x_AdditionalShadowParams[x_2604].w;
        u_xlat87 = trunc(x_2606);
        let x_2608 : f32 = u_xlat85;
        let x_2609 : f32 = u_xlat87;
        u_xlat85 = (x_2608 + x_2609);
        let x_2611 : f32 = u_xlat85;
        u_xlati59 = i32(x_2611);
      }
      let x_2613 : i32 = u_xlati59;
      u_xlati59 = (x_2613 << bitcast<u32>(2i));
      let x_2615 : vec3<f32> = vs_INTERP7;
      let x_2618 : i32 = u_xlati59;
      let x_2621 : i32 = u_xlati59;
      let x_2625 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2618 + 1i) / 4i)][((x_2621 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2615.y, x_2615.y, x_2615.y, x_2615.y) * x_2625);
      let x_2627 : i32 = u_xlati59;
      let x_2629 : i32 = u_xlati59;
      let x_2632 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[(x_2627 / 4i)][(x_2629 % 4i)];
      let x_2633 : vec3<f32> = vs_INTERP7;
      let x_2636 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2632 * vec4<f32>(x_2633.x, x_2633.x, x_2633.x, x_2633.x)) + x_2636);
      let x_2638 : i32 = u_xlati59;
      let x_2641 : i32 = u_xlati59;
      let x_2645 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2638 + 2i) / 4i)][((x_2641 + 2i) % 4i)];
      let x_2646 : vec3<f32> = vs_INTERP7;
      let x_2649 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2645 * vec4<f32>(x_2646.z, x_2646.z, x_2646.z, x_2646.z)) + x_2649);
      let x_2651 : vec4<f32> = u_xlat11;
      let x_2652 : i32 = u_xlati59;
      let x_2655 : i32 = u_xlati59;
      let x_2659 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2652 + 3i) / 4i)][((x_2655 + 3i) % 4i)];
      u_xlat11 = (x_2651 + x_2659);
      let x_2661 : vec4<f32> = u_xlat11;
      let x_2663 : vec4<f32> = u_xlat11;
      let x_2665 : vec3<f32> = (vec3<f32>(x_2661.x, x_2661.y, x_2661.z) / vec3<f32>(x_2663.w, x_2663.w, x_2663.w));
      let x_2666 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2665.x, x_2665.y, x_2665.z, x_2666.w);
      let x_2669 : i32 = u_xlati82;
      let x_2671 : f32 = x_665.x_AdditionalShadowParams[x_2669].y;
      u_xlatb59 = (0.0f < x_2671);
      let x_2673 : bool = u_xlatb59;
      if (x_2673) {
        let x_2676 : i32 = u_xlati82;
        let x_2678 : f32 = x_665.x_AdditionalShadowParams[x_2676].y;
        u_xlatb59 = (1.0f == x_2678);
        let x_2680 : bool = u_xlatb59;
        if (x_2680) {
          let x_2683 : vec4<f32> = u_xlat11;
          let x_2687 : vec4<f32> = x_665.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y) + x_2687);
          let x_2690 : vec4<f32> = u_xlat12;
          let x_2691 : vec2<f32> = vec2<f32>(x_2690.x, x_2690.y);
          let x_2693 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2691.x, x_2691.y, x_2693);
          let x_2701 : vec3<f32> = txVec30;
          let x_2703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2701.xy, x_2701.z);
          u_xlat13.x = x_2703;
          let x_2706 : vec4<f32> = u_xlat12;
          let x_2707 : vec2<f32> = vec2<f32>(x_2706.z, x_2706.w);
          let x_2709 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
          let x_2716 : vec3<f32> = txVec31;
          let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
          u_xlat13.y = x_2718;
          let x_2720 : vec4<f32> = u_xlat11;
          let x_2724 : vec4<f32> = x_665.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y) + x_2724);
          let x_2727 : vec4<f32> = u_xlat12;
          let x_2728 : vec2<f32> = vec2<f32>(x_2727.x, x_2727.y);
          let x_2730 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
          let x_2737 : vec3<f32> = txVec32;
          let x_2739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
          u_xlat13.z = x_2739;
          let x_2742 : vec4<f32> = u_xlat12;
          let x_2743 : vec2<f32> = vec2<f32>(x_2742.z, x_2742.w);
          let x_2745 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2743.x, x_2743.y, x_2745);
          let x_2752 : vec3<f32> = txVec33;
          let x_2754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2752.xy, x_2752.z);
          u_xlat13.w = x_2754;
          let x_2756 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2756, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2759 : i32 = u_xlati82;
          let x_2761 : f32 = x_665.x_AdditionalShadowParams[x_2759].y;
          u_xlatb85 = (2.0f == x_2761);
          let x_2763 : bool = u_xlatb85;
          if (x_2763) {
            let x_2766 : vec4<f32> = u_xlat11;
            let x_2770 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2773 : vec2<f32> = ((vec2<f32>(x_2766.x, x_2766.y) * vec2<f32>(x_2770.z, x_2770.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2774 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat12;
            let x_2778 : vec2<f32> = floor(vec2<f32>(x_2776.x, x_2776.y));
            let x_2779 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2782 : vec4<f32> = u_xlat11;
            let x_2785 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(x_2785.z, x_2785.w)) + -(vec2<f32>(x_2788.x, x_2788.y)));
            let x_2792 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2792.x, x_2792.x, x_2792.y, x_2792.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2795 : vec4<f32> = u_xlat13;
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2795.x, x_2795.x, x_2795.z, x_2795.z) * vec4<f32>(x_2797.x, x_2797.x, x_2797.z, x_2797.z));
            let x_2800 : vec4<f32> = u_xlat14;
            let x_2802 : vec2<f32> = (vec2<f32>(x_2800.y, x_2800.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2802.x, x_2803.y, x_2802.y, x_2803.w);
            let x_2805 : vec4<f32> = u_xlat14;
            let x_2808 : vec2<f32> = u_xlat64;
            let x_2810 : vec2<f32> = ((vec2<f32>(x_2805.x, x_2805.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2808));
            let x_2811 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2813) + vec2<f32>(1.0f, 1.0f));
            let x_2816 : vec2<f32> = u_xlat64;
            let x_2817 : vec2<f32> = min(x_2816, vec2<f32>(0.0f, 0.0f));
            let x_2818 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2817.x, x_2817.y, x_2818.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat15;
            let x_2823 : vec4<f32> = u_xlat15;
            let x_2826 : vec2<f32> = u_xlat66;
            let x_2827 : vec2<f32> = ((-(vec2<f32>(x_2820.x, x_2820.y)) * vec2<f32>(x_2823.x, x_2823.y)) + x_2826);
            let x_2828 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2830 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2830, vec2<f32>(0.0f, 0.0f));
            let x_2832 : vec2<f32> = u_xlat64;
            let x_2834 : vec2<f32> = u_xlat64;
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2832) * x_2834) + vec2<f32>(x_2836.y, x_2836.w));
            let x_2839 : vec4<f32> = u_xlat15;
            let x_2841 : vec2<f32> = (vec2<f32>(x_2839.x, x_2839.y) + vec2<f32>(1.0f, 1.0f));
            let x_2842 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
            let x_2844 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2844 + vec2<f32>(1.0f, 1.0f));
            let x_2846 : vec4<f32> = u_xlat14;
            let x_2848 : vec2<f32> = (vec2<f32>(x_2846.x, x_2846.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2849 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2848.x, x_2848.y, x_2849.z, x_2849.w);
            let x_2851 : vec2<f32> = u_xlat66;
            let x_2852 : vec2<f32> = (x_2851 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2853 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
            let x_2855 : vec4<f32> = u_xlat15;
            let x_2857 : vec2<f32> = (vec2<f32>(x_2855.x, x_2855.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2858 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2857.x, x_2857.y, x_2858.z, x_2858.w);
            let x_2860 : vec2<f32> = u_xlat64;
            let x_2861 : vec2<f32> = (x_2860 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2862 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2861.x, x_2861.y, x_2862.z, x_2862.w);
            let x_2864 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2864.y, x_2864.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2868 : f32 = u_xlat15.x;
            u_xlat16.z = x_2868;
            let x_2871 : f32 = u_xlat64.x;
            u_xlat16.w = x_2871;
            let x_2874 : f32 = u_xlat17.x;
            u_xlat14.z = x_2874;
            let x_2877 : f32 = u_xlat13.x;
            u_xlat14.w = x_2877;
            let x_2879 : vec4<f32> = u_xlat14;
            let x_2881 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2879.z, x_2879.w, x_2879.x, x_2879.z) + vec4<f32>(x_2881.z, x_2881.w, x_2881.x, x_2881.z));
            let x_2885 : f32 = u_xlat16.y;
            u_xlat15.z = x_2885;
            let x_2888 : f32 = u_xlat64.y;
            u_xlat15.w = x_2888;
            let x_2891 : f32 = u_xlat14.y;
            u_xlat17.z = x_2891;
            let x_2894 : f32 = u_xlat13.z;
            u_xlat17.w = x_2894;
            let x_2896 : vec4<f32> = u_xlat15;
            let x_2898 : vec4<f32> = u_xlat17;
            let x_2900 : vec3<f32> = (vec3<f32>(x_2896.z, x_2896.y, x_2896.w) + vec3<f32>(x_2898.z, x_2898.y, x_2898.w));
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2900.x, x_2900.y, x_2900.z, x_2901.w);
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2905 : vec4<f32> = u_xlat18;
            let x_2907 : vec3<f32> = (vec3<f32>(x_2903.x, x_2903.z, x_2903.w) / vec3<f32>(x_2905.z, x_2905.w, x_2905.y));
            let x_2908 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2908.w);
            let x_2910 : vec4<f32> = u_xlat14;
            let x_2912 : vec3<f32> = (vec3<f32>(x_2910.x, x_2910.y, x_2910.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2913 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2912.x, x_2912.y, x_2912.z, x_2913.w);
            let x_2915 : vec4<f32> = u_xlat17;
            let x_2917 : vec4<f32> = u_xlat13;
            let x_2919 : vec3<f32> = (vec3<f32>(x_2915.z, x_2915.y, x_2915.w) / vec3<f32>(x_2917.x, x_2917.y, x_2917.z));
            let x_2920 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2920.w);
            let x_2922 : vec4<f32> = u_xlat15;
            let x_2924 : vec3<f32> = (vec3<f32>(x_2922.x, x_2922.y, x_2922.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2925 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2925.w);
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2930 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2932 : vec3<f32> = (vec3<f32>(x_2927.y, x_2927.x, x_2927.z) * vec3<f32>(x_2930.x, x_2930.x, x_2930.x));
            let x_2933 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2933.w);
            let x_2935 : vec4<f32> = u_xlat15;
            let x_2938 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2940 : vec3<f32> = (vec3<f32>(x_2935.x, x_2935.y, x_2935.z) * vec3<f32>(x_2938.y, x_2938.y, x_2938.y));
            let x_2941 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2941.w);
            let x_2944 : f32 = u_xlat15.x;
            u_xlat14.w = x_2944;
            let x_2946 : vec4<f32> = u_xlat12;
            let x_2949 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y) * vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y)) + vec4<f32>(x_2952.y, x_2952.w, x_2952.x, x_2952.w));
            let x_2955 : vec4<f32> = u_xlat12;
            let x_2958 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2955.x, x_2955.y) * vec2<f32>(x_2958.x, x_2958.y)) + vec2<f32>(x_2961.z, x_2961.w));
            let x_2965 : f32 = u_xlat14.y;
            u_xlat15.w = x_2965;
            let x_2967 : vec4<f32> = u_xlat15;
            let x_2968 : vec2<f32> = vec2<f32>(x_2967.y, x_2967.z);
            let x_2969 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2969.x, x_2968.x, x_2969.z, x_2968.y);
            let x_2971 : vec4<f32> = u_xlat12;
            let x_2974 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2971.x, x_2971.y, x_2971.x, x_2971.y) * vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y)) + vec4<f32>(x_2977.x, x_2977.y, x_2977.z, x_2977.y));
            let x_2980 : vec4<f32> = u_xlat12;
            let x_2983 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.y) * vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y)) + vec4<f32>(x_2986.w, x_2986.y, x_2986.w, x_2986.z));
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2992 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2995 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2989.x, x_2989.y, x_2989.x, x_2989.y) * vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y)) + vec4<f32>(x_2995.x, x_2995.w, x_2995.z, x_2995.w));
            let x_2998 : vec4<f32> = u_xlat13;
            let x_3000 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2998.x, x_2998.x, x_2998.x, x_2998.y) * vec4<f32>(x_3000.z, x_3000.w, x_3000.y, x_3000.z));
            let x_3004 : vec4<f32> = u_xlat13;
            let x_3006 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3004.y, x_3004.y, x_3004.z, x_3004.z) * x_3006);
            let x_3009 : f32 = u_xlat13.z;
            let x_3011 : f32 = u_xlat18.y;
            u_xlat85 = (x_3009 * x_3011);
            let x_3014 : vec4<f32> = u_xlat16;
            let x_3015 : vec2<f32> = vec2<f32>(x_3014.x, x_3014.y);
            let x_3017 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
            let x_3024 : vec3<f32> = txVec34;
            let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
            u_xlat87 = x_3026;
            let x_3028 : vec4<f32> = u_xlat16;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.z, x_3028.w);
            let x_3031 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3039 : vec3<f32> = txVec35;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat88 = x_3041;
            let x_3042 : f32 = u_xlat88;
            let x_3044 : f32 = u_xlat19.y;
            u_xlat88 = (x_3042 * x_3044);
            let x_3047 : f32 = u_xlat19.x;
            let x_3048 : f32 = u_xlat87;
            let x_3050 : f32 = u_xlat88;
            u_xlat87 = ((x_3047 * x_3048) + x_3050);
            let x_3053 : vec2<f32> = u_xlat64;
            let x_3055 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3062 : vec3<f32> = txVec36;
            let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
            u_xlat88 = x_3064;
            let x_3066 : f32 = u_xlat19.z;
            let x_3067 : f32 = u_xlat88;
            let x_3069 : f32 = u_xlat87;
            u_xlat87 = ((x_3066 * x_3067) + x_3069);
            let x_3072 : vec4<f32> = u_xlat15;
            let x_3073 : vec2<f32> = vec2<f32>(x_3072.x, x_3072.y);
            let x_3075 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
            let x_3082 : vec3<f32> = txVec37;
            let x_3084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
            u_xlat88 = x_3084;
            let x_3086 : f32 = u_xlat19.w;
            let x_3087 : f32 = u_xlat88;
            let x_3089 : f32 = u_xlat87;
            u_xlat87 = ((x_3086 * x_3087) + x_3089);
            let x_3092 : vec4<f32> = u_xlat17;
            let x_3093 : vec2<f32> = vec2<f32>(x_3092.x, x_3092.y);
            let x_3095 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
            let x_3102 : vec3<f32> = txVec38;
            let x_3104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
            u_xlat88 = x_3104;
            let x_3106 : f32 = u_xlat20.x;
            let x_3107 : f32 = u_xlat88;
            let x_3109 : f32 = u_xlat87;
            u_xlat87 = ((x_3106 * x_3107) + x_3109);
            let x_3112 : vec4<f32> = u_xlat17;
            let x_3113 : vec2<f32> = vec2<f32>(x_3112.z, x_3112.w);
            let x_3115 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
            let x_3122 : vec3<f32> = txVec39;
            let x_3124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
            u_xlat88 = x_3124;
            let x_3126 : f32 = u_xlat20.y;
            let x_3127 : f32 = u_xlat88;
            let x_3129 : f32 = u_xlat87;
            u_xlat87 = ((x_3126 * x_3127) + x_3129);
            let x_3132 : vec4<f32> = u_xlat15;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.z, x_3132.w);
            let x_3135 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec40;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat88 = x_3144;
            let x_3146 : f32 = u_xlat20.z;
            let x_3147 : f32 = u_xlat88;
            let x_3149 : f32 = u_xlat87;
            u_xlat87 = ((x_3146 * x_3147) + x_3149);
            let x_3152 : vec4<f32> = u_xlat14;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
            let x_3155 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec41;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat88 = x_3164;
            let x_3166 : f32 = u_xlat20.w;
            let x_3167 : f32 = u_xlat88;
            let x_3169 : f32 = u_xlat87;
            u_xlat87 = ((x_3166 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat14;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.z, x_3172.w);
            let x_3175 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec42;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat88 = x_3184;
            let x_3185 : f32 = u_xlat85;
            let x_3186 : f32 = u_xlat88;
            let x_3188 : f32 = u_xlat87;
            u_xlat59 = ((x_3185 * x_3186) + x_3188);
          } else {
            let x_3191 : vec4<f32> = u_xlat11;
            let x_3194 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3197 : vec2<f32> = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3194.z, x_3194.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3198 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3197.x, x_3197.y, x_3198.z, x_3198.w);
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3202 : vec2<f32> = floor(vec2<f32>(x_3200.x, x_3200.y));
            let x_3203 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3202.x, x_3202.y, x_3203.z, x_3203.w);
            let x_3205 : vec4<f32> = u_xlat11;
            let x_3208 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3211 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3205.x, x_3205.y) * vec2<f32>(x_3208.z, x_3208.w)) + -(vec2<f32>(x_3211.x, x_3211.y)));
            let x_3215 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3215.x, x_3215.x, x_3215.y, x_3215.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3218 : vec4<f32> = u_xlat13;
            let x_3220 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3218.x, x_3218.x, x_3218.z, x_3218.z) * vec4<f32>(x_3220.x, x_3220.x, x_3220.z, x_3220.z));
            let x_3223 : vec4<f32> = u_xlat14;
            let x_3225 : vec2<f32> = (vec2<f32>(x_3223.y, x_3223.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3226 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3226.x, x_3225.x, x_3226.z, x_3225.y);
            let x_3228 : vec4<f32> = u_xlat14;
            let x_3231 : vec2<f32> = u_xlat64;
            let x_3233 : vec2<f32> = ((vec2<f32>(x_3228.x, x_3228.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3231));
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3233.x, x_3234.y, x_3233.y, x_3234.w);
            let x_3236 : vec2<f32> = u_xlat64;
            let x_3238 : vec2<f32> = (-(x_3236) + vec2<f32>(1.0f, 1.0f));
            let x_3239 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3241 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3241, vec2<f32>(0.0f, 0.0f));
            let x_3243 : vec2<f32> = u_xlat66;
            let x_3245 : vec2<f32> = u_xlat66;
            let x_3247 : vec4<f32> = u_xlat14;
            let x_3249 : vec2<f32> = ((-(x_3243) * x_3245) + vec2<f32>(x_3247.x, x_3247.y));
            let x_3250 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3249.x, x_3249.y, x_3250.z, x_3250.w);
            let x_3252 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3252, vec2<f32>(0.0f, 0.0f));
            let x_3255 : vec2<f32> = u_xlat66;
            let x_3257 : vec2<f32> = u_xlat66;
            let x_3259 : vec4<f32> = u_xlat13;
            let x_3261 : vec2<f32> = ((-(x_3255) * x_3257) + vec2<f32>(x_3259.y, x_3259.w));
            let x_3262 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3261.x, x_3262.y, x_3261.y);
            let x_3264 : vec4<f32> = u_xlat14;
            let x_3266 : vec2<f32> = (vec2<f32>(x_3264.x, x_3264.y) + vec2<f32>(2.0f, 2.0f));
            let x_3267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3266.x, x_3266.y, x_3267.z, x_3267.w);
            let x_3269 : vec3<f32> = u_xlat39;
            let x_3271 : vec2<f32> = (vec2<f32>(x_3269.x, x_3269.z) + vec2<f32>(2.0f, 2.0f));
            let x_3272 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3272.x, x_3271.x, x_3272.z, x_3271.y);
            let x_3275 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3275 * 0.08163200318813323975f);
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3280 : vec3<f32> = (vec3<f32>(x_3278.z, x_3278.x, x_3278.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3281 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
            let x_3283 : vec4<f32> = u_xlat14;
            let x_3285 : vec2<f32> = (vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3286 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3285.x, x_3285.y, x_3286.z, x_3286.w);
            let x_3289 : f32 = u_xlat17.y;
            u_xlat16.x = x_3289;
            let x_3291 : vec2<f32> = u_xlat64;
            let x_3294 : vec2<f32> = ((vec2<f32>(x_3291.x, x_3291.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3295 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3295.x, x_3294.x, x_3295.z, x_3294.y);
            let x_3297 : vec2<f32> = u_xlat64;
            let x_3300 : vec2<f32> = ((vec2<f32>(x_3297.x, x_3297.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3301 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3300.x, x_3301.y, x_3300.y, x_3301.w);
            let x_3304 : f32 = u_xlat13.x;
            u_xlat14.y = x_3304;
            let x_3307 : f32 = u_xlat15.y;
            u_xlat14.w = x_3307;
            let x_3309 : vec4<f32> = u_xlat14;
            let x_3310 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3309 + x_3310);
            let x_3312 : vec2<f32> = u_xlat64;
            let x_3315 : vec2<f32> = ((vec2<f32>(x_3312.y, x_3312.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3316 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3316.x, x_3315.x, x_3316.z, x_3315.y);
            let x_3318 : vec2<f32> = u_xlat64;
            let x_3321 : vec2<f32> = ((vec2<f32>(x_3318.y, x_3318.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3322 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3321.x, x_3322.y, x_3321.y, x_3322.w);
            let x_3325 : f32 = u_xlat13.y;
            u_xlat15.y = x_3325;
            let x_3327 : vec4<f32> = u_xlat15;
            let x_3328 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3327 + x_3328);
            let x_3330 : vec4<f32> = u_xlat14;
            let x_3331 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3330 / x_3331);
            let x_3333 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3333 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3335 : vec4<f32> = u_xlat15;
            let x_3336 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3335 / x_3336);
            let x_3338 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3338 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3340 : vec4<f32> = u_xlat14;
            let x_3343 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3340.w, x_3340.x, x_3340.y, x_3340.z) * vec4<f32>(x_3343.x, x_3343.x, x_3343.x, x_3343.x));
            let x_3346 : vec4<f32> = u_xlat15;
            let x_3349 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3346.x, x_3346.w, x_3346.y, x_3346.z) * vec4<f32>(x_3349.y, x_3349.y, x_3349.y, x_3349.y));
            let x_3352 : vec4<f32> = u_xlat14;
            let x_3353 : vec3<f32> = vec3<f32>(x_3352.y, x_3352.z, x_3352.w);
            let x_3354 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3353.x, x_3354.y, x_3353.y, x_3353.z);
            let x_3357 : f32 = u_xlat15.x;
            u_xlat17.y = x_3357;
            let x_3359 : vec4<f32> = u_xlat12;
            let x_3362 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3365 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3359.x, x_3359.y, x_3359.x, x_3359.y) * vec4<f32>(x_3362.x, x_3362.y, x_3362.x, x_3362.y)) + vec4<f32>(x_3365.x, x_3365.y, x_3365.z, x_3365.y));
            let x_3368 : vec4<f32> = u_xlat12;
            let x_3371 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3374 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3368.x, x_3368.y) * vec2<f32>(x_3371.x, x_3371.y)) + vec2<f32>(x_3374.w, x_3374.y));
            let x_3378 : f32 = u_xlat17.y;
            u_xlat14.y = x_3378;
            let x_3381 : f32 = u_xlat15.z;
            u_xlat17.y = x_3381;
            let x_3383 : vec4<f32> = u_xlat12;
            let x_3386 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3389 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3383.x, x_3383.y, x_3383.x, x_3383.y) * vec4<f32>(x_3386.x, x_3386.y, x_3386.x, x_3386.y)) + vec4<f32>(x_3389.x, x_3389.y, x_3389.z, x_3389.y));
            let x_3392 : vec4<f32> = u_xlat12;
            let x_3395 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3398 : vec4<f32> = u_xlat17;
            let x_3400 : vec2<f32> = ((vec2<f32>(x_3392.x, x_3392.y) * vec2<f32>(x_3395.x, x_3395.y)) + vec2<f32>(x_3398.w, x_3398.y));
            let x_3401 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3400.x, x_3400.y, x_3401.z, x_3401.w);
            let x_3404 : f32 = u_xlat17.y;
            u_xlat14.z = x_3404;
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3410 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y) * vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y)) + vec4<f32>(x_3413.x, x_3413.y, x_3413.x, x_3413.z));
            let x_3417 : f32 = u_xlat15.w;
            u_xlat17.y = x_3417;
            let x_3420 : vec4<f32> = u_xlat12;
            let x_3423 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3426 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3420.x, x_3420.y, x_3420.x, x_3420.y) * vec4<f32>(x_3423.x, x_3423.y, x_3423.x, x_3423.y)) + vec4<f32>(x_3426.x, x_3426.y, x_3426.z, x_3426.y));
            let x_3430 : vec4<f32> = u_xlat12;
            let x_3433 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3436 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3430.x, x_3430.y) * vec2<f32>(x_3433.x, x_3433.y)) + vec2<f32>(x_3436.w, x_3436.y));
            let x_3440 : f32 = u_xlat17.y;
            u_xlat14.w = x_3440;
            let x_3443 : vec4<f32> = u_xlat12;
            let x_3446 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3449 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3443.x, x_3443.y) * vec2<f32>(x_3446.x, x_3446.y)) + vec2<f32>(x_3449.x, x_3449.w));
            let x_3452 : vec4<f32> = u_xlat17;
            let x_3453 : vec3<f32> = vec3<f32>(x_3452.x, x_3452.z, x_3452.w);
            let x_3454 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3453.x, x_3454.y, x_3453.y, x_3453.z);
            let x_3456 : vec4<f32> = u_xlat12;
            let x_3459 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3462 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3456.x, x_3456.y, x_3456.x, x_3456.y) * vec4<f32>(x_3459.x, x_3459.y, x_3459.x, x_3459.y)) + vec4<f32>(x_3462.x, x_3462.y, x_3462.z, x_3462.y));
            let x_3466 : vec4<f32> = u_xlat12;
            let x_3469 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3472 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3466.x, x_3466.y) * vec2<f32>(x_3469.x, x_3469.y)) + vec2<f32>(x_3472.w, x_3472.y));
            let x_3476 : f32 = u_xlat14.x;
            u_xlat15.x = x_3476;
            let x_3478 : vec4<f32> = u_xlat12;
            let x_3481 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3484 : vec4<f32> = u_xlat15;
            let x_3486 : vec2<f32> = ((vec2<f32>(x_3478.x, x_3478.y) * vec2<f32>(x_3481.x, x_3481.y)) + vec2<f32>(x_3484.x, x_3484.y));
            let x_3487 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3486.x, x_3486.y, x_3487.z, x_3487.w);
            let x_3490 : vec4<f32> = u_xlat13;
            let x_3492 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3490.x, x_3490.x, x_3490.x, x_3490.x) * x_3492);
            let x_3495 : vec4<f32> = u_xlat13;
            let x_3497 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3495.y, x_3495.y, x_3495.y, x_3495.y) * x_3497);
            let x_3500 : vec4<f32> = u_xlat13;
            let x_3502 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3500.z, x_3500.z, x_3500.z, x_3500.z) * x_3502);
            let x_3504 : vec4<f32> = u_xlat13;
            let x_3506 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3504.w, x_3504.w, x_3504.w, x_3504.w) * x_3506);
            let x_3509 : vec4<f32> = u_xlat18;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec43;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat85 = x_3521;
            let x_3523 : vec4<f32> = u_xlat18;
            let x_3524 : vec2<f32> = vec2<f32>(x_3523.z, x_3523.w);
            let x_3526 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3524.x, x_3524.y, x_3526);
            let x_3533 : vec3<f32> = txVec44;
            let x_3535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3533.xy, x_3533.z);
            u_xlat87 = x_3535;
            let x_3536 : f32 = u_xlat87;
            let x_3538 : f32 = u_xlat23.y;
            u_xlat87 = (x_3536 * x_3538);
            let x_3541 : f32 = u_xlat23.x;
            let x_3542 : f32 = u_xlat85;
            let x_3544 : f32 = u_xlat87;
            u_xlat85 = ((x_3541 * x_3542) + x_3544);
            let x_3547 : vec2<f32> = u_xlat64;
            let x_3549 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec45;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat87 = x_3558;
            let x_3560 : f32 = u_xlat23.z;
            let x_3561 : f32 = u_xlat87;
            let x_3563 : f32 = u_xlat85;
            u_xlat85 = ((x_3560 * x_3561) + x_3563);
            let x_3566 : vec4<f32> = u_xlat21;
            let x_3567 : vec2<f32> = vec2<f32>(x_3566.x, x_3566.y);
            let x_3569 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec46;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat87 = x_3578;
            let x_3580 : f32 = u_xlat23.w;
            let x_3581 : f32 = u_xlat87;
            let x_3583 : f32 = u_xlat85;
            u_xlat85 = ((x_3580 * x_3581) + x_3583);
            let x_3586 : vec4<f32> = u_xlat19;
            let x_3587 : vec2<f32> = vec2<f32>(x_3586.x, x_3586.y);
            let x_3589 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3587.x, x_3587.y, x_3589);
            let x_3596 : vec3<f32> = txVec47;
            let x_3598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3596.xy, x_3596.z);
            u_xlat87 = x_3598;
            let x_3600 : f32 = u_xlat24.x;
            let x_3601 : f32 = u_xlat87;
            let x_3603 : f32 = u_xlat85;
            u_xlat85 = ((x_3600 * x_3601) + x_3603);
            let x_3606 : vec4<f32> = u_xlat19;
            let x_3607 : vec2<f32> = vec2<f32>(x_3606.z, x_3606.w);
            let x_3609 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3607.x, x_3607.y, x_3609);
            let x_3616 : vec3<f32> = txVec48;
            let x_3618 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3616.xy, x_3616.z);
            u_xlat87 = x_3618;
            let x_3620 : f32 = u_xlat24.y;
            let x_3621 : f32 = u_xlat87;
            let x_3623 : f32 = u_xlat85;
            u_xlat85 = ((x_3620 * x_3621) + x_3623);
            let x_3626 : vec4<f32> = u_xlat20;
            let x_3627 : vec2<f32> = vec2<f32>(x_3626.x, x_3626.y);
            let x_3629 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3627.x, x_3627.y, x_3629);
            let x_3636 : vec3<f32> = txVec49;
            let x_3638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3636.xy, x_3636.z);
            u_xlat87 = x_3638;
            let x_3640 : f32 = u_xlat24.z;
            let x_3641 : f32 = u_xlat87;
            let x_3643 : f32 = u_xlat85;
            u_xlat85 = ((x_3640 * x_3641) + x_3643);
            let x_3646 : vec4<f32> = u_xlat21;
            let x_3647 : vec2<f32> = vec2<f32>(x_3646.z, x_3646.w);
            let x_3649 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
            let x_3656 : vec3<f32> = txVec50;
            let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
            u_xlat87 = x_3658;
            let x_3660 : f32 = u_xlat24.w;
            let x_3661 : f32 = u_xlat87;
            let x_3663 : f32 = u_xlat85;
            u_xlat85 = ((x_3660 * x_3661) + x_3663);
            let x_3666 : vec4<f32> = u_xlat22;
            let x_3667 : vec2<f32> = vec2<f32>(x_3666.x, x_3666.y);
            let x_3669 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3667.x, x_3667.y, x_3669);
            let x_3676 : vec3<f32> = txVec51;
            let x_3678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3676.xy, x_3676.z);
            u_xlat87 = x_3678;
            let x_3680 : f32 = u_xlat25.x;
            let x_3681 : f32 = u_xlat87;
            let x_3683 : f32 = u_xlat85;
            u_xlat85 = ((x_3680 * x_3681) + x_3683);
            let x_3686 : vec4<f32> = u_xlat22;
            let x_3687 : vec2<f32> = vec2<f32>(x_3686.z, x_3686.w);
            let x_3689 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec52;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat87 = x_3698;
            let x_3700 : f32 = u_xlat25.y;
            let x_3701 : f32 = u_xlat87;
            let x_3703 : f32 = u_xlat85;
            u_xlat85 = ((x_3700 * x_3701) + x_3703);
            let x_3706 : vec2<f32> = u_xlat40;
            let x_3708 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3706.x, x_3706.y, x_3708);
            let x_3715 : vec3<f32> = txVec53;
            let x_3717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3715.xy, x_3715.z);
            u_xlat87 = x_3717;
            let x_3719 : f32 = u_xlat25.z;
            let x_3720 : f32 = u_xlat87;
            let x_3722 : f32 = u_xlat85;
            u_xlat85 = ((x_3719 * x_3720) + x_3722);
            let x_3725 : vec2<f32> = u_xlat72;
            let x_3727 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec54;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat87 = x_3736;
            let x_3738 : f32 = u_xlat25.w;
            let x_3739 : f32 = u_xlat87;
            let x_3741 : f32 = u_xlat85;
            u_xlat85 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat17;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.x, x_3744.y);
            let x_3747 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec55;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat87 = x_3756;
            let x_3758 : f32 = u_xlat13.x;
            let x_3759 : f32 = u_xlat87;
            let x_3761 : f32 = u_xlat85;
            u_xlat85 = ((x_3758 * x_3759) + x_3761);
            let x_3764 : vec4<f32> = u_xlat17;
            let x_3765 : vec2<f32> = vec2<f32>(x_3764.z, x_3764.w);
            let x_3767 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec56;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat87 = x_3776;
            let x_3778 : f32 = u_xlat13.y;
            let x_3779 : f32 = u_xlat87;
            let x_3781 : f32 = u_xlat85;
            u_xlat85 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec2<f32> = u_xlat67;
            let x_3786 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3784.x, x_3784.y, x_3786);
            let x_3793 : vec3<f32> = txVec57;
            let x_3795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3793.xy, x_3793.z);
            u_xlat87 = x_3795;
            let x_3797 : f32 = u_xlat13.z;
            let x_3798 : f32 = u_xlat87;
            let x_3800 : f32 = u_xlat85;
            u_xlat85 = ((x_3797 * x_3798) + x_3800);
            let x_3803 : vec4<f32> = u_xlat12;
            let x_3804 : vec2<f32> = vec2<f32>(x_3803.x, x_3803.y);
            let x_3806 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3804.x, x_3804.y, x_3806);
            let x_3813 : vec3<f32> = txVec58;
            let x_3815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3813.xy, x_3813.z);
            u_xlat87 = x_3815;
            let x_3817 : f32 = u_xlat13.w;
            let x_3818 : f32 = u_xlat87;
            let x_3820 : f32 = u_xlat85;
            u_xlat59 = ((x_3817 * x_3818) + x_3820);
          }
        }
      } else {
        let x_3824 : vec4<f32> = u_xlat11;
        let x_3825 : vec2<f32> = vec2<f32>(x_3824.x, x_3824.y);
        let x_3827 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3825.x, x_3825.y, x_3827);
        let x_3834 : vec3<f32> = txVec59;
        let x_3836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3834.xy, x_3834.z);
        u_xlat59 = x_3836;
      }
      let x_3837 : i32 = u_xlati82;
      let x_3839 : f32 = x_665.x_AdditionalShadowParams[x_3837].x;
      u_xlat85 = (1.0f + -(x_3839));
      let x_3842 : f32 = u_xlat59;
      let x_3843 : i32 = u_xlati82;
      let x_3845 : f32 = x_665.x_AdditionalShadowParams[x_3843].x;
      let x_3847 : f32 = u_xlat85;
      u_xlat59 = ((x_3842 * x_3845) + x_3847);
      let x_3850 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3850);
      let x_3854 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3854 >= 1.0f);
      let x_3856 : bool = u_xlatb85;
      let x_3857 : bool = u_xlatb87;
      u_xlatb85 = (x_3856 | x_3857);
      let x_3859 : bool = u_xlatb85;
      let x_3860 : f32 = u_xlat59;
      u_xlat59 = select(x_3860, 1.0f, x_3859);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3863 : f32 = u_xlat59;
    u_xlat85 = (-(x_3863) + 1.0f);
    let x_3867 : f32 = u_xlat2.x;
    let x_3868 : f32 = u_xlat85;
    let x_3870 : f32 = u_xlat59;
    u_xlat59 = ((x_3867 * x_3868) + x_3870);
    let x_3873 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3873 & 31i)));
    let x_3877 : i32 = u_xlati85;
    let x_3880 : f32 = x_1986.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3877) & bitcast<u32>(x_3880)));
    let x_3884 : i32 = u_xlati85;
    if ((x_3884 != 0i)) {
      let x_3888 : i32 = u_xlati82;
      let x_3890 : f32 = x_1986.x_AdditionalLightsLightTypes[x_3888].el;
      u_xlati85 = i32(x_3890);
      let x_3893 : i32 = u_xlati85;
      u_xlati87 = select(1i, 0i, (x_3893 != 0i));
      let x_3897 : i32 = u_xlati82;
      u_xlati88 = (x_3897 << bitcast<u32>(2i));
      let x_3899 : i32 = u_xlati87;
      if ((x_3899 != 0i)) {
        let x_3903 : vec3<f32> = vs_INTERP7;
        let x_3905 : i32 = u_xlati88;
        let x_3908 : i32 = u_xlati88;
        let x_3912 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_3905 + 1i) / 4i)][((x_3908 + 1i) % 4i)];
        let x_3914 : vec3<f32> = (vec3<f32>(x_3903.y, x_3903.y, x_3903.y) * vec3<f32>(x_3912.x, x_3912.y, x_3912.w));
        let x_3915 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3914.x, x_3914.y, x_3914.z, x_3915.w);
        let x_3917 : i32 = u_xlati88;
        let x_3919 : i32 = u_xlati88;
        let x_3922 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[(x_3917 / 4i)][(x_3919 % 4i)];
        let x_3924 : vec3<f32> = vs_INTERP7;
        let x_3927 : vec4<f32> = u_xlat11;
        let x_3929 : vec3<f32> = ((vec3<f32>(x_3922.x, x_3922.y, x_3922.w) * vec3<f32>(x_3924.x, x_3924.x, x_3924.x)) + vec3<f32>(x_3927.x, x_3927.y, x_3927.z));
        let x_3930 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3929.x, x_3929.y, x_3929.z, x_3930.w);
        let x_3932 : i32 = u_xlati88;
        let x_3935 : i32 = u_xlati88;
        let x_3939 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_3932 + 2i) / 4i)][((x_3935 + 2i) % 4i)];
        let x_3941 : vec3<f32> = vs_INTERP7;
        let x_3944 : vec4<f32> = u_xlat11;
        let x_3946 : vec3<f32> = ((vec3<f32>(x_3939.x, x_3939.y, x_3939.w) * vec3<f32>(x_3941.z, x_3941.z, x_3941.z)) + vec3<f32>(x_3944.x, x_3944.y, x_3944.z));
        let x_3947 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3946.x, x_3946.y, x_3946.z, x_3947.w);
        let x_3949 : vec4<f32> = u_xlat11;
        let x_3951 : i32 = u_xlati88;
        let x_3954 : i32 = u_xlati88;
        let x_3958 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_3951 + 3i) / 4i)][((x_3954 + 3i) % 4i)];
        let x_3960 : vec3<f32> = (vec3<f32>(x_3949.x, x_3949.y, x_3949.z) + vec3<f32>(x_3958.x, x_3958.y, x_3958.w));
        let x_3961 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3960.x, x_3960.y, x_3960.z, x_3961.w);
        let x_3963 : vec4<f32> = u_xlat11;
        let x_3965 : vec4<f32> = u_xlat11;
        let x_3967 : vec2<f32> = (vec2<f32>(x_3963.x, x_3963.y) / vec2<f32>(x_3965.z, x_3965.z));
        let x_3968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3967.x, x_3967.y, x_3968.z, x_3968.w);
        let x_3970 : vec4<f32> = u_xlat11;
        let x_3973 : vec2<f32> = ((vec2<f32>(x_3970.x, x_3970.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3973.x, x_3973.y, x_3974.z, x_3974.w);
        let x_3976 : vec4<f32> = u_xlat11;
        let x_3980 : vec2<f32> = clamp(vec2<f32>(x_3976.x, x_3976.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3981 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3980.x, x_3980.y, x_3981.z, x_3981.w);
        let x_3983 : i32 = u_xlati82;
        let x_3985 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_3983];
        let x_3987 : vec4<f32> = u_xlat11;
        let x_3990 : i32 = u_xlati82;
        let x_3992 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_3990];
        let x_3994 : vec2<f32> = ((vec2<f32>(x_3985.x, x_3985.y) * vec2<f32>(x_3987.x, x_3987.y)) + vec2<f32>(x_3992.z, x_3992.w));
        let x_3995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3994.x, x_3994.y, x_3995.z, x_3995.w);
      } else {
        let x_3998 : i32 = u_xlati85;
        u_xlatb85 = (x_3998 == 1i);
        let x_4000 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4000);
        let x_4002 : i32 = u_xlati85;
        if ((x_4002 != 0i)) {
          let x_4007 : vec3<f32> = vs_INTERP7;
          let x_4009 : i32 = u_xlati88;
          let x_4012 : i32 = u_xlati88;
          let x_4016 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4009 + 1i) / 4i)][((x_4012 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4007.y, x_4007.y) * vec2<f32>(x_4016.x, x_4016.y));
          let x_4019 : i32 = u_xlati88;
          let x_4021 : i32 = u_xlati88;
          let x_4024 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[(x_4019 / 4i)][(x_4021 % 4i)];
          let x_4026 : vec3<f32> = vs_INTERP7;
          let x_4029 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4024.x, x_4024.y) * vec2<f32>(x_4026.x, x_4026.x)) + x_4029);
          let x_4031 : i32 = u_xlati88;
          let x_4034 : i32 = u_xlati88;
          let x_4038 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4031 + 2i) / 4i)][((x_4034 + 2i) % 4i)];
          let x_4040 : vec3<f32> = vs_INTERP7;
          let x_4043 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4038.x, x_4038.y) * vec2<f32>(x_4040.z, x_4040.z)) + x_4043);
          let x_4045 : vec2<f32> = u_xlat63;
          let x_4046 : i32 = u_xlati88;
          let x_4049 : i32 = u_xlati88;
          let x_4053 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4046 + 3i) / 4i)][((x_4049 + 3i) % 4i)];
          u_xlat63 = (x_4045 + vec2<f32>(x_4053.x, x_4053.y));
          let x_4056 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4056 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4059 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4059);
          let x_4061 : i32 = u_xlati82;
          let x_4063 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_4061];
          let x_4065 : vec2<f32> = u_xlat63;
          let x_4067 : i32 = u_xlati82;
          let x_4069 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_4067];
          let x_4071 : vec2<f32> = ((vec2<f32>(x_4063.x, x_4063.y) * x_4065) + vec2<f32>(x_4069.z, x_4069.w));
          let x_4072 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4071.x, x_4071.y, x_4072.z, x_4072.w);
        } else {
          let x_4075 : vec3<f32> = vs_INTERP7;
          let x_4077 : i32 = u_xlati88;
          let x_4080 : i32 = u_xlati88;
          let x_4084 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4077 + 1i) / 4i)][((x_4080 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4075.y, x_4075.y, x_4075.y, x_4075.y) * x_4084);
          let x_4086 : i32 = u_xlati88;
          let x_4088 : i32 = u_xlati88;
          let x_4091 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[(x_4086 / 4i)][(x_4088 % 4i)];
          let x_4092 : vec3<f32> = vs_INTERP7;
          let x_4095 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4091 * vec4<f32>(x_4092.x, x_4092.x, x_4092.x, x_4092.x)) + x_4095);
          let x_4097 : i32 = u_xlati88;
          let x_4100 : i32 = u_xlati88;
          let x_4104 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4097 + 2i) / 4i)][((x_4100 + 2i) % 4i)];
          let x_4105 : vec3<f32> = vs_INTERP7;
          let x_4108 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4104 * vec4<f32>(x_4105.z, x_4105.z, x_4105.z, x_4105.z)) + x_4108);
          let x_4110 : vec4<f32> = u_xlat12;
          let x_4111 : i32 = u_xlati88;
          let x_4114 : i32 = u_xlati88;
          let x_4118 : vec4<f32> = x_1986.x_AdditionalLightsWorldToLights[((x_4111 + 3i) / 4i)][((x_4114 + 3i) % 4i)];
          u_xlat12 = (x_4110 + x_4118);
          let x_4120 : vec4<f32> = u_xlat12;
          let x_4122 : vec4<f32> = u_xlat12;
          let x_4124 : vec3<f32> = (vec3<f32>(x_4120.x, x_4120.y, x_4120.z) / vec3<f32>(x_4122.w, x_4122.w, x_4122.w));
          let x_4125 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4124.x, x_4124.y, x_4124.z, x_4125.w);
          let x_4127 : vec4<f32> = u_xlat12;
          let x_4129 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4127.x, x_4127.y, x_4127.z), vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
          let x_4132 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4132);
          let x_4134 : f32 = u_xlat85;
          let x_4136 : vec4<f32> = u_xlat12;
          let x_4138 : vec3<f32> = (vec3<f32>(x_4134, x_4134, x_4134) * vec3<f32>(x_4136.x, x_4136.y, x_4136.z));
          let x_4139 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4138.x, x_4138.y, x_4138.z, x_4139.w);
          let x_4141 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4141.x, x_4141.y, x_4141.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4145 : f32 = u_xlat85;
          u_xlat85 = max(x_4145, 0.00000099999999747524f);
          let x_4148 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4148);
          let x_4150 : f32 = u_xlat85;
          let x_4152 : vec4<f32> = u_xlat12;
          let x_4154 : vec3<f32> = (vec3<f32>(x_4150, x_4150, x_4150) * vec3<f32>(x_4152.z, x_4152.x, x_4152.y));
          let x_4155 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4154.x, x_4154.y, x_4154.z, x_4155.w);
          let x_4158 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4158);
          let x_4162 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4162, 0.0f, 1.0f);
          let x_4166 : vec4<f32> = u_xlat13;
          let x_4168 : vec4<bool> = (vec4<f32>(x_4166.y, x_4166.z, x_4166.y, x_4166.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4168.x, x_4168.y);
          let x_4171 : bool = u_xlatb63.x;
          if (x_4171) {
            let x_4176 : f32 = u_xlat13.x;
            x_4172 = x_4176;
          } else {
            let x_4179 : f32 = u_xlat13.x;
            x_4172 = -(x_4179);
          }
          let x_4181 : f32 = x_4172;
          u_xlat63.x = x_4181;
          let x_4184 : bool = u_xlatb63.y;
          if (x_4184) {
            let x_4189 : f32 = u_xlat13.x;
            x_4185 = x_4189;
          } else {
            let x_4192 : f32 = u_xlat13.x;
            x_4185 = -(x_4192);
          }
          let x_4194 : f32 = x_4185;
          u_xlat63.y = x_4194;
          let x_4196 : vec4<f32> = u_xlat12;
          let x_4198 : f32 = u_xlat85;
          let x_4201 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4196.x, x_4196.y) * vec2<f32>(x_4198, x_4198)) + x_4201);
          let x_4203 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4203 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4206 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4206, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4210 : i32 = u_xlati82;
          let x_4212 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_4210];
          let x_4214 : vec2<f32> = u_xlat63;
          let x_4216 : i32 = u_xlati82;
          let x_4218 : vec4<f32> = x_1986.x_AdditionalLightsCookieAtlasUVRects[x_4216];
          let x_4220 : vec2<f32> = ((vec2<f32>(x_4212.x, x_4212.y) * x_4214) + vec2<f32>(x_4218.z, x_4218.w));
          let x_4221 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4220.x, x_4220.y, x_4221.z, x_4221.w);
        }
      }
      let x_4228 : vec4<f32> = u_xlat11;
      let x_4230 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4228.x, x_4228.y), 0.0f);
      u_xlat11 = x_4230;
      let x_4232 : bool = u_xlatb7.y;
      if (x_4232) {
        let x_4237 : f32 = u_xlat11.w;
        x_4233 = x_4237;
      } else {
        let x_4240 : f32 = u_xlat11.x;
        x_4233 = x_4240;
      }
      let x_4241 : f32 = x_4233;
      u_xlat85 = x_4241;
      let x_4243 : bool = u_xlatb7.x;
      if (x_4243) {
        let x_4247 : vec4<f32> = u_xlat11;
        x_4244 = vec3<f32>(x_4247.x, x_4247.y, x_4247.z);
      } else {
        let x_4250 : f32 = u_xlat85;
        x_4244 = vec3<f32>(x_4250, x_4250, x_4250);
      }
      let x_4252 : vec3<f32> = x_4244;
      let x_4253 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4252.x, x_4252.y, x_4252.z, x_4253.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4259 : vec4<f32> = u_xlat11;
    let x_4261 : i32 = u_xlati82;
    let x_4263 : vec4<f32> = x_2449.x_AdditionalLightsColor[x_4261];
    let x_4265 : vec3<f32> = (vec3<f32>(x_4259.x, x_4259.y, x_4259.z) * vec3<f32>(x_4263.x, x_4263.y, x_4263.z));
    let x_4266 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4265.x, x_4265.y, x_4265.z, x_4266.w);
    let x_4268 : f32 = u_xlat83;
    let x_4269 : f32 = u_xlat59;
    u_xlat82 = (x_4268 * x_4269);
    let x_4271 : vec4<f32> = u_xlat1;
    let x_4273 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4271.x, x_4271.y, x_4271.z), vec3<f32>(x_4273.x, x_4273.y, x_4273.z));
    let x_4276 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4276, 0.0f, 1.0f);
    let x_4278 : f32 = u_xlat82;
    let x_4279 : f32 = u_xlat83;
    u_xlat82 = (x_4278 * x_4279);
    let x_4281 : f32 = u_xlat82;
    let x_4283 : vec4<f32> = u_xlat11;
    let x_4285 : vec3<f32> = (vec3<f32>(x_4281, x_4281, x_4281) * vec3<f32>(x_4283.x, x_4283.y, x_4283.z));
    let x_4286 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
    let x_4288 : vec4<f32> = u_xlat9;
    let x_4290 : f32 = u_xlat84;
    let x_4293 : vec4<f32> = u_xlat3;
    let x_4295 : vec3<f32> = ((vec3<f32>(x_4288.x, x_4288.y, x_4288.z) * vec3<f32>(x_4290, x_4290, x_4290)) + vec3<f32>(x_4293.x, x_4293.y, x_4293.z));
    let x_4296 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);
    let x_4298 : vec4<f32> = u_xlat9;
    let x_4300 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4298.x, x_4298.y, x_4298.z), vec3<f32>(x_4300.x, x_4300.y, x_4300.z));
    let x_4303 : f32 = u_xlat82;
    u_xlat82 = max(x_4303, 1.17549435e-38f);
    let x_4305 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4305);
    let x_4307 : f32 = u_xlat82;
    let x_4309 : vec4<f32> = u_xlat9;
    let x_4311 : vec3<f32> = (vec3<f32>(x_4307, x_4307, x_4307) * vec3<f32>(x_4309.x, x_4309.y, x_4309.z));
    let x_4312 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4311.x, x_4311.y, x_4311.z, x_4312.w);
    let x_4314 : vec4<f32> = u_xlat1;
    let x_4316 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4314.x, x_4314.y, x_4314.z), vec3<f32>(x_4316.x, x_4316.y, x_4316.z));
    let x_4319 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4319, 0.0f, 1.0f);
    let x_4321 : vec4<f32> = u_xlat10;
    let x_4323 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4321.x, x_4321.y, x_4321.z), vec3<f32>(x_4323.x, x_4323.y, x_4323.z));
    let x_4326 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4326, 0.0f, 1.0f);
    let x_4328 : f32 = u_xlat82;
    let x_4329 : f32 = u_xlat82;
    u_xlat82 = (x_4328 * x_4329);
    let x_4331 : f32 = u_xlat82;
    let x_4333 : f32 = u_xlat8.x;
    u_xlat82 = ((x_4331 * x_4333) + 1.00001001358032226562f);
    let x_4336 : f32 = u_xlat83;
    let x_4337 : f32 = u_xlat83;
    u_xlat83 = (x_4336 * x_4337);
    let x_4339 : f32 = u_xlat82;
    let x_4340 : f32 = u_xlat82;
    u_xlat82 = (x_4339 * x_4340);
    let x_4342 : f32 = u_xlat83;
    u_xlat83 = max(x_4342, 0.10000000149011611938f);
    let x_4344 : f32 = u_xlat82;
    let x_4345 : f32 = u_xlat83;
    u_xlat82 = (x_4344 * x_4345);
    let x_4347 : f32 = u_xlat81;
    let x_4348 : f32 = u_xlat82;
    u_xlat82 = (x_4347 * x_4348);
    let x_4350 : f32 = u_xlat28;
    let x_4351 : f32 = u_xlat82;
    u_xlat82 = (x_4350 / x_4351);
    let x_4353 : vec4<f32> = u_xlat0;
    let x_4355 : f32 = u_xlat82;
    let x_4358 : vec3<f32> = u_xlat5;
    let x_4359 : vec3<f32> = ((vec3<f32>(x_4353.x, x_4353.y, x_4353.z) * vec3<f32>(x_4355, x_4355, x_4355)) + x_4358);
    let x_4360 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4359.x, x_4359.y, x_4359.z, x_4360.w);
    let x_4362 : vec4<f32> = u_xlat9;
    let x_4364 : vec4<f32> = u_xlat11;
    let x_4367 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4362.x, x_4362.y, x_4362.z) * vec3<f32>(x_4364.x, x_4364.y, x_4364.z)) + x_4367);

    continuing {
      let x_4369 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4369 + bitcast<u32>(1i));
    }
  }
  let x_4371 : vec4<f32> = u_xlat4;
  let x_4373 : f32 = u_xlat54;
  let x_4376 : vec4<f32> = u_xlat6;
  let x_4378 : vec3<f32> = ((vec3<f32>(x_4371.x, x_4371.y, x_4371.z) * vec3<f32>(x_4373, x_4373, x_4373)) + vec3<f32>(x_4376.x, x_4376.y, x_4376.z));
  let x_4379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4378.x, x_4378.y, x_4378.z, x_4379.w);
  let x_4381 : vec3<f32> = u_xlat34;
  let x_4382 : vec4<f32> = u_xlat0;
  let x_4384 : vec3<f32> = (x_4381 + vec3<f32>(x_4382.x, x_4382.y, x_4382.z));
  let x_4385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4384.x, x_4384.y, x_4384.z, x_4385.w);
  let x_4387 : f32 = u_xlat78;
  let x_4388 : f32 = u_xlat78;
  u_xlat78 = (x_4387 * -(x_4388));
  let x_4391 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4391);
  let x_4393 : vec4<f32> = u_xlat0;
  let x_4396 : vec4<f32> = x_29.unity_FogColor;
  let x_4399 : vec3<f32> = (vec3<f32>(x_4393.x, x_4393.y, x_4393.z) + -(vec3<f32>(x_4396.x, x_4396.y, x_4396.z)));
  let x_4400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4399.x, x_4399.y, x_4399.z, x_4400.w);
  let x_4404 : f32 = u_xlat78;
  let x_4406 : vec4<f32> = u_xlat0;
  let x_4410 : vec4<f32> = x_29.unity_FogColor;
  let x_4412 : vec3<f32> = ((vec3<f32>(x_4404, x_4404, x_4404) * vec3<f32>(x_4406.x, x_4406.y, x_4406.z)) + vec3<f32>(x_4410.x, x_4410.y, x_4410.z));
  let x_4413 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4412.x, x_4412.y, x_4412.z, x_4413.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


