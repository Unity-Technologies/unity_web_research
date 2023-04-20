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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat26 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat75 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb51 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat51 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat77 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb78 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlati79 : i32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_2404 : AdditionalLights;

var<private> u_xlati81 : i32;

var<private> u_xlatb82 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb81 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
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
  var x_2053 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2534 : f32;
  var x_2544 : f32;
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
  u_xlatb25 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat25;
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
  u_xlatb25 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat50 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb25;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat50;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat25 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat26.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat26.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat50;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat50 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat50;
  u_xlatb75 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat50;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat50;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat26.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat50;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat50 = x_207;
  let x_208 : bool = u_xlatb75;
  if (x_208) {
    let x_213 : f32 = u_xlat26.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat50;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat50 = x_216;
  let x_217 : f32 = u_xlat50;
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
  let x_268 : f32 = u_xlat25;
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
  u_xlat75 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat75;
  u_xlat75 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat75;
  u_xlat75 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat75;
  u_xlat75 = sqrt(x_319);
  let x_321 : f32 = u_xlat75;
  u_xlat75 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb51.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb51.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb51.x;
  u_xlat51.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb51.y;
  u_xlat51.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat51.y;
  let x_367 : f32 = u_xlat51.x;
  u_xlat51.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat51;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat26 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat26;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat75;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat75 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat75;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb75 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat76;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb75;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb75;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb75;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_500 : vec3<f32> = vs_INTERP7;
  let x_511 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres0;
  let x_514 : vec3<f32> = (x_500 + -(vec3<f32>(x_511.x, x_511.y, x_511.z)));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : vec3<f32> = vs_INTERP7;
  let x_520 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres1;
  let x_523 : vec3<f32> = (x_518 + -(vec3<f32>(x_520.x, x_520.y, x_520.z)));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : vec3<f32> = vs_INTERP7;
  let x_529 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_534 : vec3<f32> = vs_INTERP7;
  let x_536 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_539 : vec3<f32> = (x_534 + -(vec3<f32>(x_536.x, x_536.y, x_536.z)));
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : vec4<f32> = u_xlat5;
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = u_xlat6;
  u_xlat3.z = dot(x_554, x_555);
  let x_558 : vec4<f32> = u_xlat7;
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_567 : vec4<f32> = u_xlat3;
  let x_569 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_567 < x_569);
  let x_572 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_572);
  let x_576 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_588);
  let x_593 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_593);
  let x_597 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_597);
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) + vec3<f32>(x_602.y, x_602.z, x_602.w));
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = max(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_611.x, x_610.x, x_610.y, x_610.z);
  let x_613 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_613, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_618 : f32 = u_xlat75;
  u_xlat75 = (-(x_618) + 4.0f);
  let x_623 : f32 = u_xlat75;
  u_xlatu75 = u32(x_623);
  let x_627 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_627) << bitcast<u32>(2i));
  let x_630 : vec3<f32> = vs_INTERP7;
  let x_632 : i32 = u_xlati75;
  let x_635 : i32 = u_xlati75;
  let x_639 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_632 + 1i) / 4i)][((x_635 + 1i) % 4i)];
  let x_641 : vec3<f32> = (vec3<f32>(x_630.y, x_630.y, x_630.y) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : i32 = u_xlati75;
  let x_646 : i32 = u_xlati75;
  let x_649 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_644 / 4i)][(x_646 % 4i)];
  let x_651 : vec3<f32> = vs_INTERP7;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(x_651.x, x_651.x, x_651.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : i32 = u_xlati75;
  let x_662 : i32 = u_xlati75;
  let x_666 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_659 + 2i) / 4i)][((x_662 + 2i) % 4i)];
  let x_668 : vec3<f32> = vs_INTERP7;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668.z, x_668.z, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : i32 = u_xlati75;
  let x_681 : i32 = u_xlati75;
  let x_685 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_678 + 3i) / 4i)][((x_681 + 3i) % 4i)];
  let x_687 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_697 : vec2<f32> = vs_INTERP0;
  let x_699 : f32 = x_29.x_GlobalMipBias.x;
  let x_700 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_697, x_699);
  u_xlat5 = x_700;
  let x_705 : vec2<f32> = vs_INTERP0;
  let x_707 : f32 = x_29.x_GlobalMipBias.x;
  let x_708 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_705, x_707);
  u_xlat6 = vec3<f32>(x_708.x, x_708.y, x_708.z);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat75;
  u_xlat75 = (x_722 + 0.5f);
  let x_725 : f32 = u_xlat75;
  let x_727 : vec3<f32> = u_xlat6;
  let x_728 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat5.w;
  u_xlat75 = max(x_732, 0.00009999999747378752f);
  let x_735 : vec4<f32> = u_xlat5;
  let x_737 : f32 = u_xlat75;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) / vec3<f32>(x_737, x_737, x_737));
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
  let x_744 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat2;
  let x_750 : vec2<f32> = clamp(vec2<f32>(x_746.x, x_746.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_754 : f32 = u_xlat2.x;
  u_xlat75 = ((-(x_754) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_759 : f32 = u_xlat75;
  let x_762 : f32 = u_xlat2.y;
  u_xlat76 = (-(x_759) + x_762);
  let x_764 : f32 = u_xlat75;
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_769.x, x_769.y, x_769.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat2;
  let x_778 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.x, x_776.x) * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_787 : f32 = u_xlat2.y;
  u_xlat75 = (-(x_787) + 1.0f);
  let x_790 : f32 = u_xlat75;
  let x_791 : f32 = u_xlat75;
  u_xlat2.x = (x_790 * x_791);
  let x_795 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_795, 0.0078125f);
  let x_801 : f32 = u_xlat2.x;
  let x_803 : f32 = u_xlat2.x;
  u_xlat27 = (x_801 * x_803);
  let x_805 : f32 = u_xlat76;
  u_xlat76 = (x_805 + 1.0f);
  let x_807 : f32 = u_xlat76;
  u_xlat76 = min(x_807, 1.0f);
  let x_811 : f32 = u_xlat2.x;
  u_xlat77 = ((x_811 * 4.0f) + 2.0f);
  let x_816 : f32 = u_xlat2.z;
  u_xlat52 = min(x_816, 1.0f);
  let x_821 : f32 = x_508.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_821);
  let x_823 : bool = u_xlatb78;
  if (x_823) {
    let x_827 : f32 = x_508.x_MainLightShadowParams.y;
    u_xlatb78 = (x_827 == 1.0f);
    let x_829 : bool = u_xlatb78;
    if (x_829) {
      let x_832 : vec4<f32> = u_xlat3;
      let x_835 : vec4<f32> = x_508.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y) + x_835);
      let x_839 : vec4<f32> = u_xlat7;
      let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
      let x_842 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_840.x, x_840.y, x_842);
      let x_855 : vec3<f32> = txVec0;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat8.x = x_857;
      let x_860 : vec4<f32> = u_xlat7;
      let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
      let x_863 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_861.x, x_861.y, x_863);
      let x_870 : vec3<f32> = txVec1;
      let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
      u_xlat8.y = x_872;
      let x_874 : vec4<f32> = u_xlat3;
      let x_878 : vec4<f32> = x_508.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) + x_878);
      let x_881 : vec4<f32> = u_xlat7;
      let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
      let x_884 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_882.x, x_882.y, x_884);
      let x_891 : vec3<f32> = txVec2;
      let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
      u_xlat8.z = x_893;
      let x_896 : vec4<f32> = u_xlat7;
      let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
      let x_899 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_897.x, x_897.y, x_899);
      let x_906 : vec3<f32> = txVec3;
      let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_906.xy, x_906.z);
      u_xlat8.w = x_908;
      let x_911 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_911, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_918 : f32 = x_508.x_MainLightShadowParams.y;
      u_xlatb79 = (x_918 == 2.0f);
      let x_920 : bool = u_xlatb79;
      if (x_920) {
        let x_923 : vec4<f32> = u_xlat3;
        let x_927 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_931 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_927.z, x_927.w)) + vec2<f32>(0.5f, 0.5f));
        let x_932 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat7;
        let x_936 : vec2<f32> = floor(vec2<f32>(x_934.x, x_934.y));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_940 : vec4<f32> = u_xlat3;
        let x_943 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_943.z, x_943.w)) + -(vec2<f32>(x_946.x, x_946.y)));
        let x_950 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_950.x, x_950.x, x_950.y, x_950.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_955 : vec4<f32> = u_xlat8;
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z) * vec4<f32>(x_957.x, x_957.x, x_957.z, x_957.z));
        let x_960 : vec4<f32> = u_xlat9;
        let x_964 : vec2<f32> = (vec2<f32>(x_960.y, x_960.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_964.x, x_965.y, x_964.y, x_965.w);
        let x_967 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = u_xlat57;
        let x_972 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.z) * vec2<f32>(0.5f, 0.5f)) + -(x_970));
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_976 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_976) + vec2<f32>(1.0f, 1.0f));
        let x_981 : vec2<f32> = u_xlat57;
        let x_983 : vec2<f32> = min(x_981, vec2<f32>(0.0f, 0.0f));
        let x_984 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat10;
        let x_989 : vec4<f32> = u_xlat10;
        let x_992 : vec2<f32> = u_xlat59;
        let x_993 : vec2<f32> = ((-(vec2<f32>(x_986.x, x_986.y)) * vec2<f32>(x_989.x, x_989.y)) + x_992);
        let x_994 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_996, vec2<f32>(0.0f, 0.0f));
        let x_998 : vec2<f32> = u_xlat57;
        let x_1000 : vec2<f32> = u_xlat57;
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_998) * x_1000) + vec2<f32>(x_1002.y, x_1002.w));
        let x_1005 : vec4<f32> = u_xlat10;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.y) + vec2<f32>(1.0f, 1.0f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1010 + vec2<f32>(1.0f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1017 : vec2<f32> = (vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1018 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat59;
        let x_1021 : vec2<f32> = (x_1020 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = (vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1027 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1030 : vec2<f32> = u_xlat57;
        let x_1031 : vec2<f32> = (x_1030 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1032 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1034.y, x_1034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1038 : f32 = u_xlat10.x;
        u_xlat11.z = x_1038;
        let x_1041 : f32 = u_xlat57.x;
        u_xlat11.w = x_1041;
        let x_1044 : f32 = u_xlat12.x;
        u_xlat9.z = x_1044;
        let x_1047 : f32 = u_xlat8.x;
        u_xlat9.w = x_1047;
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1052 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1050.z, x_1050.w, x_1050.x, x_1050.z) + vec4<f32>(x_1052.z, x_1052.w, x_1052.x, x_1052.z));
        let x_1056 : f32 = u_xlat11.y;
        u_xlat10.z = x_1056;
        let x_1059 : f32 = u_xlat57.y;
        u_xlat10.w = x_1059;
        let x_1062 : f32 = u_xlat9.y;
        u_xlat12.z = x_1062;
        let x_1065 : f32 = u_xlat8.z;
        u_xlat12.w = x_1065;
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat12;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1067.z, x_1067.y, x_1067.w) + vec3<f32>(x_1069.z, x_1069.y, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = u_xlat13;
        let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.z, x_1074.w) / vec3<f32>(x_1076.z, x_1076.w, x_1076.y));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1086 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat12;
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1089.z, x_1089.y, x_1089.w) / vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat10;
        let x_1098 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1104 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1106 : vec3<f32> = (vec3<f32>(x_1101.y, x_1101.x, x_1101.z) * vec3<f32>(x_1104.x, x_1104.x, x_1104.x));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1112 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1114 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * vec3<f32>(x_1112.y, x_1112.y, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
        let x_1118 : f32 = u_xlat10.x;
        u_xlat9.w = x_1118;
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.y, x_1126.w, x_1126.x, x_1126.w));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.z, x_1135.w));
        let x_1139 : f32 = u_xlat9.y;
        u_xlat10.w = x_1139;
        let x_1141 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = vec2<f32>(x_1141.y, x_1141.z);
        let x_1143 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1148 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.w, x_1160.y, x_1160.w, x_1160.z));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y) * vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y)) + vec4<f32>(x_1169.x, x_1169.w, x_1169.z, x_1169.w));
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.x, x_1173.y) * vec4<f32>(x_1175.z, x_1175.w, x_1175.y, x_1175.z));
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1179.y, x_1179.y, x_1179.z, x_1179.z) * x_1181);
        let x_1185 : f32 = u_xlat8.z;
        let x_1187 : f32 = u_xlat13.y;
        u_xlat79 = (x_1185 * x_1187);
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
        let x_1193 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1201 : vec3<f32> = txVec4;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat80 = x_1203;
        let x_1205 : vec4<f32> = u_xlat11;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1216 : vec3<f32> = txVec5;
        let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
        u_xlat81 = x_1218;
        let x_1219 : f32 = u_xlat81;
        let x_1221 : f32 = u_xlat14.y;
        u_xlat81 = (x_1219 * x_1221);
        let x_1224 : f32 = u_xlat14.x;
        let x_1225 : f32 = u_xlat80;
        let x_1227 : f32 = u_xlat81;
        u_xlat80 = ((x_1224 * x_1225) + x_1227);
        let x_1230 : vec2<f32> = u_xlat57;
        let x_1232 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec6;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat81 = x_1241;
        let x_1243 : f32 = u_xlat14.z;
        let x_1244 : f32 = u_xlat81;
        let x_1246 : f32 = u_xlat80;
        u_xlat80 = ((x_1243 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat10;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec7;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat81 = x_1261;
        let x_1263 : f32 = u_xlat14.w;
        let x_1264 : f32 = u_xlat81;
        let x_1266 : f32 = u_xlat80;
        u_xlat80 = ((x_1263 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat12;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec8;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat81 = x_1281;
        let x_1283 : f32 = u_xlat15.x;
        let x_1284 : f32 = u_xlat81;
        let x_1286 : f32 = u_xlat80;
        u_xlat80 = ((x_1283 * x_1284) + x_1286);
        let x_1289 : vec4<f32> = u_xlat12;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec9;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat81 = x_1301;
        let x_1303 : f32 = u_xlat15.y;
        let x_1304 : f32 = u_xlat81;
        let x_1306 : f32 = u_xlat80;
        u_xlat80 = ((x_1303 * x_1304) + x_1306);
        let x_1309 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec10;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat81 = x_1321;
        let x_1323 : f32 = u_xlat15.z;
        let x_1324 : f32 = u_xlat81;
        let x_1326 : f32 = u_xlat80;
        u_xlat80 = ((x_1323 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec11;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat81 = x_1341;
        let x_1343 : f32 = u_xlat15.w;
        let x_1344 : f32 = u_xlat81;
        let x_1346 : f32 = u_xlat80;
        u_xlat80 = ((x_1343 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec12;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat81 = x_1361;
        let x_1362 : f32 = u_xlat79;
        let x_1363 : f32 = u_xlat81;
        let x_1365 : f32 = u_xlat80;
        u_xlat78 = ((x_1362 * x_1363) + x_1365);
      } else {
        let x_1368 : vec4<f32> = u_xlat3;
        let x_1371 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1368.x, x_1368.y) * vec2<f32>(x_1371.z, x_1371.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1375.z, x_1375.w);
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec2<f32> = floor(vec2<f32>(x_1377.x, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat3;
        let x_1385 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.z, x_1385.w)) + -(vec2<f32>(x_1388.x, x_1388.y)));
        let x_1392 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1392.x, x_1392.x, x_1392.y, x_1392.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1395.x, x_1395.x, x_1395.z, x_1395.z) * vec4<f32>(x_1397.x, x_1397.x, x_1397.z, x_1397.z));
        let x_1400 : vec4<f32> = u_xlat9;
        let x_1404 : vec2<f32> = (vec2<f32>(x_1400.y, x_1400.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1404.x, x_1405.z, x_1404.y);
        let x_1407 : vec4<f32> = u_xlat9;
        let x_1410 : vec2<f32> = u_xlat57;
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1410));
        let x_1413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1412.x, x_1413.y, x_1412.y, x_1413.w);
        let x_1415 : vec2<f32> = u_xlat57;
        let x_1417 : vec2<f32> = (-(x_1415) + vec2<f32>(1.0f, 1.0f));
        let x_1418 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1420 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1420, vec2<f32>(0.0f, 0.0f));
        let x_1422 : vec2<f32> = u_xlat59;
        let x_1424 : vec2<f32> = u_xlat59;
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1428 : vec2<f32> = ((-(x_1422) * x_1424) + vec2<f32>(x_1426.x, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        let x_1431 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1431, vec2<f32>(0.0f, 0.0f));
        let x_1434 : vec2<f32> = u_xlat59;
        let x_1436 : vec2<f32> = u_xlat59;
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1440 : vec2<f32> = ((-(x_1434) * x_1436) + vec2<f32>(x_1438.y, x_1438.w));
        let x_1441 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1440.x, x_1441.y, x_1440.y);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1443.x, x_1443.y) + vec2<f32>(2.0f, 2.0f));
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1448 : vec3<f32> = u_xlat33;
        let x_1450 : vec2<f32> = (vec2<f32>(x_1448.x, x_1448.z) + vec2<f32>(2.0f, 2.0f));
        let x_1451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1451.x, x_1450.x, x_1451.z, x_1450.y);
        let x_1454 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1454 * 0.08163200318813323975f);
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.x, x_1458.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1467 : vec2<f32> = (vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat12.y;
        u_xlat11.x = x_1471;
        let x_1473 : vec2<f32> = u_xlat57;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat57;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1488 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1487.x, x_1488.y, x_1487.y, x_1488.w);
        let x_1491 : f32 = u_xlat8.x;
        u_xlat9.y = x_1491;
        let x_1494 : f32 = u_xlat10.y;
        u_xlat9.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1497 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1496 + x_1497);
        let x_1499 : vec2<f32> = u_xlat57;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.y, x_1499.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1503.x, x_1502.x, x_1503.z, x_1502.y);
        let x_1505 : vec2<f32> = u_xlat57;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1505.y, x_1505.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1508.x, x_1509.y, x_1508.y, x_1509.w);
        let x_1512 : f32 = u_xlat8.y;
        u_xlat10.y = x_1512;
        let x_1514 : vec4<f32> = u_xlat10;
        let x_1515 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1514 + x_1515);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1517 / x_1518);
        let x_1520 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1526 / x_1527);
        let x_1529 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1529 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1534 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1531.w, x_1531.x, x_1531.y, x_1531.z) * vec4<f32>(x_1534.x, x_1534.x, x_1534.x, x_1534.x));
        let x_1537 : vec4<f32> = u_xlat10;
        let x_1540 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1537.x, x_1537.w, x_1537.y, x_1537.z) * vec4<f32>(x_1540.y, x_1540.y, x_1540.y, x_1540.y));
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1544 : vec3<f32> = vec3<f32>(x_1543.y, x_1543.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1544.x, x_1545.y, x_1544.y, x_1544.z);
        let x_1548 : f32 = u_xlat10.x;
        u_xlat12.y = x_1548;
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1553 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1559 : vec4<f32> = u_xlat7;
        let x_1562 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.w, x_1565.y));
        let x_1569 : f32 = u_xlat12.y;
        u_xlat9.y = x_1569;
        let x_1572 : f32 = u_xlat10.z;
        u_xlat12.y = x_1572;
        let x_1574 : vec4<f32> = u_xlat7;
        let x_1577 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat12;
        let x_1591 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.w, x_1589.y));
        let x_1592 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat12.y;
        u_xlat9.z = x_1595;
        let x_1598 : vec4<f32> = u_xlat7;
        let x_1601 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y) * vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y)) + vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.z));
        let x_1608 : f32 = u_xlat10.w;
        u_xlat12.y = x_1608;
        let x_1611 : vec4<f32> = u_xlat7;
        let x_1614 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1621 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1627 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1624.x, x_1624.y)) + vec2<f32>(x_1627.w, x_1627.y));
        let x_1631 : f32 = u_xlat12.y;
        u_xlat9.w = x_1631;
        let x_1634 : vec4<f32> = u_xlat7;
        let x_1637 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat12;
        let x_1644 : vec3<f32> = vec3<f32>(x_1643.x, x_1643.z, x_1643.w);
        let x_1645 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1644.x, x_1645.y, x_1644.y, x_1644.z);
        let x_1647 : vec4<f32> = u_xlat7;
        let x_1650 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1653 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y) * vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y)) + vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1653.y));
        let x_1657 : vec4<f32> = u_xlat7;
        let x_1660 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.w, x_1663.y));
        let x_1667 : f32 = u_xlat9.x;
        u_xlat10.x = x_1667;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1672 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat10;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y)) + vec2<f32>(x_1675.x, x_1675.y));
        let x_1678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
        let x_1681 : vec4<f32> = u_xlat8;
        let x_1683 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1681.x, x_1681.x, x_1681.x, x_1681.x) * x_1683);
        let x_1686 : vec4<f32> = u_xlat8;
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y) * x_1688);
        let x_1691 : vec4<f32> = u_xlat8;
        let x_1693 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1691.z, x_1691.z, x_1691.z, x_1691.z) * x_1693);
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1697 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1695.w, x_1695.w, x_1695.w, x_1695.w) * x_1697);
        let x_1700 : vec4<f32> = u_xlat13;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec13;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat79 = x_1712;
        let x_1714 : vec4<f32> = u_xlat13;
        let x_1715 : vec2<f32> = vec2<f32>(x_1714.z, x_1714.w);
        let x_1717 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec14;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1724.xy, x_1724.z);
        u_xlat80 = x_1726;
        let x_1727 : f32 = u_xlat80;
        let x_1729 : f32 = u_xlat18.y;
        u_xlat80 = (x_1727 * x_1729);
        let x_1732 : f32 = u_xlat18.x;
        let x_1733 : f32 = u_xlat79;
        let x_1735 : f32 = u_xlat80;
        u_xlat79 = ((x_1732 * x_1733) + x_1735);
        let x_1738 : vec2<f32> = u_xlat57;
        let x_1740 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec15;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat80 = x_1749;
        let x_1751 : f32 = u_xlat18.z;
        let x_1752 : f32 = u_xlat80;
        let x_1754 : f32 = u_xlat79;
        u_xlat79 = ((x_1751 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat16;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec16;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat80 = x_1769;
        let x_1771 : f32 = u_xlat18.w;
        let x_1772 : f32 = u_xlat80;
        let x_1774 : f32 = u_xlat79;
        u_xlat79 = ((x_1771 * x_1772) + x_1774);
        let x_1777 : vec4<f32> = u_xlat14;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.x, x_1777.y);
        let x_1780 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec17;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1787.xy, x_1787.z);
        u_xlat80 = x_1789;
        let x_1791 : f32 = u_xlat19.x;
        let x_1792 : f32 = u_xlat80;
        let x_1794 : f32 = u_xlat79;
        u_xlat79 = ((x_1791 * x_1792) + x_1794);
        let x_1797 : vec4<f32> = u_xlat14;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.z, x_1797.w);
        let x_1800 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec18;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat80 = x_1809;
        let x_1811 : f32 = u_xlat19.y;
        let x_1812 : f32 = u_xlat80;
        let x_1814 : f32 = u_xlat79;
        u_xlat79 = ((x_1811 * x_1812) + x_1814);
        let x_1817 : vec4<f32> = u_xlat15;
        let x_1818 : vec2<f32> = vec2<f32>(x_1817.x, x_1817.y);
        let x_1820 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec19;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1827.xy, x_1827.z);
        u_xlat80 = x_1829;
        let x_1831 : f32 = u_xlat19.z;
        let x_1832 : f32 = u_xlat80;
        let x_1834 : f32 = u_xlat79;
        u_xlat79 = ((x_1831 * x_1832) + x_1834);
        let x_1837 : vec4<f32> = u_xlat16;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.z, x_1837.w);
        let x_1840 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec20;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1847.xy, x_1847.z);
        u_xlat80 = x_1849;
        let x_1851 : f32 = u_xlat19.w;
        let x_1852 : f32 = u_xlat80;
        let x_1854 : f32 = u_xlat79;
        u_xlat79 = ((x_1851 * x_1852) + x_1854);
        let x_1857 : vec4<f32> = u_xlat17;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.x, x_1857.y);
        let x_1860 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec21;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1867.xy, x_1867.z);
        u_xlat80 = x_1869;
        let x_1871 : f32 = u_xlat20.x;
        let x_1872 : f32 = u_xlat80;
        let x_1874 : f32 = u_xlat79;
        u_xlat79 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec4<f32> = u_xlat17;
        let x_1878 : vec2<f32> = vec2<f32>(x_1877.z, x_1877.w);
        let x_1880 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec22;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1887.xy, x_1887.z);
        u_xlat80 = x_1889;
        let x_1891 : f32 = u_xlat20.y;
        let x_1892 : f32 = u_xlat80;
        let x_1894 : f32 = u_xlat79;
        u_xlat79 = ((x_1891 * x_1892) + x_1894);
        let x_1897 : vec2<f32> = u_xlat34;
        let x_1899 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec23;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat80 = x_1908;
        let x_1910 : f32 = u_xlat20.z;
        let x_1911 : f32 = u_xlat80;
        let x_1913 : f32 = u_xlat79;
        u_xlat79 = ((x_1910 * x_1911) + x_1913);
        let x_1916 : vec2<f32> = u_xlat65;
        let x_1918 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec24;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat80 = x_1927;
        let x_1929 : f32 = u_xlat20.w;
        let x_1930 : f32 = u_xlat80;
        let x_1932 : f32 = u_xlat79;
        u_xlat79 = ((x_1929 * x_1930) + x_1932);
        let x_1935 : vec4<f32> = u_xlat12;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec25;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat80 = x_1947;
        let x_1949 : f32 = u_xlat8.x;
        let x_1950 : f32 = u_xlat80;
        let x_1952 : f32 = u_xlat79;
        u_xlat79 = ((x_1949 * x_1950) + x_1952);
        let x_1955 : vec4<f32> = u_xlat12;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.z, x_1955.w);
        let x_1958 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec26;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1965.xy, x_1965.z);
        u_xlat80 = x_1967;
        let x_1969 : f32 = u_xlat8.y;
        let x_1970 : f32 = u_xlat80;
        let x_1972 : f32 = u_xlat79;
        u_xlat79 = ((x_1969 * x_1970) + x_1972);
        let x_1975 : vec2<f32> = u_xlat60;
        let x_1977 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec27;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1984.xy, x_1984.z);
        u_xlat80 = x_1986;
        let x_1988 : f32 = u_xlat8.z;
        let x_1989 : f32 = u_xlat80;
        let x_1991 : f32 = u_xlat79;
        u_xlat79 = ((x_1988 * x_1989) + x_1991);
        let x_1994 : vec4<f32> = u_xlat7;
        let x_1995 : vec2<f32> = vec2<f32>(x_1994.x, x_1994.y);
        let x_1997 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1995.x, x_1995.y, x_1997);
        let x_2004 : vec3<f32> = txVec28;
        let x_2006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2004.xy, x_2004.z);
        u_xlat80 = x_2006;
        let x_2008 : f32 = u_xlat8.w;
        let x_2009 : f32 = u_xlat80;
        let x_2011 : f32 = u_xlat79;
        u_xlat78 = ((x_2008 * x_2009) + x_2011);
      }
    }
  } else {
    let x_2015 : vec4<f32> = u_xlat3;
    let x_2016 : vec2<f32> = vec2<f32>(x_2015.x, x_2015.y);
    let x_2018 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
    let x_2025 : vec3<f32> = txVec29;
    let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2025.xy, x_2025.z);
    u_xlat78 = x_2027;
  }
  let x_2029 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2029) + 1.0f);
  let x_2033 : f32 = u_xlat78;
  let x_2035 : f32 = x_508.x_MainLightShadowParams.x;
  let x_2038 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2033 * x_2035) + x_2038);
  let x_2043 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2043);
  let x_2047 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2047 >= 1.0f);
  let x_2049 : bool = u_xlatb53;
  let x_2050 : bool = u_xlatb28;
  u_xlatb28 = (x_2049 | x_2050);
  let x_2052 : bool = u_xlatb28;
  if (x_2052) {
    x_2053 = 1.0f;
  } else {
    let x_2058 : f32 = u_xlat3.x;
    x_2053 = x_2058;
  }
  let x_2059 : f32 = x_2053;
  u_xlat3.x = x_2059;
  let x_2062 : vec3<f32> = vs_INTERP7;
  let x_2064 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2062 + -(x_2064));
  let x_2067 : vec3<f32> = u_xlat28;
  let x_2068 : vec3<f32> = u_xlat28;
  u_xlat28.x = dot(x_2067, x_2068);
  let x_2073 : f32 = u_xlat28.x;
  let x_2075 : f32 = x_508.x_MainLightShadowParams.z;
  let x_2078 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2073 * x_2075) + x_2078);
  let x_2080 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2080, 0.0f, 1.0f);
  let x_2083 : f32 = u_xlat3.x;
  u_xlat78 = (-(x_2083) + 1.0f);
  let x_2086 : f32 = u_xlat53;
  let x_2087 : f32 = u_xlat78;
  let x_2090 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2086 * x_2087) + x_2090);
  let x_2093 : vec3<f32> = u_xlat4;
  let x_2095 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2093), vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : f32 = u_xlat53;
  let x_2099 : f32 = u_xlat53;
  u_xlat53 = (x_2098 + x_2099);
  let x_2101 : vec4<f32> = u_xlat1;
  let x_2103 : f32 = u_xlat53;
  let x_2107 : vec3<f32> = u_xlat4;
  let x_2109 : vec3<f32> = ((vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * -(vec3<f32>(x_2103, x_2103, x_2103))) + -(x_2107));
  let x_2110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
  let x_2112 : vec4<f32> = u_xlat1;
  let x_2114 : vec3<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_2112.x, x_2112.y, x_2112.z), x_2114);
  let x_2116 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2116, 0.0f, 1.0f);
  let x_2118 : f32 = u_xlat53;
  u_xlat53 = (-(x_2118) + 1.0f);
  let x_2121 : f32 = u_xlat53;
  let x_2122 : f32 = u_xlat53;
  u_xlat53 = (x_2121 * x_2122);
  let x_2124 : f32 = u_xlat53;
  let x_2125 : f32 = u_xlat53;
  u_xlat53 = (x_2124 * x_2125);
  let x_2127 : f32 = u_xlat75;
  u_xlat78 = ((-(x_2127) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2133 : f32 = u_xlat75;
  let x_2134 : f32 = u_xlat78;
  u_xlat75 = (x_2133 * x_2134);
  let x_2136 : f32 = u_xlat75;
  u_xlat75 = (x_2136 * 6.0f);
  let x_2146 : vec4<f32> = u_xlat7;
  let x_2148 : f32 = u_xlat75;
  let x_2149 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2146.x, x_2146.y, x_2146.z), x_2148);
  u_xlat7 = x_2149;
  let x_2151 : f32 = u_xlat7.w;
  u_xlat75 = (x_2151 + -1.0f);
  let x_2154 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2155 : f32 = u_xlat75;
  u_xlat75 = ((x_2154 * x_2155) + 1.0f);
  let x_2158 : f32 = u_xlat75;
  u_xlat75 = max(x_2158, 0.0f);
  let x_2160 : f32 = u_xlat75;
  u_xlat75 = log2(x_2160);
  let x_2162 : f32 = u_xlat75;
  let x_2164 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_2162 * x_2164);
  let x_2166 : f32 = u_xlat75;
  u_xlat75 = exp2(x_2166);
  let x_2168 : f32 = u_xlat75;
  let x_2170 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_2168 * x_2170);
  let x_2172 : vec4<f32> = u_xlat7;
  let x_2174 : f32 = u_xlat75;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * vec3<f32>(x_2174, x_2174, x_2174));
  let x_2177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2179 : vec4<f32> = u_xlat2;
  let x_2181 : vec4<f32> = u_xlat2;
  let x_2185 : vec2<f32> = ((vec2<f32>(x_2179.x, x_2179.x) * vec2<f32>(x_2181.x, x_2181.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2186.z, x_2186.w);
  let x_2189 : f32 = u_xlat8.y;
  u_xlat75 = (1.0f / x_2189);
  let x_2191 : vec4<f32> = u_xlat0;
  let x_2194 : f32 = u_xlat76;
  u_xlat33 = (-(vec3<f32>(x_2191.x, x_2191.y, x_2191.z)) + vec3<f32>(x_2194, x_2194, x_2194));
  let x_2197 : f32 = u_xlat53;
  let x_2199 : vec3<f32> = u_xlat33;
  let x_2201 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_2197, x_2197, x_2197) * x_2199) + vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
  let x_2204 : f32 = u_xlat75;
  let x_2206 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2204, x_2204, x_2204) * x_2206);
  let x_2208 : vec4<f32> = u_xlat7;
  let x_2210 : vec3<f32> = u_xlat33;
  let x_2211 : vec3<f32> = (vec3<f32>(x_2208.x, x_2208.y, x_2208.z) * x_2210);
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2214 : vec4<f32> = u_xlat5;
  let x_2216 : vec3<f32> = u_xlat6;
  let x_2218 : vec4<f32> = u_xlat7;
  let x_2220 : vec3<f32> = ((vec3<f32>(x_2214.x, x_2214.y, x_2214.z) * x_2216) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
  let x_2224 : f32 = u_xlat3.x;
  let x_2226 : f32 = x_349.unity_LightData.z;
  u_xlat75 = (x_2224 * x_2226);
  let x_2228 : vec4<f32> = u_xlat1;
  let x_2231 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2234, 0.0f, 1.0f);
  let x_2236 : f32 = u_xlat75;
  let x_2237 : f32 = u_xlat76;
  u_xlat75 = (x_2236 * x_2237);
  let x_2239 : f32 = u_xlat75;
  let x_2242 : vec4<f32> = x_29.x_MainLightColor;
  let x_2244 : vec3<f32> = (vec3<f32>(x_2239, x_2239, x_2239) * vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2244.x, x_2245.y, x_2244.y, x_2244.z);
  let x_2247 : vec3<f32> = u_xlat4;
  let x_2249 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2251 : vec3<f32> = (x_2247 + vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2254.x, x_2254.y, x_2254.z), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : f32 = u_xlat75;
  u_xlat75 = max(x_2259, 1.17549435e-38f);
  let x_2262 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2262);
  let x_2264 : f32 = u_xlat75;
  let x_2266 : vec4<f32> = u_xlat7;
  let x_2268 : vec3<f32> = (vec3<f32>(x_2264, x_2264, x_2264) * vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : vec4<f32> = u_xlat1;
  let x_2273 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2271.x, x_2271.y, x_2271.z), vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2276, 0.0f, 1.0f);
  let x_2279 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2284, 0.0f, 1.0f);
  let x_2286 : f32 = u_xlat75;
  let x_2287 : f32 = u_xlat75;
  u_xlat75 = (x_2286 * x_2287);
  let x_2289 : f32 = u_xlat75;
  let x_2291 : f32 = u_xlat8.x;
  u_xlat75 = ((x_2289 * x_2291) + 1.00001001358032226562f);
  let x_2295 : f32 = u_xlat76;
  let x_2296 : f32 = u_xlat76;
  u_xlat76 = (x_2295 * x_2296);
  let x_2298 : f32 = u_xlat75;
  let x_2299 : f32 = u_xlat75;
  u_xlat75 = (x_2298 * x_2299);
  let x_2301 : f32 = u_xlat76;
  u_xlat76 = max(x_2301, 0.10000000149011611938f);
  let x_2304 : f32 = u_xlat75;
  let x_2305 : f32 = u_xlat76;
  u_xlat75 = (x_2304 * x_2305);
  let x_2307 : f32 = u_xlat77;
  let x_2308 : f32 = u_xlat75;
  u_xlat75 = (x_2307 * x_2308);
  let x_2310 : f32 = u_xlat27;
  let x_2311 : f32 = u_xlat75;
  u_xlat75 = (x_2310 / x_2311);
  let x_2313 : vec4<f32> = u_xlat0;
  let x_2315 : f32 = u_xlat75;
  let x_2318 : vec3<f32> = u_xlat6;
  let x_2319 : vec3<f32> = ((vec3<f32>(x_2313.x, x_2313.y, x_2313.z) * vec3<f32>(x_2315, x_2315, x_2315)) + x_2318);
  let x_2320 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
  let x_2322 : vec4<f32> = u_xlat3;
  let x_2324 : vec4<f32> = u_xlat7;
  let x_2326 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.z, x_2322.w) * vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
  let x_2327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2326.x, x_2327.y, x_2326.y, x_2326.z);
  let x_2330 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2332 : f32 = x_349.unity_LightData.y;
  u_xlat75 = min(x_2330, x_2332);
  let x_2334 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2334));
  let x_2338 : f32 = u_xlat28.x;
  let x_2341 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_2344 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2338 * x_2341) + x_2344);
  let x_2346 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2346, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2358 : u32 = u_xlatu_loop_1;
    let x_2359 : u32 = u_xlatu75;
    if ((x_2358 < x_2359)) {
    } else {
      break;
    }
    let x_2362 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_2362 >> 2u);
    let x_2365 : u32 = u_xlatu_loop_1;
    u_xlati79 = bitcast<i32>((x_2365 & 3u));
    let x_2368 : u32 = u_xlatu28;
    let x_2371 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2368)];
    let x_2381 : i32 = u_xlati79;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2386 : vec4<u32> = indexable[x_2381];
    u_xlat28.x = dot(x_2371, bitcast<vec4<f32>>(x_2386));
    let x_2392 : f32 = u_xlat28.x;
    u_xlati28 = i32(x_2392);
    let x_2394 : vec3<f32> = vs_INTERP7;
    let x_2405 : i32 = u_xlati28;
    let x_2407 : vec4<f32> = x_2404.x_AdditionalLightsPosition[x_2405];
    let x_2410 : i32 = u_xlati28;
    let x_2412 : vec4<f32> = x_2404.x_AdditionalLightsPosition[x_2410];
    u_xlat33 = ((-(x_2394) * vec3<f32>(x_2407.w, x_2407.w, x_2407.w)) + vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
    let x_2415 : vec3<f32> = u_xlat33;
    let x_2416 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_2415, x_2416);
    let x_2418 : f32 = u_xlat79;
    u_xlat79 = max(x_2418, 0.00006103515625f);
    let x_2421 : f32 = u_xlat79;
    u_xlat80 = inverseSqrt(x_2421);
    let x_2423 : f32 = u_xlat80;
    let x_2425 : vec3<f32> = u_xlat33;
    let x_2426 : vec3<f32> = (vec3<f32>(x_2423, x_2423, x_2423) * x_2425);
    let x_2427 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
    let x_2429 : f32 = u_xlat79;
    u_xlat81 = (1.0f / x_2429);
    let x_2431 : f32 = u_xlat79;
    let x_2432 : i32 = u_xlati28;
    let x_2434 : f32 = x_2404.x_AdditionalLightsAttenuation[x_2432].x;
    u_xlat79 = (x_2431 * x_2434);
    let x_2436 : f32 = u_xlat79;
    let x_2438 : f32 = u_xlat79;
    u_xlat79 = ((-(x_2436) * x_2438) + 1.0f);
    let x_2441 : f32 = u_xlat79;
    u_xlat79 = max(x_2441, 0.0f);
    let x_2443 : f32 = u_xlat79;
    let x_2444 : f32 = u_xlat79;
    u_xlat79 = (x_2443 * x_2444);
    let x_2446 : f32 = u_xlat79;
    let x_2447 : f32 = u_xlat81;
    u_xlat79 = (x_2446 * x_2447);
    let x_2449 : i32 = u_xlati28;
    let x_2451 : vec4<f32> = x_2404.x_AdditionalLightsSpotDir[x_2449];
    let x_2453 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
    let x_2456 : f32 = u_xlat81;
    let x_2457 : i32 = u_xlati28;
    let x_2459 : f32 = x_2404.x_AdditionalLightsAttenuation[x_2457].z;
    let x_2461 : i32 = u_xlati28;
    let x_2463 : f32 = x_2404.x_AdditionalLightsAttenuation[x_2461].w;
    u_xlat81 = ((x_2456 * x_2459) + x_2463);
    let x_2465 : f32 = u_xlat81;
    u_xlat81 = clamp(x_2465, 0.0f, 1.0f);
    let x_2467 : f32 = u_xlat81;
    let x_2468 : f32 = u_xlat81;
    u_xlat81 = (x_2467 * x_2468);
    let x_2470 : f32 = u_xlat79;
    let x_2471 : f32 = u_xlat81;
    u_xlat79 = (x_2470 * x_2471);
    let x_2475 : i32 = u_xlati28;
    let x_2477 : f32 = x_508.x_AdditionalShadowParams[x_2475].w;
    u_xlati81 = i32(x_2477);
    let x_2480 : i32 = u_xlati81;
    u_xlatb82 = (x_2480 >= 0i);
    let x_2482 : bool = u_xlatb82;
    if (x_2482) {
      let x_2486 : i32 = u_xlati28;
      let x_2488 : f32 = x_508.x_AdditionalShadowParams[x_2486].z;
      u_xlatb82 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2488, x_2488, x_2488, x_2488))));
      let x_2492 : bool = u_xlatb82;
      if (x_2492) {
        let x_2496 : vec4<f32> = u_xlat9;
        let x_2499 : vec4<f32> = u_xlat9;
        let x_2502 : vec4<bool> = (abs(vec4<f32>(x_2496.z, x_2496.z, x_2496.y, x_2496.z)) >= abs(vec4<f32>(x_2499.x, x_2499.y, x_2499.x, x_2499.x)));
        let x_2504 : vec3<bool> = vec3<bool>(x_2502.x, x_2502.y, x_2502.z);
        let x_2505 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
        let x_2508 : bool = u_xlatb10.y;
        let x_2510 : bool = u_xlatb10.x;
        u_xlatb82 = (x_2508 & x_2510);
        let x_2512 : vec4<f32> = u_xlat9;
        let x_2515 : vec4<bool> = (-(vec4<f32>(x_2512.z, x_2512.y, x_2512.z, x_2512.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2516 : vec3<bool> = vec3<bool>(x_2515.x, x_2515.y, x_2515.w);
        let x_2517 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2516.x, x_2516.y, x_2517.z, x_2516.z);
        let x_2520 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2520);
        let x_2525 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2525);
        let x_2530 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2530);
        let x_2533 : bool = u_xlatb10.z;
        if (x_2533) {
          let x_2538 : f32 = u_xlat10.y;
          x_2534 = x_2538;
        } else {
          let x_2540 : f32 = u_xlat84;
          x_2534 = x_2540;
        }
        let x_2541 : f32 = x_2534;
        u_xlat84 = x_2541;
        let x_2543 : bool = u_xlatb82;
        if (x_2543) {
          let x_2548 : f32 = u_xlat10.x;
          x_2544 = x_2548;
        } else {
          let x_2550 : f32 = u_xlat84;
          x_2544 = x_2550;
        }
        let x_2551 : f32 = x_2544;
        u_xlat82 = x_2551;
        let x_2552 : i32 = u_xlati28;
        let x_2554 : f32 = x_508.x_AdditionalShadowParams[x_2552].w;
        u_xlat84 = trunc(x_2554);
        let x_2556 : f32 = u_xlat82;
        let x_2557 : f32 = u_xlat84;
        u_xlat82 = (x_2556 + x_2557);
        let x_2559 : f32 = u_xlat82;
        u_xlati81 = i32(x_2559);
      }
      let x_2561 : i32 = u_xlati81;
      u_xlati81 = (x_2561 << bitcast<u32>(2i));
      let x_2563 : vec3<f32> = vs_INTERP7;
      let x_2566 : i32 = u_xlati81;
      let x_2569 : i32 = u_xlati81;
      let x_2573 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2566 + 1i) / 4i)][((x_2569 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2563.y, x_2563.y, x_2563.y, x_2563.y) * x_2573);
      let x_2575 : i32 = u_xlati81;
      let x_2577 : i32 = u_xlati81;
      let x_2580 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_2575 / 4i)][(x_2577 % 4i)];
      let x_2581 : vec3<f32> = vs_INTERP7;
      let x_2584 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2580 * vec4<f32>(x_2581.x, x_2581.x, x_2581.x, x_2581.x)) + x_2584);
      let x_2586 : i32 = u_xlati81;
      let x_2589 : i32 = u_xlati81;
      let x_2593 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2586 + 2i) / 4i)][((x_2589 + 2i) % 4i)];
      let x_2594 : vec3<f32> = vs_INTERP7;
      let x_2597 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2593 * vec4<f32>(x_2594.z, x_2594.z, x_2594.z, x_2594.z)) + x_2597);
      let x_2599 : vec4<f32> = u_xlat10;
      let x_2600 : i32 = u_xlati81;
      let x_2603 : i32 = u_xlati81;
      let x_2607 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2600 + 3i) / 4i)][((x_2603 + 3i) % 4i)];
      u_xlat10 = (x_2599 + x_2607);
      let x_2609 : vec4<f32> = u_xlat10;
      let x_2611 : vec4<f32> = u_xlat10;
      let x_2613 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) / vec3<f32>(x_2611.w, x_2611.w, x_2611.w));
      let x_2614 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
      let x_2617 : i32 = u_xlati28;
      let x_2619 : f32 = x_508.x_AdditionalShadowParams[x_2617].y;
      u_xlatb81 = (0.0f < x_2619);
      let x_2621 : bool = u_xlatb81;
      if (x_2621) {
        let x_2624 : i32 = u_xlati28;
        let x_2626 : f32 = x_508.x_AdditionalShadowParams[x_2624].y;
        u_xlatb81 = (1.0f == x_2626);
        let x_2628 : bool = u_xlatb81;
        if (x_2628) {
          let x_2631 : vec4<f32> = u_xlat10;
          let x_2635 : vec4<f32> = x_508.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.y) + x_2635);
          let x_2638 : vec4<f32> = u_xlat11;
          let x_2639 : vec2<f32> = vec2<f32>(x_2638.x, x_2638.y);
          let x_2641 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2639.x, x_2639.y, x_2641);
          let x_2649 : vec3<f32> = txVec30;
          let x_2651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2649.xy, x_2649.z);
          u_xlat12.x = x_2651;
          let x_2654 : vec4<f32> = u_xlat11;
          let x_2655 : vec2<f32> = vec2<f32>(x_2654.z, x_2654.w);
          let x_2657 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
          let x_2664 : vec3<f32> = txVec31;
          let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
          u_xlat12.y = x_2666;
          let x_2668 : vec4<f32> = u_xlat10;
          let x_2672 : vec4<f32> = x_508.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2668.x, x_2668.y, x_2668.x, x_2668.y) + x_2672);
          let x_2675 : vec4<f32> = u_xlat11;
          let x_2676 : vec2<f32> = vec2<f32>(x_2675.x, x_2675.y);
          let x_2678 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
          let x_2685 : vec3<f32> = txVec32;
          let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
          u_xlat12.z = x_2687;
          let x_2690 : vec4<f32> = u_xlat11;
          let x_2691 : vec2<f32> = vec2<f32>(x_2690.z, x_2690.w);
          let x_2693 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2691.x, x_2691.y, x_2693);
          let x_2700 : vec3<f32> = txVec33;
          let x_2702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2700.xy, x_2700.z);
          u_xlat12.w = x_2702;
          let x_2704 : vec4<f32> = u_xlat12;
          u_xlat81 = dot(x_2704, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2707 : i32 = u_xlati28;
          let x_2709 : f32 = x_508.x_AdditionalShadowParams[x_2707].y;
          u_xlatb82 = (2.0f == x_2709);
          let x_2711 : bool = u_xlatb82;
          if (x_2711) {
            let x_2714 : vec4<f32> = u_xlat10;
            let x_2718 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2721 : vec2<f32> = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2718.z, x_2718.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2722 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
            let x_2724 : vec4<f32> = u_xlat11;
            let x_2726 : vec2<f32> = floor(vec2<f32>(x_2724.x, x_2724.y));
            let x_2727 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2726.x, x_2726.y, x_2727.z, x_2727.w);
            let x_2730 : vec4<f32> = u_xlat10;
            let x_2733 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2733.z, x_2733.w)) + -(vec2<f32>(x_2736.x, x_2736.y)));
            let x_2740 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2740.x, x_2740.x, x_2740.y, x_2740.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2743 : vec4<f32> = u_xlat12;
            let x_2745 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2743.x, x_2743.x, x_2743.z, x_2743.z) * vec4<f32>(x_2745.x, x_2745.x, x_2745.z, x_2745.z));
            let x_2748 : vec4<f32> = u_xlat13;
            let x_2750 : vec2<f32> = (vec2<f32>(x_2748.y, x_2748.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2751 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2750.x, x_2751.y, x_2750.y, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat13;
            let x_2756 : vec2<f32> = u_xlat61;
            let x_2758 : vec2<f32> = ((vec2<f32>(x_2753.x, x_2753.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2756));
            let x_2759 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
            let x_2762 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2762) + vec2<f32>(1.0f, 1.0f));
            let x_2765 : vec2<f32> = u_xlat61;
            let x_2766 : vec2<f32> = min(x_2765, vec2<f32>(0.0f, 0.0f));
            let x_2767 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec4<f32> = u_xlat14;
            let x_2772 : vec4<f32> = u_xlat14;
            let x_2775 : vec2<f32> = u_xlat63;
            let x_2776 : vec2<f32> = ((-(vec2<f32>(x_2769.x, x_2769.y)) * vec2<f32>(x_2772.x, x_2772.y)) + x_2775);
            let x_2777 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2776.x, x_2776.y, x_2777.z, x_2777.w);
            let x_2779 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2779, vec2<f32>(0.0f, 0.0f));
            let x_2781 : vec2<f32> = u_xlat61;
            let x_2783 : vec2<f32> = u_xlat61;
            let x_2785 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2781) * x_2783) + vec2<f32>(x_2785.y, x_2785.w));
            let x_2788 : vec4<f32> = u_xlat14;
            let x_2790 : vec2<f32> = (vec2<f32>(x_2788.x, x_2788.y) + vec2<f32>(1.0f, 1.0f));
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2790.x, x_2790.y, x_2791.z, x_2791.w);
            let x_2793 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2793 + vec2<f32>(1.0f, 1.0f));
            let x_2795 : vec4<f32> = u_xlat13;
            let x_2797 : vec2<f32> = (vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2798 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
            let x_2800 : vec2<f32> = u_xlat63;
            let x_2801 : vec2<f32> = (x_2800 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat14;
            let x_2806 : vec2<f32> = (vec2<f32>(x_2804.x, x_2804.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2807 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
            let x_2809 : vec2<f32> = u_xlat61;
            let x_2810 : vec2<f32> = (x_2809 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2811 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2813.y, x_2813.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2817 : f32 = u_xlat14.x;
            u_xlat15.z = x_2817;
            let x_2820 : f32 = u_xlat61.x;
            u_xlat15.w = x_2820;
            let x_2823 : f32 = u_xlat16.x;
            u_xlat13.z = x_2823;
            let x_2826 : f32 = u_xlat12.x;
            u_xlat13.w = x_2826;
            let x_2828 : vec4<f32> = u_xlat13;
            let x_2830 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2828.z, x_2828.w, x_2828.x, x_2828.z) + vec4<f32>(x_2830.z, x_2830.w, x_2830.x, x_2830.z));
            let x_2834 : f32 = u_xlat15.y;
            u_xlat14.z = x_2834;
            let x_2837 : f32 = u_xlat61.y;
            u_xlat14.w = x_2837;
            let x_2840 : f32 = u_xlat13.y;
            u_xlat16.z = x_2840;
            let x_2843 : f32 = u_xlat12.z;
            u_xlat16.w = x_2843;
            let x_2845 : vec4<f32> = u_xlat14;
            let x_2847 : vec4<f32> = u_xlat16;
            let x_2849 : vec3<f32> = (vec3<f32>(x_2845.z, x_2845.y, x_2845.w) + vec3<f32>(x_2847.z, x_2847.y, x_2847.w));
            let x_2850 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat13;
            let x_2854 : vec4<f32> = u_xlat17;
            let x_2856 : vec3<f32> = (vec3<f32>(x_2852.x, x_2852.z, x_2852.w) / vec3<f32>(x_2854.z, x_2854.w, x_2854.y));
            let x_2857 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
            let x_2859 : vec4<f32> = u_xlat13;
            let x_2861 : vec3<f32> = (vec3<f32>(x_2859.x, x_2859.y, x_2859.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2862 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2861.x, x_2861.y, x_2861.z, x_2862.w);
            let x_2864 : vec4<f32> = u_xlat16;
            let x_2866 : vec4<f32> = u_xlat12;
            let x_2868 : vec3<f32> = (vec3<f32>(x_2864.z, x_2864.y, x_2864.w) / vec3<f32>(x_2866.x, x_2866.y, x_2866.z));
            let x_2869 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2868.x, x_2868.y, x_2868.z, x_2869.w);
            let x_2871 : vec4<f32> = u_xlat14;
            let x_2873 : vec3<f32> = (vec3<f32>(x_2871.x, x_2871.y, x_2871.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2874 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2874.w);
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2879 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2881 : vec3<f32> = (vec3<f32>(x_2876.y, x_2876.x, x_2876.z) * vec3<f32>(x_2879.x, x_2879.x, x_2879.x));
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
            let x_2884 : vec4<f32> = u_xlat14;
            let x_2887 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2889 : vec3<f32> = (vec3<f32>(x_2884.x, x_2884.y, x_2884.z) * vec3<f32>(x_2887.y, x_2887.y, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);
            let x_2893 : f32 = u_xlat14.x;
            u_xlat13.w = x_2893;
            let x_2895 : vec4<f32> = u_xlat11;
            let x_2898 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2895.x, x_2895.y, x_2895.x, x_2895.y) * vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.y)) + vec4<f32>(x_2901.y, x_2901.w, x_2901.x, x_2901.w));
            let x_2904 : vec4<f32> = u_xlat11;
            let x_2907 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2904.x, x_2904.y) * vec2<f32>(x_2907.x, x_2907.y)) + vec2<f32>(x_2910.z, x_2910.w));
            let x_2914 : f32 = u_xlat13.y;
            u_xlat14.w = x_2914;
            let x_2916 : vec4<f32> = u_xlat14;
            let x_2917 : vec2<f32> = vec2<f32>(x_2916.y, x_2916.z);
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2918.x, x_2917.x, x_2918.z, x_2917.y);
            let x_2920 : vec4<f32> = u_xlat11;
            let x_2923 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2926 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y) * vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y)) + vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2926.y));
            let x_2929 : vec4<f32> = u_xlat11;
            let x_2932 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2929.x, x_2929.y, x_2929.x, x_2929.y) * vec4<f32>(x_2932.x, x_2932.y, x_2932.x, x_2932.y)) + vec4<f32>(x_2935.w, x_2935.y, x_2935.w, x_2935.z));
            let x_2938 : vec4<f32> = u_xlat11;
            let x_2941 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2938.x, x_2938.y, x_2938.x, x_2938.y) * vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.y)) + vec4<f32>(x_2944.x, x_2944.w, x_2944.z, x_2944.w));
            let x_2947 : vec4<f32> = u_xlat12;
            let x_2949 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2947.x, x_2947.x, x_2947.x, x_2947.y) * vec4<f32>(x_2949.z, x_2949.w, x_2949.y, x_2949.z));
            let x_2952 : vec4<f32> = u_xlat12;
            let x_2954 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2952.y, x_2952.y, x_2952.z, x_2952.z) * x_2954);
            let x_2957 : f32 = u_xlat12.z;
            let x_2959 : f32 = u_xlat17.y;
            u_xlat82 = (x_2957 * x_2959);
            let x_2962 : vec4<f32> = u_xlat15;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
            let x_2965 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec34;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat84 = x_2974;
            let x_2976 : vec4<f32> = u_xlat15;
            let x_2977 : vec2<f32> = vec2<f32>(x_2976.z, x_2976.w);
            let x_2979 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2987 : vec3<f32> = txVec35;
            let x_2989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
            u_xlat85 = x_2989;
            let x_2990 : f32 = u_xlat85;
            let x_2992 : f32 = u_xlat18.y;
            u_xlat85 = (x_2990 * x_2992);
            let x_2995 : f32 = u_xlat18.x;
            let x_2996 : f32 = u_xlat84;
            let x_2998 : f32 = u_xlat85;
            u_xlat84 = ((x_2995 * x_2996) + x_2998);
            let x_3001 : vec2<f32> = u_xlat61;
            let x_3003 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
            let x_3010 : vec3<f32> = txVec36;
            let x_3012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
            u_xlat85 = x_3012;
            let x_3014 : f32 = u_xlat18.z;
            let x_3015 : f32 = u_xlat85;
            let x_3017 : f32 = u_xlat84;
            u_xlat84 = ((x_3014 * x_3015) + x_3017);
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3021 : vec2<f32> = vec2<f32>(x_3020.x, x_3020.y);
            let x_3023 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
            let x_3030 : vec3<f32> = txVec37;
            let x_3032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
            u_xlat85 = x_3032;
            let x_3034 : f32 = u_xlat18.w;
            let x_3035 : f32 = u_xlat85;
            let x_3037 : f32 = u_xlat84;
            u_xlat84 = ((x_3034 * x_3035) + x_3037);
            let x_3040 : vec4<f32> = u_xlat16;
            let x_3041 : vec2<f32> = vec2<f32>(x_3040.x, x_3040.y);
            let x_3043 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
            let x_3050 : vec3<f32> = txVec38;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat85 = x_3052;
            let x_3054 : f32 = u_xlat19.x;
            let x_3055 : f32 = u_xlat85;
            let x_3057 : f32 = u_xlat84;
            u_xlat84 = ((x_3054 * x_3055) + x_3057);
            let x_3060 : vec4<f32> = u_xlat16;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.z, x_3060.w);
            let x_3063 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec39;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat85 = x_3072;
            let x_3074 : f32 = u_xlat19.y;
            let x_3075 : f32 = u_xlat85;
            let x_3077 : f32 = u_xlat84;
            u_xlat84 = ((x_3074 * x_3075) + x_3077);
            let x_3080 : vec4<f32> = u_xlat14;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec40;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat85 = x_3092;
            let x_3094 : f32 = u_xlat19.z;
            let x_3095 : f32 = u_xlat85;
            let x_3097 : f32 = u_xlat84;
            u_xlat84 = ((x_3094 * x_3095) + x_3097);
            let x_3100 : vec4<f32> = u_xlat13;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.x, x_3100.y);
            let x_3103 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec41;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat85 = x_3112;
            let x_3114 : f32 = u_xlat19.w;
            let x_3115 : f32 = u_xlat85;
            let x_3117 : f32 = u_xlat84;
            u_xlat84 = ((x_3114 * x_3115) + x_3117);
            let x_3120 : vec4<f32> = u_xlat13;
            let x_3121 : vec2<f32> = vec2<f32>(x_3120.z, x_3120.w);
            let x_3123 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3130 : vec3<f32> = txVec42;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat85 = x_3132;
            let x_3133 : f32 = u_xlat82;
            let x_3134 : f32 = u_xlat85;
            let x_3136 : f32 = u_xlat84;
            u_xlat81 = ((x_3133 * x_3134) + x_3136);
          } else {
            let x_3139 : vec4<f32> = u_xlat10;
            let x_3142 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3145 : vec2<f32> = ((vec2<f32>(x_3139.x, x_3139.y) * vec2<f32>(x_3142.z, x_3142.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3146 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3145.x, x_3145.y, x_3146.z, x_3146.w);
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3150 : vec2<f32> = floor(vec2<f32>(x_3148.x, x_3148.y));
            let x_3151 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3150.x, x_3150.y, x_3151.z, x_3151.w);
            let x_3153 : vec4<f32> = u_xlat10;
            let x_3156 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(x_3156.z, x_3156.w)) + -(vec2<f32>(x_3159.x, x_3159.y)));
            let x_3163 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3163.x, x_3163.x, x_3163.y, x_3163.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3166 : vec4<f32> = u_xlat12;
            let x_3168 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3166.x, x_3166.x, x_3166.z, x_3166.z) * vec4<f32>(x_3168.x, x_3168.x, x_3168.z, x_3168.z));
            let x_3171 : vec4<f32> = u_xlat13;
            let x_3173 : vec2<f32> = (vec2<f32>(x_3171.y, x_3171.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3174.x, x_3173.x, x_3174.z, x_3173.y);
            let x_3176 : vec4<f32> = u_xlat13;
            let x_3179 : vec2<f32> = u_xlat61;
            let x_3181 : vec2<f32> = ((vec2<f32>(x_3176.x, x_3176.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3179));
            let x_3182 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3181.x, x_3182.y, x_3181.y, x_3182.w);
            let x_3184 : vec2<f32> = u_xlat61;
            let x_3186 : vec2<f32> = (-(x_3184) + vec2<f32>(1.0f, 1.0f));
            let x_3187 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3186.x, x_3186.y, x_3187.z, x_3187.w);
            let x_3189 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3189, vec2<f32>(0.0f, 0.0f));
            let x_3191 : vec2<f32> = u_xlat63;
            let x_3193 : vec2<f32> = u_xlat63;
            let x_3195 : vec4<f32> = u_xlat13;
            let x_3197 : vec2<f32> = ((-(x_3191) * x_3193) + vec2<f32>(x_3195.x, x_3195.y));
            let x_3198 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3197.x, x_3197.y, x_3198.z, x_3198.w);
            let x_3200 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3200, vec2<f32>(0.0f, 0.0f));
            let x_3203 : vec2<f32> = u_xlat63;
            let x_3205 : vec2<f32> = u_xlat63;
            let x_3207 : vec4<f32> = u_xlat12;
            let x_3209 : vec2<f32> = ((-(x_3203) * x_3205) + vec2<f32>(x_3207.y, x_3207.w));
            let x_3210 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3209.x, x_3210.y, x_3209.y);
            let x_3212 : vec4<f32> = u_xlat13;
            let x_3214 : vec2<f32> = (vec2<f32>(x_3212.x, x_3212.y) + vec2<f32>(2.0f, 2.0f));
            let x_3215 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3217 : vec3<f32> = u_xlat37;
            let x_3219 : vec2<f32> = (vec2<f32>(x_3217.x, x_3217.z) + vec2<f32>(2.0f, 2.0f));
            let x_3220 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3220.x, x_3219.x, x_3220.z, x_3219.y);
            let x_3223 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3223 * 0.08163200318813323975f);
            let x_3226 : vec4<f32> = u_xlat12;
            let x_3228 : vec3<f32> = (vec3<f32>(x_3226.z, x_3226.x, x_3226.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3229 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3228.x, x_3228.y, x_3228.z, x_3229.w);
            let x_3231 : vec4<f32> = u_xlat13;
            let x_3233 : vec2<f32> = (vec2<f32>(x_3231.x, x_3231.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3234 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3233.x, x_3233.y, x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat16.y;
            u_xlat15.x = x_3237;
            let x_3239 : vec2<f32> = u_xlat61;
            let x_3242 : vec2<f32> = ((vec2<f32>(x_3239.x, x_3239.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3243 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3243.x, x_3242.x, x_3243.z, x_3242.y);
            let x_3245 : vec2<f32> = u_xlat61;
            let x_3248 : vec2<f32> = ((vec2<f32>(x_3245.x, x_3245.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3249 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3248.x, x_3249.y, x_3248.y, x_3249.w);
            let x_3252 : f32 = u_xlat12.x;
            u_xlat13.y = x_3252;
            let x_3255 : f32 = u_xlat14.y;
            u_xlat13.w = x_3255;
            let x_3257 : vec4<f32> = u_xlat13;
            let x_3258 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3257 + x_3258);
            let x_3260 : vec2<f32> = u_xlat61;
            let x_3263 : vec2<f32> = ((vec2<f32>(x_3260.y, x_3260.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3264 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3264.x, x_3263.x, x_3264.z, x_3263.y);
            let x_3266 : vec2<f32> = u_xlat61;
            let x_3269 : vec2<f32> = ((vec2<f32>(x_3266.y, x_3266.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3270 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3269.x, x_3270.y, x_3269.y, x_3270.w);
            let x_3273 : f32 = u_xlat12.y;
            u_xlat14.y = x_3273;
            let x_3275 : vec4<f32> = u_xlat14;
            let x_3276 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3275 + x_3276);
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3279 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3278 / x_3279);
            let x_3281 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3281 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3283 : vec4<f32> = u_xlat14;
            let x_3284 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3283 / x_3284);
            let x_3286 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3286 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3288 : vec4<f32> = u_xlat13;
            let x_3291 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3288.w, x_3288.x, x_3288.y, x_3288.z) * vec4<f32>(x_3291.x, x_3291.x, x_3291.x, x_3291.x));
            let x_3294 : vec4<f32> = u_xlat14;
            let x_3297 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3294.x, x_3294.w, x_3294.y, x_3294.z) * vec4<f32>(x_3297.y, x_3297.y, x_3297.y, x_3297.y));
            let x_3300 : vec4<f32> = u_xlat13;
            let x_3301 : vec3<f32> = vec3<f32>(x_3300.y, x_3300.z, x_3300.w);
            let x_3302 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3301.x, x_3302.y, x_3301.y, x_3301.z);
            let x_3305 : f32 = u_xlat14.x;
            u_xlat16.y = x_3305;
            let x_3307 : vec4<f32> = u_xlat11;
            let x_3310 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3313 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3307.x, x_3307.y, x_3307.x, x_3307.y) * vec4<f32>(x_3310.x, x_3310.y, x_3310.x, x_3310.y)) + vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3313.y));
            let x_3316 : vec4<f32> = u_xlat11;
            let x_3319 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3322 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3316.x, x_3316.y) * vec2<f32>(x_3319.x, x_3319.y)) + vec2<f32>(x_3322.w, x_3322.y));
            let x_3326 : f32 = u_xlat16.y;
            u_xlat13.y = x_3326;
            let x_3329 : f32 = u_xlat14.z;
            u_xlat16.y = x_3329;
            let x_3331 : vec4<f32> = u_xlat11;
            let x_3334 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3337 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3331.x, x_3331.y, x_3331.x, x_3331.y) * vec4<f32>(x_3334.x, x_3334.y, x_3334.x, x_3334.y)) + vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3337.y));
            let x_3340 : vec4<f32> = u_xlat11;
            let x_3343 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3346 : vec4<f32> = u_xlat16;
            let x_3348 : vec2<f32> = ((vec2<f32>(x_3340.x, x_3340.y) * vec2<f32>(x_3343.x, x_3343.y)) + vec2<f32>(x_3346.w, x_3346.y));
            let x_3349 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3348.x, x_3348.y, x_3349.z, x_3349.w);
            let x_3352 : f32 = u_xlat16.y;
            u_xlat13.z = x_3352;
            let x_3354 : vec4<f32> = u_xlat11;
            let x_3357 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3354.x, x_3354.y, x_3354.x, x_3354.y) * vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y)) + vec4<f32>(x_3360.x, x_3360.y, x_3360.x, x_3360.z));
            let x_3364 : f32 = u_xlat14.w;
            u_xlat16.y = x_3364;
            let x_3367 : vec4<f32> = u_xlat11;
            let x_3370 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3373 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3367.x, x_3367.y, x_3367.x, x_3367.y) * vec4<f32>(x_3370.x, x_3370.y, x_3370.x, x_3370.y)) + vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3373.y));
            let x_3377 : vec4<f32> = u_xlat11;
            let x_3380 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3383 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(x_3380.x, x_3380.y)) + vec2<f32>(x_3383.w, x_3383.y));
            let x_3387 : f32 = u_xlat16.y;
            u_xlat13.w = x_3387;
            let x_3390 : vec4<f32> = u_xlat11;
            let x_3393 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3396 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3390.x, x_3390.y) * vec2<f32>(x_3393.x, x_3393.y)) + vec2<f32>(x_3396.x, x_3396.w));
            let x_3399 : vec4<f32> = u_xlat16;
            let x_3400 : vec3<f32> = vec3<f32>(x_3399.x, x_3399.z, x_3399.w);
            let x_3401 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3400.x, x_3401.y, x_3400.y, x_3400.z);
            let x_3403 : vec4<f32> = u_xlat11;
            let x_3406 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3409 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3403.x, x_3403.y, x_3403.x, x_3403.y) * vec4<f32>(x_3406.x, x_3406.y, x_3406.x, x_3406.y)) + vec4<f32>(x_3409.x, x_3409.y, x_3409.z, x_3409.y));
            let x_3413 : vec4<f32> = u_xlat11;
            let x_3416 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3419 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3413.x, x_3413.y) * vec2<f32>(x_3416.x, x_3416.y)) + vec2<f32>(x_3419.w, x_3419.y));
            let x_3423 : f32 = u_xlat13.x;
            u_xlat14.x = x_3423;
            let x_3425 : vec4<f32> = u_xlat11;
            let x_3428 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat14;
            let x_3433 : vec2<f32> = ((vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(x_3428.x, x_3428.y)) + vec2<f32>(x_3431.x, x_3431.y));
            let x_3434 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3433.x, x_3433.y, x_3434.z, x_3434.w);
            let x_3437 : vec4<f32> = u_xlat12;
            let x_3439 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3437.x, x_3437.x, x_3437.x, x_3437.x) * x_3439);
            let x_3442 : vec4<f32> = u_xlat12;
            let x_3444 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3442.y, x_3442.y, x_3442.y, x_3442.y) * x_3444);
            let x_3447 : vec4<f32> = u_xlat12;
            let x_3449 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3447.z, x_3447.z, x_3447.z, x_3447.z) * x_3449);
            let x_3451 : vec4<f32> = u_xlat12;
            let x_3453 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3451.w, x_3451.w, x_3451.w, x_3451.w) * x_3453);
            let x_3456 : vec4<f32> = u_xlat17;
            let x_3457 : vec2<f32> = vec2<f32>(x_3456.x, x_3456.y);
            let x_3459 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3457.x, x_3457.y, x_3459);
            let x_3466 : vec3<f32> = txVec43;
            let x_3468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3466.xy, x_3466.z);
            u_xlat82 = x_3468;
            let x_3470 : vec4<f32> = u_xlat17;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.z, x_3470.w);
            let x_3473 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec44;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat84 = x_3482;
            let x_3483 : f32 = u_xlat84;
            let x_3485 : f32 = u_xlat22.y;
            u_xlat84 = (x_3483 * x_3485);
            let x_3488 : f32 = u_xlat22.x;
            let x_3489 : f32 = u_xlat82;
            let x_3491 : f32 = u_xlat84;
            u_xlat82 = ((x_3488 * x_3489) + x_3491);
            let x_3494 : vec2<f32> = u_xlat61;
            let x_3496 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec45;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat84 = x_3505;
            let x_3507 : f32 = u_xlat22.z;
            let x_3508 : f32 = u_xlat84;
            let x_3510 : f32 = u_xlat82;
            u_xlat82 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec4<f32> = u_xlat20;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.x, x_3513.y);
            let x_3516 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec46;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat84 = x_3525;
            let x_3527 : f32 = u_xlat22.w;
            let x_3528 : f32 = u_xlat84;
            let x_3530 : f32 = u_xlat82;
            u_xlat82 = ((x_3527 * x_3528) + x_3530);
            let x_3533 : vec4<f32> = u_xlat18;
            let x_3534 : vec2<f32> = vec2<f32>(x_3533.x, x_3533.y);
            let x_3536 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3534.x, x_3534.y, x_3536);
            let x_3543 : vec3<f32> = txVec47;
            let x_3545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3543.xy, x_3543.z);
            u_xlat84 = x_3545;
            let x_3547 : f32 = u_xlat23.x;
            let x_3548 : f32 = u_xlat84;
            let x_3550 : f32 = u_xlat82;
            u_xlat82 = ((x_3547 * x_3548) + x_3550);
            let x_3553 : vec4<f32> = u_xlat18;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.z, x_3553.w);
            let x_3556 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec48;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat84 = x_3565;
            let x_3567 : f32 = u_xlat23.y;
            let x_3568 : f32 = u_xlat84;
            let x_3570 : f32 = u_xlat82;
            u_xlat82 = ((x_3567 * x_3568) + x_3570);
            let x_3573 : vec4<f32> = u_xlat19;
            let x_3574 : vec2<f32> = vec2<f32>(x_3573.x, x_3573.y);
            let x_3576 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
            let x_3583 : vec3<f32> = txVec49;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat84 = x_3585;
            let x_3587 : f32 = u_xlat23.z;
            let x_3588 : f32 = u_xlat84;
            let x_3590 : f32 = u_xlat82;
            u_xlat82 = ((x_3587 * x_3588) + x_3590);
            let x_3593 : vec4<f32> = u_xlat20;
            let x_3594 : vec2<f32> = vec2<f32>(x_3593.z, x_3593.w);
            let x_3596 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3594.x, x_3594.y, x_3596);
            let x_3603 : vec3<f32> = txVec50;
            let x_3605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3603.xy, x_3603.z);
            u_xlat84 = x_3605;
            let x_3607 : f32 = u_xlat23.w;
            let x_3608 : f32 = u_xlat84;
            let x_3610 : f32 = u_xlat82;
            u_xlat82 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec4<f32> = u_xlat21;
            let x_3614 : vec2<f32> = vec2<f32>(x_3613.x, x_3613.y);
            let x_3616 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec51;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat84 = x_3625;
            let x_3627 : f32 = u_xlat24.x;
            let x_3628 : f32 = u_xlat84;
            let x_3630 : f32 = u_xlat82;
            u_xlat82 = ((x_3627 * x_3628) + x_3630);
            let x_3633 : vec4<f32> = u_xlat21;
            let x_3634 : vec2<f32> = vec2<f32>(x_3633.z, x_3633.w);
            let x_3636 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
            let x_3643 : vec3<f32> = txVec52;
            let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
            u_xlat84 = x_3645;
            let x_3647 : f32 = u_xlat24.y;
            let x_3648 : f32 = u_xlat84;
            let x_3650 : f32 = u_xlat82;
            u_xlat82 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec2<f32> = u_xlat38;
            let x_3655 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec53;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat84 = x_3664;
            let x_3666 : f32 = u_xlat24.z;
            let x_3667 : f32 = u_xlat84;
            let x_3669 : f32 = u_xlat82;
            u_xlat82 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec2<f32> = u_xlat69;
            let x_3674 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3672.x, x_3672.y, x_3674);
            let x_3681 : vec3<f32> = txVec54;
            let x_3683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3681.xy, x_3681.z);
            u_xlat84 = x_3683;
            let x_3685 : f32 = u_xlat24.w;
            let x_3686 : f32 = u_xlat84;
            let x_3688 : f32 = u_xlat82;
            u_xlat82 = ((x_3685 * x_3686) + x_3688);
            let x_3691 : vec4<f32> = u_xlat16;
            let x_3692 : vec2<f32> = vec2<f32>(x_3691.x, x_3691.y);
            let x_3694 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3692.x, x_3692.y, x_3694);
            let x_3701 : vec3<f32> = txVec55;
            let x_3703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3701.xy, x_3701.z);
            u_xlat84 = x_3703;
            let x_3705 : f32 = u_xlat12.x;
            let x_3706 : f32 = u_xlat84;
            let x_3708 : f32 = u_xlat82;
            u_xlat82 = ((x_3705 * x_3706) + x_3708);
            let x_3711 : vec4<f32> = u_xlat16;
            let x_3712 : vec2<f32> = vec2<f32>(x_3711.z, x_3711.w);
            let x_3714 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3712.x, x_3712.y, x_3714);
            let x_3721 : vec3<f32> = txVec56;
            let x_3723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3721.xy, x_3721.z);
            u_xlat84 = x_3723;
            let x_3725 : f32 = u_xlat12.y;
            let x_3726 : f32 = u_xlat84;
            let x_3728 : f32 = u_xlat82;
            u_xlat82 = ((x_3725 * x_3726) + x_3728);
            let x_3731 : vec2<f32> = u_xlat64;
            let x_3733 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3731.x, x_3731.y, x_3733);
            let x_3740 : vec3<f32> = txVec57;
            let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
            u_xlat84 = x_3742;
            let x_3744 : f32 = u_xlat12.z;
            let x_3745 : f32 = u_xlat84;
            let x_3747 : f32 = u_xlat82;
            u_xlat82 = ((x_3744 * x_3745) + x_3747);
            let x_3750 : vec4<f32> = u_xlat11;
            let x_3751 : vec2<f32> = vec2<f32>(x_3750.x, x_3750.y);
            let x_3753 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec58;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat84 = x_3762;
            let x_3764 : f32 = u_xlat12.w;
            let x_3765 : f32 = u_xlat84;
            let x_3767 : f32 = u_xlat82;
            u_xlat81 = ((x_3764 * x_3765) + x_3767);
          }
        }
      } else {
        let x_3771 : vec4<f32> = u_xlat10;
        let x_3772 : vec2<f32> = vec2<f32>(x_3771.x, x_3771.y);
        let x_3774 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3772.x, x_3772.y, x_3774);
        let x_3781 : vec3<f32> = txVec59;
        let x_3783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3781.xy, x_3781.z);
        u_xlat81 = x_3783;
      }
      let x_3784 : i32 = u_xlati28;
      let x_3786 : f32 = x_508.x_AdditionalShadowParams[x_3784].x;
      u_xlat82 = (1.0f + -(x_3786));
      let x_3789 : f32 = u_xlat81;
      let x_3790 : i32 = u_xlati28;
      let x_3792 : f32 = x_508.x_AdditionalShadowParams[x_3790].x;
      let x_3794 : f32 = u_xlat82;
      u_xlat81 = ((x_3789 * x_3792) + x_3794);
      let x_3797 : f32 = u_xlat10.z;
      u_xlatb82 = (0.0f >= x_3797);
      let x_3801 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3801 >= 1.0f);
      let x_3803 : bool = u_xlatb82;
      let x_3804 : bool = u_xlatb84;
      u_xlatb82 = (x_3803 | x_3804);
      let x_3806 : bool = u_xlatb82;
      let x_3807 : f32 = u_xlat81;
      u_xlat81 = select(x_3807, 1.0f, x_3806);
    } else {
      u_xlat81 = 1.0f;
    }
    let x_3810 : f32 = u_xlat81;
    u_xlat82 = (-(x_3810) + 1.0f);
    let x_3813 : f32 = u_xlat76;
    let x_3814 : f32 = u_xlat82;
    let x_3816 : f32 = u_xlat81;
    u_xlat81 = ((x_3813 * x_3814) + x_3816);
    let x_3818 : f32 = u_xlat79;
    let x_3819 : f32 = u_xlat81;
    u_xlat79 = (x_3818 * x_3819);
    let x_3821 : vec4<f32> = u_xlat1;
    let x_3823 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_3821.x, x_3821.y, x_3821.z), vec3<f32>(x_3823.x, x_3823.y, x_3823.z));
    let x_3826 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3826, 0.0f, 1.0f);
    let x_3828 : f32 = u_xlat79;
    let x_3829 : f32 = u_xlat81;
    u_xlat79 = (x_3828 * x_3829);
    let x_3831 : f32 = u_xlat79;
    let x_3833 : i32 = u_xlati28;
    let x_3835 : vec4<f32> = x_2404.x_AdditionalLightsColor[x_3833];
    let x_3837 : vec3<f32> = (vec3<f32>(x_3831, x_3831, x_3831) * vec3<f32>(x_3835.x, x_3835.y, x_3835.z));
    let x_3838 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3837.x, x_3837.y, x_3837.z, x_3838.w);
    let x_3840 : vec3<f32> = u_xlat33;
    let x_3841 : f32 = u_xlat80;
    let x_3844 : vec3<f32> = u_xlat4;
    u_xlat33 = ((x_3840 * vec3<f32>(x_3841, x_3841, x_3841)) + x_3844);
    let x_3846 : vec3<f32> = u_xlat33;
    let x_3847 : vec3<f32> = u_xlat33;
    u_xlat28.x = dot(x_3846, x_3847);
    let x_3851 : f32 = u_xlat28.x;
    u_xlat28.x = max(x_3851, 1.17549435e-38f);
    let x_3855 : f32 = u_xlat28.x;
    u_xlat28.x = inverseSqrt(x_3855);
    let x_3858 : vec3<f32> = u_xlat28;
    let x_3860 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3858.x, x_3858.x, x_3858.x) * x_3860);
    let x_3862 : vec4<f32> = u_xlat1;
    let x_3864 : vec3<f32> = u_xlat33;
    u_xlat28.x = dot(vec3<f32>(x_3862.x, x_3862.y, x_3862.z), x_3864);
    let x_3868 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_3868, 0.0f, 1.0f);
    let x_3871 : vec4<f32> = u_xlat9;
    let x_3873 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_3871.x, x_3871.y, x_3871.z), x_3873);
    let x_3875 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3875, 0.0f, 1.0f);
    let x_3878 : f32 = u_xlat28.x;
    let x_3880 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3878 * x_3880);
    let x_3884 : f32 = u_xlat28.x;
    let x_3886 : f32 = u_xlat8.x;
    u_xlat28.x = ((x_3884 * x_3886) + 1.00001001358032226562f);
    let x_3890 : f32 = u_xlat79;
    let x_3891 : f32 = u_xlat79;
    u_xlat79 = (x_3890 * x_3891);
    let x_3894 : f32 = u_xlat28.x;
    let x_3896 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3894 * x_3896);
    let x_3899 : f32 = u_xlat79;
    u_xlat79 = max(x_3899, 0.10000000149011611938f);
    let x_3902 : f32 = u_xlat28.x;
    let x_3903 : f32 = u_xlat79;
    u_xlat28.x = (x_3902 * x_3903);
    let x_3906 : f32 = u_xlat77;
    let x_3908 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3906 * x_3908);
    let x_3911 : f32 = u_xlat27;
    let x_3913 : f32 = u_xlat28.x;
    u_xlat28.x = (x_3911 / x_3913);
    let x_3916 : vec4<f32> = u_xlat0;
    let x_3918 : vec3<f32> = u_xlat28;
    let x_3921 : vec3<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_3916.x, x_3916.y, x_3916.z) * vec3<f32>(x_3918.x, x_3918.x, x_3918.x)) + x_3921);
    let x_3923 : vec3<f32> = u_xlat33;
    let x_3924 : vec4<f32> = u_xlat10;
    let x_3927 : vec4<f32> = u_xlat7;
    let x_3929 : vec3<f32> = ((x_3923 * vec3<f32>(x_3924.x, x_3924.y, x_3924.z)) + vec3<f32>(x_3927.x, x_3927.y, x_3927.z));
    let x_3930 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3929.x, x_3929.y, x_3929.z, x_3930.w);

    continuing {
      let x_3932 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3932 + bitcast<u32>(1i));
    }
  }
  let x_3934 : vec4<f32> = u_xlat5;
  let x_3936 : f32 = u_xlat52;
  let x_3939 : vec4<f32> = u_xlat3;
  let x_3941 : vec3<f32> = ((vec3<f32>(x_3934.x, x_3934.y, x_3934.z) * vec3<f32>(x_3936, x_3936, x_3936)) + vec3<f32>(x_3939.x, x_3939.z, x_3939.w));
  let x_3942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
  let x_3946 : vec4<f32> = u_xlat7;
  let x_3948 : vec4<f32> = u_xlat0;
  let x_3950 : vec3<f32> = (vec3<f32>(x_3946.x, x_3946.y, x_3946.z) + vec3<f32>(x_3948.x, x_3948.y, x_3948.z));
  let x_3951 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3950.x, x_3950.y, x_3950.z, x_3951.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


