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

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(3) var<uniform> x_665 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2303 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2443 : f32;
  var x_2453 : f32;
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
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb75;
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
  u_xlat75 = (x_490 * x_492);
  let x_495 : f32 = x_29.unity_MatrixV[0i].z;
  let x_497 : f32 = vs_INTERP7.x;
  let x_499 : f32 = u_xlat75;
  u_xlat75 = ((x_495 * x_497) + x_499);
  let x_502 : f32 = x_29.unity_MatrixV[2i].z;
  let x_504 : f32 = vs_INTERP7.z;
  let x_506 : f32 = u_xlat75;
  u_xlat75 = ((x_502 * x_504) + x_506);
  let x_508 : f32 = u_xlat75;
  let x_510 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat75 = (x_508 + x_510);
  let x_512 : f32 = u_xlat75;
  let x_516 : f32 = x_29.x_ProjectionParams.y;
  u_xlat75 = (-(x_512) + -(x_516));
  let x_519 : f32 = u_xlat75;
  u_xlat75 = max(x_519, 0.0f);
  let x_521 : f32 = u_xlat75;
  let x_524 : f32 = x_29.unity_FogParams.x;
  u_xlat75 = (x_521 * x_524);
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
  u_xlat76 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : f32 = u_xlat76;
  u_xlat76 = (x_559 + 0.5f);
  let x_562 : f32 = u_xlat76;
  let x_564 : vec3<f32> = u_xlat5;
  let x_565 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = u_xlat4.w;
  u_xlat76 = max(x_569, 0.00009999999747378752f);
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : f32 = u_xlat76;
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
  u_xlat76 = ((-(x_591) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_597 : f32 = u_xlat76;
  let x_600 : f32 = u_xlat2.y;
  u_xlat77 = (-(x_597) + x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat76;
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
  u_xlat76 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat76;
  let x_629 : f32 = u_xlat76;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat27 = (x_639 * x_641);
  let x_643 : f32 = u_xlat77;
  u_xlat77 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat77;
  u_xlat77 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat78 = ((x_649 * 4.0f) + 2.0f);
  let x_655 : f32 = u_xlat2.z;
  u_xlat52 = min(x_655, 1.0f);
  let x_668 : f32 = x_665.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_668);
  let x_670 : bool = u_xlatb79;
  if (x_670) {
    let x_674 : f32 = x_665.x_MainLightShadowParams.y;
    u_xlatb79 = (x_674 == 1.0f);
    let x_676 : bool = u_xlatb79;
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
      u_xlat79 = dot(x_759, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_766 : f32 = x_665.x_MainLightShadowParams.y;
      u_xlatb80 = (x_766 == 2.0f);
      let x_768 : bool = u_xlatb80;
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
        u_xlat56 = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_790.z, x_790.w)) + -(vec2<f32>(x_793.x, x_793.y)));
        let x_797 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_797.x, x_797.x, x_797.y, x_797.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_802 : vec4<f32> = u_xlat7;
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_802.x, x_802.x, x_802.z, x_802.z) * vec4<f32>(x_804.x, x_804.x, x_804.z, x_804.z));
        let x_807 : vec4<f32> = u_xlat8;
        let x_811 : vec2<f32> = (vec2<f32>(x_807.y, x_807.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_812.y, x_811.y, x_812.w);
        let x_814 : vec4<f32> = u_xlat8;
        let x_817 : vec2<f32> = u_xlat56;
        let x_819 : vec2<f32> = ((vec2<f32>(x_814.x, x_814.z) * vec2<f32>(0.5f, 0.5f)) + -(x_817));
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_823 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_823) + vec2<f32>(1.0f, 1.0f));
        let x_828 : vec2<f32> = u_xlat56;
        let x_830 : vec2<f32> = min(x_828, vec2<f32>(0.0f, 0.0f));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat9;
        let x_836 : vec4<f32> = u_xlat9;
        let x_839 : vec2<f32> = u_xlat58;
        let x_840 : vec2<f32> = ((-(vec2<f32>(x_833.x, x_833.y)) * vec2<f32>(x_836.x, x_836.y)) + x_839);
        let x_841 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_843, vec2<f32>(0.0f, 0.0f));
        let x_845 : vec2<f32> = u_xlat56;
        let x_847 : vec2<f32> = u_xlat56;
        let x_849 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_845) * x_847) + vec2<f32>(x_849.y, x_849.w));
        let x_852 : vec4<f32> = u_xlat9;
        let x_854 : vec2<f32> = (vec2<f32>(x_852.x, x_852.y) + vec2<f32>(1.0f, 1.0f));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_857 + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec4<f32> = u_xlat8;
        let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_865 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec2<f32> = u_xlat58;
        let x_868 : vec2<f32> = (x_867 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_873 : vec2<f32> = (vec2<f32>(x_871.x, x_871.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_877 : vec2<f32> = u_xlat56;
        let x_878 : vec2<f32> = (x_877 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_881.y, x_881.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_885 : f32 = u_xlat9.x;
        u_xlat10.z = x_885;
        let x_888 : f32 = u_xlat56.x;
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
        let x_906 : f32 = u_xlat56.y;
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
        u_xlat56 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.z, x_982.w));
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
        u_xlat80 = (x_1032 * x_1034);
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
        u_xlat31 = x_1065;
        let x_1066 : f32 = u_xlat31;
        let x_1068 : f32 = u_xlat13.y;
        u_xlat31 = (x_1066 * x_1068);
        let x_1071 : f32 = u_xlat13.x;
        let x_1073 : f32 = u_xlat6.x;
        let x_1075 : f32 = u_xlat31;
        u_xlat6.x = ((x_1071 * x_1073) + x_1075);
        let x_1079 : vec2<f32> = u_xlat56;
        let x_1081 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec6;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
        u_xlat31 = x_1090;
        let x_1092 : f32 = u_xlat13.z;
        let x_1093 : f32 = u_xlat31;
        let x_1096 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1092 * x_1093) + x_1096);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.x, x_1100.y);
        let x_1103 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec7;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1110.xy, x_1110.z);
        u_xlat31 = x_1112;
        let x_1114 : f32 = u_xlat13.w;
        let x_1115 : f32 = u_xlat31;
        let x_1118 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1114 * x_1115) + x_1118);
        let x_1122 : vec4<f32> = u_xlat11;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec8;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1132.xy, x_1132.z);
        u_xlat31 = x_1134;
        let x_1136 : f32 = u_xlat14.x;
        let x_1137 : f32 = u_xlat31;
        let x_1140 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1136 * x_1137) + x_1140);
        let x_1144 : vec4<f32> = u_xlat11;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec9;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1154.xy, x_1154.z);
        u_xlat31 = x_1156;
        let x_1158 : f32 = u_xlat14.y;
        let x_1159 : f32 = u_xlat31;
        let x_1162 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1158 * x_1159) + x_1162);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec10;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1176.xy, x_1176.z);
        u_xlat31 = x_1178;
        let x_1180 : f32 = u_xlat14.z;
        let x_1181 : f32 = u_xlat31;
        let x_1184 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1180 * x_1181) + x_1184);
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.x, x_1188.y);
        let x_1191 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec11;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat31 = x_1200;
        let x_1202 : f32 = u_xlat14.w;
        let x_1203 : f32 = u_xlat31;
        let x_1206 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1202 * x_1203) + x_1206);
        let x_1210 : vec4<f32> = u_xlat8;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.z, x_1210.w);
        let x_1213 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec12;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1220.xy, x_1220.z);
        u_xlat31 = x_1222;
        let x_1223 : f32 = u_xlat80;
        let x_1224 : f32 = u_xlat31;
        let x_1227 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1223 * x_1224) + x_1227);
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
        u_xlat56 = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(x_1247.z, x_1247.w)) + -(vec2<f32>(x_1250.x, x_1250.y)));
        let x_1254 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1254.x, x_1254.x, x_1254.y, x_1254.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1257 : vec4<f32> = u_xlat7;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1257.x, x_1257.x, x_1257.z, x_1257.z) * vec4<f32>(x_1259.x, x_1259.x, x_1259.z, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1266 : vec2<f32> = (vec2<f32>(x_1262.y, x_1262.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1267.x, x_1266.x, x_1267.z, x_1266.y);
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1272 : vec2<f32> = u_xlat56;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1272));
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1274.x, x_1275.y, x_1274.y, x_1275.w);
        let x_1277 : vec2<f32> = u_xlat56;
        let x_1279 : vec2<f32> = (-(x_1277) + vec2<f32>(1.0f, 1.0f));
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1282 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1282, vec2<f32>(0.0f, 0.0f));
        let x_1284 : vec2<f32> = u_xlat58;
        let x_1286 : vec2<f32> = u_xlat58;
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1290 : vec2<f32> = ((-(x_1284) * x_1286) + vec2<f32>(x_1288.x, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
        let x_1293 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1293, vec2<f32>(0.0f, 0.0f));
        let x_1296 : vec2<f32> = u_xlat58;
        let x_1298 : vec2<f32> = u_xlat58;
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1302 : vec2<f32> = ((-(x_1296) * x_1298) + vec2<f32>(x_1300.y, x_1300.w));
        let x_1303 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1302.x, x_1303.y, x_1302.y);
        let x_1305 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = (vec2<f32>(x_1305.x, x_1305.y) + vec2<f32>(2.0f, 2.0f));
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec3<f32> = u_xlat32;
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
        let x_1335 : vec2<f32> = u_xlat56;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1335.x, x_1335.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1343.x, x_1342.x, x_1343.z, x_1342.y);
        let x_1345 : vec2<f32> = u_xlat56;
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
        let x_1361 : vec2<f32> = u_xlat56;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1361.y, x_1361.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1365.x, x_1364.x, x_1365.z, x_1364.y);
        let x_1367 : vec2<f32> = u_xlat56;
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
        u_xlat56 = ((vec2<f32>(x_1421.x, x_1421.y) * vec2<f32>(x_1424.x, x_1424.y)) + vec2<f32>(x_1427.w, x_1427.y));
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
        u_xlat33 = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1489.w, x_1489.y));
        let x_1493 : f32 = u_xlat11.y;
        u_xlat8.w = x_1493;
        let x_1496 : vec4<f32> = u_xlat6;
        let x_1499 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1502 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1496.x, x_1496.y) * vec2<f32>(x_1499.x, x_1499.y)) + vec2<f32>(x_1502.x, x_1502.w));
        let x_1505 : vec4<f32> = u_xlat11;
        let x_1506 : vec3<f32> = vec3<f32>(x_1505.x, x_1505.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1506.x, x_1507.y, x_1506.y, x_1506.z);
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1515.y));
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1525.w, x_1525.y));
        let x_1529 : f32 = u_xlat8.x;
        u_xlat9.x = x_1529;
        let x_1531 : vec4<f32> = u_xlat6;
        let x_1534 : vec4<f32> = x_665.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1539 : vec2<f32> = ((vec2<f32>(x_1531.x, x_1531.y) * vec2<f32>(x_1534.x, x_1534.y)) + vec2<f32>(x_1537.x, x_1537.y));
        let x_1540 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
        let x_1543 : vec4<f32> = u_xlat7;
        let x_1545 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1543.x, x_1543.x, x_1543.x, x_1543.x) * x_1545);
        let x_1548 : vec4<f32> = u_xlat7;
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1548.y, x_1548.y, x_1548.y, x_1548.y) * x_1550);
        let x_1553 : vec4<f32> = u_xlat7;
        let x_1555 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1553.z, x_1553.z, x_1553.z, x_1553.z) * x_1555);
        let x_1557 : vec4<f32> = u_xlat7;
        let x_1559 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1557.w, x_1557.w, x_1557.w, x_1557.w) * x_1559);
        let x_1562 : vec4<f32> = u_xlat12;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec13;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat80 = x_1574;
        let x_1576 : vec4<f32> = u_xlat12;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec14;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat8.x = x_1588;
        let x_1591 : f32 = u_xlat8.x;
        let x_1593 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1591 * x_1593);
        let x_1597 : f32 = u_xlat17.x;
        let x_1598 : f32 = u_xlat80;
        let x_1601 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1597 * x_1598) + x_1601);
        let x_1604 : vec2<f32> = u_xlat56;
        let x_1606 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec15;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat56.x = x_1615;
        let x_1618 : f32 = u_xlat17.z;
        let x_1620 : f32 = u_xlat56.x;
        let x_1622 : f32 = u_xlat80;
        u_xlat80 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat15;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.x, x_1625.y);
        let x_1628 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec16;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat56.x = x_1637;
        let x_1640 : f32 = u_xlat17.w;
        let x_1642 : f32 = u_xlat56.x;
        let x_1644 : f32 = u_xlat80;
        u_xlat80 = ((x_1640 * x_1642) + x_1644);
        let x_1647 : vec4<f32> = u_xlat13;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.x, x_1647.y);
        let x_1650 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec17;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1657.xy, x_1657.z);
        u_xlat56.x = x_1659;
        let x_1662 : f32 = u_xlat18.x;
        let x_1664 : f32 = u_xlat56.x;
        let x_1666 : f32 = u_xlat80;
        u_xlat80 = ((x_1662 * x_1664) + x_1666);
        let x_1669 : vec4<f32> = u_xlat13;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.z, x_1669.w);
        let x_1672 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec18;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat56.x = x_1681;
        let x_1684 : f32 = u_xlat18.y;
        let x_1686 : f32 = u_xlat56.x;
        let x_1688 : f32 = u_xlat80;
        u_xlat80 = ((x_1684 * x_1686) + x_1688);
        let x_1691 : vec4<f32> = u_xlat14;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
        let x_1694 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec19;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
        u_xlat56.x = x_1703;
        let x_1706 : f32 = u_xlat18.z;
        let x_1708 : f32 = u_xlat56.x;
        let x_1710 : f32 = u_xlat80;
        u_xlat80 = ((x_1706 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat15;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.z, x_1713.w);
        let x_1716 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec20;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat56.x = x_1725;
        let x_1728 : f32 = u_xlat18.w;
        let x_1730 : f32 = u_xlat56.x;
        let x_1732 : f32 = u_xlat80;
        u_xlat80 = ((x_1728 * x_1730) + x_1732);
        let x_1735 : vec4<f32> = u_xlat16;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
        let x_1738 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec21;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat56.x = x_1747;
        let x_1750 : f32 = u_xlat19.x;
        let x_1752 : f32 = u_xlat56.x;
        let x_1754 : f32 = u_xlat80;
        u_xlat80 = ((x_1750 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat16;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.z, x_1757.w);
        let x_1760 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec22;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat56.x = x_1769;
        let x_1772 : f32 = u_xlat19.y;
        let x_1774 : f32 = u_xlat56.x;
        let x_1776 : f32 = u_xlat80;
        u_xlat80 = ((x_1772 * x_1774) + x_1776);
        let x_1779 : vec2<f32> = u_xlat33;
        let x_1781 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec23;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat56.x = x_1790;
        let x_1793 : f32 = u_xlat19.z;
        let x_1795 : f32 = u_xlat56.x;
        let x_1797 : f32 = u_xlat80;
        u_xlat80 = ((x_1793 * x_1795) + x_1797);
        let x_1800 : vec2<f32> = u_xlat64;
        let x_1802 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec24;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1809.xy, x_1809.z);
        u_xlat56.x = x_1811;
        let x_1814 : f32 = u_xlat19.w;
        let x_1816 : f32 = u_xlat56.x;
        let x_1818 : f32 = u_xlat80;
        u_xlat80 = ((x_1814 * x_1816) + x_1818);
        let x_1821 : vec4<f32> = u_xlat11;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.x, x_1821.y);
        let x_1824 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec25;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1831.xy, x_1831.z);
        u_xlat56.x = x_1833;
        let x_1836 : f32 = u_xlat7.x;
        let x_1838 : f32 = u_xlat56.x;
        let x_1840 : f32 = u_xlat80;
        u_xlat80 = ((x_1836 * x_1838) + x_1840);
        let x_1843 : vec4<f32> = u_xlat11;
        let x_1844 : vec2<f32> = vec2<f32>(x_1843.z, x_1843.w);
        let x_1846 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1844.x, x_1844.y, x_1846);
        let x_1853 : vec3<f32> = txVec26;
        let x_1855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1853.xy, x_1853.z);
        u_xlat56.x = x_1855;
        let x_1858 : f32 = u_xlat7.y;
        let x_1860 : f32 = u_xlat56.x;
        let x_1862 : f32 = u_xlat80;
        u_xlat80 = ((x_1858 * x_1860) + x_1862);
        let x_1865 : vec2<f32> = u_xlat59;
        let x_1867 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec27;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
        u_xlat56.x = x_1876;
        let x_1879 : f32 = u_xlat7.z;
        let x_1881 : f32 = u_xlat56.x;
        let x_1883 : f32 = u_xlat80;
        u_xlat80 = ((x_1879 * x_1881) + x_1883);
        let x_1886 : vec4<f32> = u_xlat6;
        let x_1887 : vec2<f32> = vec2<f32>(x_1886.x, x_1886.y);
        let x_1889 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec28;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1896.xy, x_1896.z);
        u_xlat6.x = x_1898;
        let x_1901 : f32 = u_xlat7.w;
        let x_1903 : f32 = u_xlat6.x;
        let x_1905 : f32 = u_xlat80;
        u_xlat79 = ((x_1901 * x_1903) + x_1905);
      }
    }
  } else {
    let x_1909 : vec4<f32> = vs_INTERP3;
    let x_1910 : vec2<f32> = vec2<f32>(x_1909.x, x_1909.y);
    let x_1912 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
    let x_1919 : vec3<f32> = txVec29;
    let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1919.xy, x_1919.z);
    u_xlat79 = x_1921;
  }
  let x_1923 : f32 = x_665.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1923) + 1.0f);
  let x_1926 : f32 = u_xlat79;
  let x_1928 : f32 = x_665.x_MainLightShadowParams.x;
  let x_1930 : f32 = u_xlat80;
  u_xlat79 = ((x_1926 * x_1928) + x_1930);
  let x_1933 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_1933);
  let x_1937 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_1937 >= 1.0f);
  let x_1939 : bool = u_xlatb80;
  let x_1940 : bool = u_xlatb6;
  u_xlatb80 = (x_1939 | x_1940);
  let x_1942 : bool = u_xlatb80;
  let x_1943 : f32 = u_xlat79;
  u_xlat79 = select(x_1943, 1.0f, x_1942);
  let x_1945 : vec3<f32> = vs_INTERP7;
  let x_1947 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1949 : vec3<f32> = (x_1945 + -(x_1947));
  let x_1950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1952 : vec4<f32> = u_xlat6;
  let x_1954 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_1952.x, x_1952.y, x_1952.z), vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : f32 = u_xlat80;
  let x_1959 : f32 = x_665.x_MainLightShadowParams.z;
  let x_1962 : f32 = x_665.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1957 * x_1959) + x_1962);
  let x_1966 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1966, 0.0f, 1.0f);
  let x_1969 : f32 = u_xlat79;
  u_xlat31 = (-(x_1969) + 1.0f);
  let x_1973 : f32 = u_xlat6.x;
  let x_1974 : f32 = u_xlat31;
  let x_1976 : f32 = u_xlat79;
  u_xlat79 = ((x_1973 * x_1974) + x_1976);
  let x_1978 : vec4<f32> = u_xlat3;
  let x_1981 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_1978.x, x_1978.y, x_1978.z)), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1986 : f32 = u_xlat6.x;
  let x_1988 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1986 + x_1988);
  let x_1991 : vec4<f32> = u_xlat1;
  let x_1993 : vec4<f32> = u_xlat6;
  let x_1997 : vec4<f32> = u_xlat3;
  let x_2000 : vec3<f32> = ((vec3<f32>(x_1991.x, x_1991.y, x_1991.z) * -(vec3<f32>(x_1993.x, x_1993.x, x_1993.x))) + -(vec3<f32>(x_1997.x, x_1997.y, x_1997.z)));
  let x_2001 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2004 : vec4<f32> = u_xlat1;
  let x_2006 : vec4<f32> = u_xlat3;
  u_xlat81 = dot(vec3<f32>(x_2004.x, x_2004.y, x_2004.z), vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2009, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat81;
  u_xlat81 = (-(x_2011) + 1.0f);
  let x_2014 : f32 = u_xlat81;
  let x_2015 : f32 = u_xlat81;
  u_xlat81 = (x_2014 * x_2015);
  let x_2017 : f32 = u_xlat81;
  let x_2018 : f32 = u_xlat81;
  u_xlat81 = (x_2017 * x_2018);
  let x_2020 : f32 = u_xlat76;
  u_xlat7.x = ((-(x_2020) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2027 : f32 = u_xlat76;
  let x_2029 : f32 = u_xlat7.x;
  u_xlat76 = (x_2027 * x_2029);
  let x_2031 : f32 = u_xlat76;
  u_xlat76 = (x_2031 * 6.0f);
  let x_2041 : vec4<f32> = u_xlat6;
  let x_2043 : f32 = u_xlat76;
  let x_2044 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2041.x, x_2041.y, x_2041.z), x_2043);
  u_xlat7 = x_2044;
  let x_2046 : f32 = u_xlat7.w;
  u_xlat76 = (x_2046 + -1.0f);
  let x_2049 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2050 : f32 = u_xlat76;
  u_xlat76 = ((x_2049 * x_2050) + 1.0f);
  let x_2053 : f32 = u_xlat76;
  u_xlat76 = max(x_2053, 0.0f);
  let x_2055 : f32 = u_xlat76;
  u_xlat76 = log2(x_2055);
  let x_2057 : f32 = u_xlat76;
  let x_2059 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2057 * x_2059);
  let x_2061 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2061);
  let x_2063 : f32 = u_xlat76;
  let x_2065 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2063 * x_2065);
  let x_2067 : vec4<f32> = u_xlat7;
  let x_2069 : f32 = u_xlat76;
  let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * vec3<f32>(x_2069, x_2069, x_2069));
  let x_2072 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2074 : vec4<f32> = u_xlat2;
  let x_2076 : vec4<f32> = u_xlat2;
  let x_2080 : vec2<f32> = ((vec2<f32>(x_2074.x, x_2074.x) * vec2<f32>(x_2076.x, x_2076.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2081 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
  let x_2084 : f32 = u_xlat7.y;
  u_xlat76 = (1.0f / x_2084);
  let x_2086 : vec4<f32> = u_xlat0;
  let x_2089 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_2086.x, x_2086.y, x_2086.z)) + vec3<f32>(x_2089, x_2089, x_2089));
  let x_2092 : f32 = u_xlat81;
  let x_2094 : vec3<f32> = u_xlat32;
  let x_2096 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_2092, x_2092, x_2092) * x_2094) + vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : f32 = u_xlat76;
  let x_2101 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2099, x_2099, x_2099) * x_2101);
  let x_2103 : vec4<f32> = u_xlat6;
  let x_2105 : vec3<f32> = u_xlat32;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2103.x, x_2103.y, x_2103.z) * x_2105);
  let x_2107 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
  let x_2109 : vec4<f32> = u_xlat4;
  let x_2111 : vec3<f32> = u_xlat5;
  let x_2113 : vec4<f32> = u_xlat6;
  let x_2115 : vec3<f32> = ((vec3<f32>(x_2109.x, x_2109.y, x_2109.z) * x_2111) + vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
  let x_2116 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
  let x_2118 : f32 = u_xlat79;
  let x_2120 : f32 = x_349.unity_LightData.z;
  u_xlat76 = (x_2118 * x_2120);
  let x_2122 : vec4<f32> = u_xlat1;
  let x_2125 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2122.x, x_2122.y, x_2122.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2130 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2130, 0.0f, 1.0f);
  let x_2133 : f32 = u_xlat76;
  let x_2135 : f32 = u_xlat2.x;
  u_xlat76 = (x_2133 * x_2135);
  let x_2137 : f32 = u_xlat76;
  let x_2140 : vec4<f32> = x_29.x_MainLightColor;
  let x_2142 : vec3<f32> = (vec3<f32>(x_2137, x_2137, x_2137) * vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
  let x_2143 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
  let x_2145 : vec4<f32> = u_xlat3;
  let x_2148 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_2145.x, x_2145.y, x_2145.z) + vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2151 : vec3<f32> = u_xlat32;
  let x_2152 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(x_2151, x_2152);
  let x_2154 : f32 = u_xlat76;
  u_xlat76 = max(x_2154, 1.17549435e-38f);
  let x_2157 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2157);
  let x_2159 : f32 = u_xlat76;
  let x_2161 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2159, x_2159, x_2159) * x_2161);
  let x_2163 : vec4<f32> = u_xlat1;
  let x_2165 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), x_2165);
  let x_2167 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2167, 0.0f, 1.0f);
  let x_2170 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2172 : vec3<f32> = u_xlat32;
  u_xlat2.x = dot(vec3<f32>(x_2170.x, x_2170.y, x_2170.z), x_2172);
  let x_2176 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2176, 0.0f, 1.0f);
  let x_2179 : f32 = u_xlat76;
  let x_2180 : f32 = u_xlat76;
  u_xlat76 = (x_2179 * x_2180);
  let x_2182 : f32 = u_xlat76;
  let x_2184 : f32 = u_xlat7.x;
  u_xlat76 = ((x_2182 * x_2184) + 1.00001001358032226562f);
  let x_2189 : f32 = u_xlat2.x;
  let x_2191 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2189 * x_2191);
  let x_2194 : f32 = u_xlat76;
  let x_2195 : f32 = u_xlat76;
  u_xlat76 = (x_2194 * x_2195);
  let x_2198 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2198, 0.10000000149011611938f);
  let x_2202 : f32 = u_xlat76;
  let x_2204 : f32 = u_xlat2.x;
  u_xlat76 = (x_2202 * x_2204);
  let x_2206 : f32 = u_xlat78;
  let x_2207 : f32 = u_xlat76;
  u_xlat76 = (x_2206 * x_2207);
  let x_2209 : f32 = u_xlat27;
  let x_2210 : f32 = u_xlat76;
  u_xlat76 = (x_2209 / x_2210);
  let x_2212 : vec4<f32> = u_xlat0;
  let x_2214 : f32 = u_xlat76;
  let x_2217 : vec3<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2212.x, x_2212.y, x_2212.z) * vec3<f32>(x_2214, x_2214, x_2214)) + x_2217);
  let x_2219 : vec4<f32> = u_xlat6;
  let x_2221 : vec3<f32> = u_xlat32;
  let x_2222 : vec3<f32> = (vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * x_2221);
  let x_2223 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
  let x_2226 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2228 : f32 = x_349.unity_LightData.y;
  u_xlat76 = min(x_2226, x_2228);
  let x_2232 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2232));
  let x_2235 : f32 = u_xlat80;
  let x_2238 : f32 = x_665.x_AdditionalShadowFadeParams.x;
  let x_2241 : f32 = x_665.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2235 * x_2238) + x_2241);
  let x_2245 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2245, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2258 : u32 = u_xlatu_loop_1;
    let x_2259 : u32 = u_xlatu76;
    if ((x_2258 < x_2259)) {
    } else {
      break;
    }
    let x_2262 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2262 >> 2u);
    let x_2266 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2266 & 3u));
    let x_2269 : u32 = u_xlatu79;
    let x_2272 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2269)];
    let x_2282 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2287 : vec4<u32> = indexable[x_2282];
    u_xlat79 = dot(x_2272, bitcast<vec4<f32>>(x_2287));
    let x_2291 : f32 = u_xlat79;
    u_xlati79 = i32(x_2291);
    let x_2293 : vec3<f32> = vs_INTERP7;
    let x_2304 : i32 = u_xlati79;
    let x_2306 : vec4<f32> = x_2303.x_AdditionalLightsPosition[x_2304];
    let x_2309 : i32 = u_xlati79;
    let x_2311 : vec4<f32> = x_2303.x_AdditionalLightsPosition[x_2309];
    let x_2313 : vec3<f32> = ((-(x_2293) * vec3<f32>(x_2306.w, x_2306.w, x_2306.w)) + vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
    let x_2314 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
    let x_2316 : vec4<f32> = u_xlat8;
    let x_2318 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2316.x, x_2316.y, x_2316.z), vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
    let x_2321 : f32 = u_xlat80;
    u_xlat80 = max(x_2321, 0.00006103515625f);
    let x_2324 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2324);
    let x_2326 : f32 = u_xlat81;
    let x_2328 : vec4<f32> = u_xlat8;
    let x_2330 : vec3<f32> = (vec3<f32>(x_2326, x_2326, x_2326) * vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
    let x_2331 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
    let x_2334 : f32 = u_xlat80;
    u_xlat83 = (1.0f / x_2334);
    let x_2336 : f32 = u_xlat80;
    let x_2337 : i32 = u_xlati79;
    let x_2339 : f32 = x_2303.x_AdditionalLightsAttenuation[x_2337].x;
    u_xlat80 = (x_2336 * x_2339);
    let x_2341 : f32 = u_xlat80;
    let x_2343 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2341) * x_2343) + 1.0f);
    let x_2346 : f32 = u_xlat80;
    u_xlat80 = max(x_2346, 0.0f);
    let x_2348 : f32 = u_xlat80;
    let x_2349 : f32 = u_xlat80;
    u_xlat80 = (x_2348 * x_2349);
    let x_2351 : f32 = u_xlat80;
    let x_2352 : f32 = u_xlat83;
    u_xlat80 = (x_2351 * x_2352);
    let x_2354 : i32 = u_xlati79;
    let x_2356 : vec4<f32> = x_2303.x_AdditionalLightsSpotDir[x_2354];
    let x_2358 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2356.x, x_2356.y, x_2356.z), vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
    let x_2361 : f32 = u_xlat83;
    let x_2362 : i32 = u_xlati79;
    let x_2364 : f32 = x_2303.x_AdditionalLightsAttenuation[x_2362].z;
    let x_2366 : i32 = u_xlati79;
    let x_2368 : f32 = x_2303.x_AdditionalLightsAttenuation[x_2366].w;
    u_xlat83 = ((x_2361 * x_2364) + x_2368);
    let x_2370 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2370, 0.0f, 1.0f);
    let x_2372 : f32 = u_xlat83;
    let x_2373 : f32 = u_xlat83;
    u_xlat83 = (x_2372 * x_2373);
    let x_2375 : f32 = u_xlat80;
    let x_2376 : f32 = u_xlat83;
    u_xlat80 = (x_2375 * x_2376);
    let x_2380 : i32 = u_xlati79;
    let x_2382 : f32 = x_665.x_AdditionalShadowParams[x_2380].w;
    u_xlati83 = i32(x_2382);
    let x_2385 : i32 = u_xlati83;
    u_xlatb84 = (x_2385 >= 0i);
    let x_2387 : bool = u_xlatb84;
    if (x_2387) {
      let x_2391 : i32 = u_xlati79;
      let x_2393 : f32 = x_665.x_AdditionalShadowParams[x_2391].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2393, x_2393, x_2393, x_2393))));
      let x_2398 : bool = u_xlatb84;
      if (x_2398) {
        let x_2403 : vec4<f32> = u_xlat9;
        let x_2406 : vec4<f32> = u_xlat9;
        let x_2409 : vec4<bool> = (abs(vec4<f32>(x_2403.z, x_2403.z, x_2403.y, x_2403.z)) >= abs(vec4<f32>(x_2406.x, x_2406.y, x_2406.x, x_2406.x)));
        let x_2411 : vec3<bool> = vec3<bool>(x_2409.x, x_2409.y, x_2409.z);
        let x_2412 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
        let x_2415 : bool = u_xlatb10.y;
        let x_2417 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2415 & x_2417);
        let x_2419 : vec4<f32> = u_xlat9;
        let x_2422 : vec4<bool> = (-(vec4<f32>(x_2419.z, x_2419.y, x_2419.z, x_2419.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2423 : vec3<bool> = vec3<bool>(x_2422.x, x_2422.y, x_2422.w);
        let x_2424 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2423.x, x_2423.y, x_2424.z, x_2423.z);
        let x_2427 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2427);
        let x_2432 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2432);
        let x_2438 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2438);
        let x_2442 : bool = u_xlatb10.z;
        if (x_2442) {
          let x_2447 : f32 = u_xlat10.y;
          x_2443 = x_2447;
        } else {
          let x_2449 : f32 = u_xlat85;
          x_2443 = x_2449;
        }
        let x_2450 : f32 = x_2443;
        u_xlat35 = x_2450;
        let x_2452 : bool = u_xlatb84;
        if (x_2452) {
          let x_2457 : f32 = u_xlat10.x;
          x_2453 = x_2457;
        } else {
          let x_2459 : f32 = u_xlat35;
          x_2453 = x_2459;
        }
        let x_2460 : f32 = x_2453;
        u_xlat84 = x_2460;
        let x_2461 : i32 = u_xlati79;
        let x_2463 : f32 = x_665.x_AdditionalShadowParams[x_2461].w;
        u_xlat10.x = trunc(x_2463);
        let x_2466 : f32 = u_xlat84;
        let x_2468 : f32 = u_xlat10.x;
        u_xlat84 = (x_2466 + x_2468);
        let x_2470 : f32 = u_xlat84;
        u_xlati83 = i32(x_2470);
      }
      let x_2472 : i32 = u_xlati83;
      u_xlati83 = (x_2472 << bitcast<u32>(2i));
      let x_2474 : vec3<f32> = vs_INTERP7;
      let x_2477 : i32 = u_xlati83;
      let x_2480 : i32 = u_xlati83;
      let x_2484 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2477 + 1i) / 4i)][((x_2480 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2474.y, x_2474.y, x_2474.y, x_2474.y) * x_2484);
      let x_2486 : i32 = u_xlati83;
      let x_2488 : i32 = u_xlati83;
      let x_2491 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[(x_2486 / 4i)][(x_2488 % 4i)];
      let x_2492 : vec3<f32> = vs_INTERP7;
      let x_2495 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2491 * vec4<f32>(x_2492.x, x_2492.x, x_2492.x, x_2492.x)) + x_2495);
      let x_2497 : i32 = u_xlati83;
      let x_2500 : i32 = u_xlati83;
      let x_2504 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2497 + 2i) / 4i)][((x_2500 + 2i) % 4i)];
      let x_2505 : vec3<f32> = vs_INTERP7;
      let x_2508 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2504 * vec4<f32>(x_2505.z, x_2505.z, x_2505.z, x_2505.z)) + x_2508);
      let x_2510 : vec4<f32> = u_xlat10;
      let x_2511 : i32 = u_xlati83;
      let x_2514 : i32 = u_xlati83;
      let x_2518 : vec4<f32> = x_665.x_AdditionalLightsWorldToShadow[((x_2511 + 3i) / 4i)][((x_2514 + 3i) % 4i)];
      u_xlat10 = (x_2510 + x_2518);
      let x_2520 : vec4<f32> = u_xlat10;
      let x_2522 : vec4<f32> = u_xlat10;
      let x_2524 : vec3<f32> = (vec3<f32>(x_2520.x, x_2520.y, x_2520.z) / vec3<f32>(x_2522.w, x_2522.w, x_2522.w));
      let x_2525 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
      let x_2528 : i32 = u_xlati79;
      let x_2530 : f32 = x_665.x_AdditionalShadowParams[x_2528].y;
      u_xlatb83 = (0.0f < x_2530);
      let x_2532 : bool = u_xlatb83;
      if (x_2532) {
        let x_2535 : i32 = u_xlati79;
        let x_2537 : f32 = x_665.x_AdditionalShadowParams[x_2535].y;
        u_xlatb83 = (1.0f == x_2537);
        let x_2539 : bool = u_xlatb83;
        if (x_2539) {
          let x_2542 : vec4<f32> = u_xlat10;
          let x_2546 : vec4<f32> = x_665.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) + x_2546);
          let x_2549 : vec4<f32> = u_xlat11;
          let x_2550 : vec2<f32> = vec2<f32>(x_2549.x, x_2549.y);
          let x_2552 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
          let x_2560 : vec3<f32> = txVec30;
          let x_2562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2560.xy, x_2560.z);
          u_xlat12.x = x_2562;
          let x_2565 : vec4<f32> = u_xlat11;
          let x_2566 : vec2<f32> = vec2<f32>(x_2565.z, x_2565.w);
          let x_2568 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2566.x, x_2566.y, x_2568);
          let x_2575 : vec3<f32> = txVec31;
          let x_2577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2575.xy, x_2575.z);
          u_xlat12.y = x_2577;
          let x_2579 : vec4<f32> = u_xlat10;
          let x_2583 : vec4<f32> = x_665.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) + x_2583);
          let x_2586 : vec4<f32> = u_xlat11;
          let x_2587 : vec2<f32> = vec2<f32>(x_2586.x, x_2586.y);
          let x_2589 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2587.x, x_2587.y, x_2589);
          let x_2596 : vec3<f32> = txVec32;
          let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
          u_xlat12.z = x_2598;
          let x_2601 : vec4<f32> = u_xlat11;
          let x_2602 : vec2<f32> = vec2<f32>(x_2601.z, x_2601.w);
          let x_2604 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2602.x, x_2602.y, x_2604);
          let x_2611 : vec3<f32> = txVec33;
          let x_2613 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2611.xy, x_2611.z);
          u_xlat12.w = x_2613;
          let x_2615 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2615, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2618 : i32 = u_xlati79;
          let x_2620 : f32 = x_665.x_AdditionalShadowParams[x_2618].y;
          u_xlatb84 = (2.0f == x_2620);
          let x_2622 : bool = u_xlatb84;
          if (x_2622) {
            let x_2625 : vec4<f32> = u_xlat10;
            let x_2629 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2632 : vec2<f32> = ((vec2<f32>(x_2625.x, x_2625.y) * vec2<f32>(x_2629.z, x_2629.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2633 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
            let x_2635 : vec4<f32> = u_xlat11;
            let x_2637 : vec2<f32> = floor(vec2<f32>(x_2635.x, x_2635.y));
            let x_2638 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
            let x_2641 : vec4<f32> = u_xlat10;
            let x_2644 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2647 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(x_2644.z, x_2644.w)) + -(vec2<f32>(x_2647.x, x_2647.y)));
            let x_2651 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2651.x, x_2651.x, x_2651.y, x_2651.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2654 : vec4<f32> = u_xlat12;
            let x_2656 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2654.x, x_2654.x, x_2654.z, x_2654.z) * vec4<f32>(x_2656.x, x_2656.x, x_2656.z, x_2656.z));
            let x_2659 : vec4<f32> = u_xlat13;
            let x_2661 : vec2<f32> = (vec2<f32>(x_2659.y, x_2659.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2662 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2661.x, x_2662.y, x_2661.y, x_2662.w);
            let x_2664 : vec4<f32> = u_xlat13;
            let x_2667 : vec2<f32> = u_xlat61;
            let x_2669 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2667));
            let x_2670 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2669.x, x_2669.y, x_2670.z, x_2670.w);
            let x_2673 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2673) + vec2<f32>(1.0f, 1.0f));
            let x_2676 : vec2<f32> = u_xlat61;
            let x_2677 : vec2<f32> = min(x_2676, vec2<f32>(0.0f, 0.0f));
            let x_2678 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2677.x, x_2677.y, x_2678.z, x_2678.w);
            let x_2680 : vec4<f32> = u_xlat14;
            let x_2683 : vec4<f32> = u_xlat14;
            let x_2686 : vec2<f32> = u_xlat63;
            let x_2687 : vec2<f32> = ((-(vec2<f32>(x_2680.x, x_2680.y)) * vec2<f32>(x_2683.x, x_2683.y)) + x_2686);
            let x_2688 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2687.x, x_2687.y, x_2688.z, x_2688.w);
            let x_2690 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2690, vec2<f32>(0.0f, 0.0f));
            let x_2692 : vec2<f32> = u_xlat61;
            let x_2694 : vec2<f32> = u_xlat61;
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2692) * x_2694) + vec2<f32>(x_2696.y, x_2696.w));
            let x_2699 : vec4<f32> = u_xlat14;
            let x_2701 : vec2<f32> = (vec2<f32>(x_2699.x, x_2699.y) + vec2<f32>(1.0f, 1.0f));
            let x_2702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2701.x, x_2701.y, x_2702.z, x_2702.w);
            let x_2704 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2704 + vec2<f32>(1.0f, 1.0f));
            let x_2706 : vec4<f32> = u_xlat13;
            let x_2708 : vec2<f32> = (vec2<f32>(x_2706.x, x_2706.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2709 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2708.x, x_2708.y, x_2709.z, x_2709.w);
            let x_2711 : vec2<f32> = u_xlat63;
            let x_2712 : vec2<f32> = (x_2711 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2713 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
            let x_2715 : vec4<f32> = u_xlat14;
            let x_2717 : vec2<f32> = (vec2<f32>(x_2715.x, x_2715.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2718 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2717.x, x_2717.y, x_2718.z, x_2718.w);
            let x_2720 : vec2<f32> = u_xlat61;
            let x_2721 : vec2<f32> = (x_2720 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2722 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2721.x, x_2721.y, x_2722.z, x_2722.w);
            let x_2724 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2724.y, x_2724.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2728 : f32 = u_xlat14.x;
            u_xlat15.z = x_2728;
            let x_2731 : f32 = u_xlat61.x;
            u_xlat15.w = x_2731;
            let x_2734 : f32 = u_xlat16.x;
            u_xlat13.z = x_2734;
            let x_2737 : f32 = u_xlat12.x;
            u_xlat13.w = x_2737;
            let x_2739 : vec4<f32> = u_xlat13;
            let x_2741 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2739.z, x_2739.w, x_2739.x, x_2739.z) + vec4<f32>(x_2741.z, x_2741.w, x_2741.x, x_2741.z));
            let x_2745 : f32 = u_xlat15.y;
            u_xlat14.z = x_2745;
            let x_2748 : f32 = u_xlat61.y;
            u_xlat14.w = x_2748;
            let x_2751 : f32 = u_xlat13.y;
            u_xlat16.z = x_2751;
            let x_2754 : f32 = u_xlat12.z;
            u_xlat16.w = x_2754;
            let x_2756 : vec4<f32> = u_xlat14;
            let x_2758 : vec4<f32> = u_xlat16;
            let x_2760 : vec3<f32> = (vec3<f32>(x_2756.z, x_2756.y, x_2756.w) + vec3<f32>(x_2758.z, x_2758.y, x_2758.w));
            let x_2761 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat13;
            let x_2765 : vec4<f32> = u_xlat17;
            let x_2767 : vec3<f32> = (vec3<f32>(x_2763.x, x_2763.z, x_2763.w) / vec3<f32>(x_2765.z, x_2765.w, x_2765.y));
            let x_2768 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2767.x, x_2767.y, x_2767.z, x_2768.w);
            let x_2770 : vec4<f32> = u_xlat13;
            let x_2772 : vec3<f32> = (vec3<f32>(x_2770.x, x_2770.y, x_2770.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2773 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
            let x_2775 : vec4<f32> = u_xlat16;
            let x_2777 : vec4<f32> = u_xlat12;
            let x_2779 : vec3<f32> = (vec3<f32>(x_2775.z, x_2775.y, x_2775.w) / vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
            let x_2780 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2780.w);
            let x_2782 : vec4<f32> = u_xlat14;
            let x_2784 : vec3<f32> = (vec3<f32>(x_2782.x, x_2782.y, x_2782.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2785 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
            let x_2787 : vec4<f32> = u_xlat13;
            let x_2790 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2792 : vec3<f32> = (vec3<f32>(x_2787.y, x_2787.x, x_2787.z) * vec3<f32>(x_2790.x, x_2790.x, x_2790.x));
            let x_2793 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
            let x_2795 : vec4<f32> = u_xlat14;
            let x_2798 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2800 : vec3<f32> = (vec3<f32>(x_2795.x, x_2795.y, x_2795.z) * vec3<f32>(x_2798.y, x_2798.y, x_2798.y));
            let x_2801 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
            let x_2804 : f32 = u_xlat14.x;
            u_xlat13.w = x_2804;
            let x_2806 : vec4<f32> = u_xlat11;
            let x_2809 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) * vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y)) + vec4<f32>(x_2812.y, x_2812.w, x_2812.x, x_2812.w));
            let x_2815 : vec4<f32> = u_xlat11;
            let x_2818 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2818.x, x_2818.y)) + vec2<f32>(x_2821.z, x_2821.w));
            let x_2825 : f32 = u_xlat13.y;
            u_xlat14.w = x_2825;
            let x_2827 : vec4<f32> = u_xlat14;
            let x_2828 : vec2<f32> = vec2<f32>(x_2827.y, x_2827.z);
            let x_2829 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2829.x, x_2828.x, x_2829.z, x_2828.y);
            let x_2831 : vec4<f32> = u_xlat11;
            let x_2834 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2837 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2831.x, x_2831.y, x_2831.x, x_2831.y) * vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y)) + vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2837.y));
            let x_2840 : vec4<f32> = u_xlat11;
            let x_2843 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y) * vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y)) + vec4<f32>(x_2846.w, x_2846.y, x_2846.w, x_2846.z));
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2852 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_2855 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2849.x, x_2849.y, x_2849.x, x_2849.y) * vec4<f32>(x_2852.x, x_2852.y, x_2852.x, x_2852.y)) + vec4<f32>(x_2855.x, x_2855.w, x_2855.z, x_2855.w));
            let x_2858 : vec4<f32> = u_xlat12;
            let x_2860 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2858.x, x_2858.x, x_2858.x, x_2858.y) * vec4<f32>(x_2860.z, x_2860.w, x_2860.y, x_2860.z));
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2865 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2863.y, x_2863.y, x_2863.z, x_2863.z) * x_2865);
            let x_2868 : f32 = u_xlat12.z;
            let x_2870 : f32 = u_xlat17.y;
            u_xlat84 = (x_2868 * x_2870);
            let x_2873 : vec4<f32> = u_xlat15;
            let x_2874 : vec2<f32> = vec2<f32>(x_2873.x, x_2873.y);
            let x_2876 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
            let x_2883 : vec3<f32> = txVec34;
            let x_2885 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
            u_xlat85 = x_2885;
            let x_2887 : vec4<f32> = u_xlat15;
            let x_2888 : vec2<f32> = vec2<f32>(x_2887.z, x_2887.w);
            let x_2890 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
            let x_2897 : vec3<f32> = txVec35;
            let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
            u_xlat11.x = x_2899;
            let x_2902 : f32 = u_xlat11.x;
            let x_2904 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2902 * x_2904);
            let x_2908 : f32 = u_xlat18.x;
            let x_2909 : f32 = u_xlat85;
            let x_2912 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2908 * x_2909) + x_2912);
            let x_2915 : vec2<f32> = u_xlat61;
            let x_2917 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec36;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat11.x = x_2926;
            let x_2929 : f32 = u_xlat18.z;
            let x_2931 : f32 = u_xlat11.x;
            let x_2933 : f32 = u_xlat85;
            u_xlat85 = ((x_2929 * x_2931) + x_2933);
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2937 : vec2<f32> = vec2<f32>(x_2936.x, x_2936.y);
            let x_2939 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2937.x, x_2937.y, x_2939);
            let x_2946 : vec3<f32> = txVec37;
            let x_2948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2946.xy, x_2946.z);
            u_xlat11.x = x_2948;
            let x_2951 : f32 = u_xlat18.w;
            let x_2953 : f32 = u_xlat11.x;
            let x_2955 : f32 = u_xlat85;
            u_xlat85 = ((x_2951 * x_2953) + x_2955);
            let x_2958 : vec4<f32> = u_xlat16;
            let x_2959 : vec2<f32> = vec2<f32>(x_2958.x, x_2958.y);
            let x_2961 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2959.x, x_2959.y, x_2961);
            let x_2968 : vec3<f32> = txVec38;
            let x_2970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2968.xy, x_2968.z);
            u_xlat11.x = x_2970;
            let x_2973 : f32 = u_xlat19.x;
            let x_2975 : f32 = u_xlat11.x;
            let x_2977 : f32 = u_xlat85;
            u_xlat85 = ((x_2973 * x_2975) + x_2977);
            let x_2980 : vec4<f32> = u_xlat16;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
            let x_2983 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec39;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat11.x = x_2992;
            let x_2995 : f32 = u_xlat19.y;
            let x_2997 : f32 = u_xlat11.x;
            let x_2999 : f32 = u_xlat85;
            u_xlat85 = ((x_2995 * x_2997) + x_2999);
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.z, x_3002.w);
            let x_3005 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec40;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat11.x = x_3014;
            let x_3017 : f32 = u_xlat19.z;
            let x_3019 : f32 = u_xlat11.x;
            let x_3021 : f32 = u_xlat85;
            u_xlat85 = ((x_3017 * x_3019) + x_3021);
            let x_3024 : vec4<f32> = u_xlat13;
            let x_3025 : vec2<f32> = vec2<f32>(x_3024.x, x_3024.y);
            let x_3027 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
            let x_3034 : vec3<f32> = txVec41;
            let x_3036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
            u_xlat11.x = x_3036;
            let x_3039 : f32 = u_xlat19.w;
            let x_3041 : f32 = u_xlat11.x;
            let x_3043 : f32 = u_xlat85;
            u_xlat85 = ((x_3039 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat13;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.z, x_3046.w);
            let x_3049 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec42;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat11.x = x_3058;
            let x_3060 : f32 = u_xlat84;
            let x_3062 : f32 = u_xlat11.x;
            let x_3064 : f32 = u_xlat85;
            u_xlat83 = ((x_3060 * x_3062) + x_3064);
          } else {
            let x_3067 : vec4<f32> = u_xlat10;
            let x_3070 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3073 : vec2<f32> = ((vec2<f32>(x_3067.x, x_3067.y) * vec2<f32>(x_3070.z, x_3070.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3074 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3073.x, x_3073.y, x_3074.z, x_3074.w);
            let x_3076 : vec4<f32> = u_xlat11;
            let x_3078 : vec2<f32> = floor(vec2<f32>(x_3076.x, x_3076.y));
            let x_3079 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3078.x, x_3078.y, x_3079.z, x_3079.w);
            let x_3081 : vec4<f32> = u_xlat10;
            let x_3084 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3081.x, x_3081.y) * vec2<f32>(x_3084.z, x_3084.w)) + -(vec2<f32>(x_3087.x, x_3087.y)));
            let x_3091 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3091.x, x_3091.x, x_3091.y, x_3091.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3094 : vec4<f32> = u_xlat12;
            let x_3096 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3094.x, x_3094.x, x_3094.z, x_3094.z) * vec4<f32>(x_3096.x, x_3096.x, x_3096.z, x_3096.z));
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3101 : vec2<f32> = (vec2<f32>(x_3099.y, x_3099.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3102.x, x_3101.x, x_3102.z, x_3101.y);
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3107 : vec2<f32> = u_xlat61;
            let x_3109 : vec2<f32> = ((vec2<f32>(x_3104.x, x_3104.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3107));
            let x_3110 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3109.x, x_3110.y, x_3109.y, x_3110.w);
            let x_3112 : vec2<f32> = u_xlat61;
            let x_3114 : vec2<f32> = (-(x_3112) + vec2<f32>(1.0f, 1.0f));
            let x_3115 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3117 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3117, vec2<f32>(0.0f, 0.0f));
            let x_3119 : vec2<f32> = u_xlat63;
            let x_3121 : vec2<f32> = u_xlat63;
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec2<f32> = ((-(x_3119) * x_3121) + vec2<f32>(x_3123.x, x_3123.y));
            let x_3126 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3125.x, x_3125.y, x_3126.z, x_3126.w);
            let x_3128 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3128, vec2<f32>(0.0f, 0.0f));
            let x_3131 : vec2<f32> = u_xlat63;
            let x_3133 : vec2<f32> = u_xlat63;
            let x_3135 : vec4<f32> = u_xlat12;
            let x_3137 : vec2<f32> = ((-(x_3131) * x_3133) + vec2<f32>(x_3135.y, x_3135.w));
            let x_3138 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3137.x, x_3138.y, x_3137.y);
            let x_3140 : vec4<f32> = u_xlat13;
            let x_3142 : vec2<f32> = (vec2<f32>(x_3140.x, x_3140.y) + vec2<f32>(2.0f, 2.0f));
            let x_3143 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3142.x, x_3142.y, x_3143.z, x_3143.w);
            let x_3145 : vec3<f32> = u_xlat37;
            let x_3147 : vec2<f32> = (vec2<f32>(x_3145.x, x_3145.z) + vec2<f32>(2.0f, 2.0f));
            let x_3148 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3148.x, x_3147.x, x_3148.z, x_3147.y);
            let x_3151 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3151 * 0.08163200318813323975f);
            let x_3154 : vec4<f32> = u_xlat12;
            let x_3156 : vec3<f32> = (vec3<f32>(x_3154.z, x_3154.x, x_3154.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3157 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3157.w);
            let x_3159 : vec4<f32> = u_xlat13;
            let x_3161 : vec2<f32> = (vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3162 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3161.x, x_3161.y, x_3162.z, x_3162.w);
            let x_3165 : f32 = u_xlat16.y;
            u_xlat15.x = x_3165;
            let x_3167 : vec2<f32> = u_xlat61;
            let x_3170 : vec2<f32> = ((vec2<f32>(x_3167.x, x_3167.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3171 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3171.x, x_3170.x, x_3171.z, x_3170.y);
            let x_3173 : vec2<f32> = u_xlat61;
            let x_3176 : vec2<f32> = ((vec2<f32>(x_3173.x, x_3173.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3177 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3176.x, x_3177.y, x_3176.y, x_3177.w);
            let x_3180 : f32 = u_xlat12.x;
            u_xlat13.y = x_3180;
            let x_3183 : f32 = u_xlat14.y;
            u_xlat13.w = x_3183;
            let x_3185 : vec4<f32> = u_xlat13;
            let x_3186 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3185 + x_3186);
            let x_3188 : vec2<f32> = u_xlat61;
            let x_3191 : vec2<f32> = ((vec2<f32>(x_3188.y, x_3188.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3192 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3192.x, x_3191.x, x_3192.z, x_3191.y);
            let x_3194 : vec2<f32> = u_xlat61;
            let x_3197 : vec2<f32> = ((vec2<f32>(x_3194.y, x_3194.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3198 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3197.x, x_3198.y, x_3197.y, x_3198.w);
            let x_3201 : f32 = u_xlat12.y;
            u_xlat14.y = x_3201;
            let x_3203 : vec4<f32> = u_xlat14;
            let x_3204 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3203 + x_3204);
            let x_3206 : vec4<f32> = u_xlat13;
            let x_3207 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3206 / x_3207);
            let x_3209 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3209 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3211 : vec4<f32> = u_xlat14;
            let x_3212 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3211 / x_3212);
            let x_3214 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3214 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3216 : vec4<f32> = u_xlat13;
            let x_3219 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3216.w, x_3216.x, x_3216.y, x_3216.z) * vec4<f32>(x_3219.x, x_3219.x, x_3219.x, x_3219.x));
            let x_3222 : vec4<f32> = u_xlat14;
            let x_3225 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3222.x, x_3222.w, x_3222.y, x_3222.z) * vec4<f32>(x_3225.y, x_3225.y, x_3225.y, x_3225.y));
            let x_3228 : vec4<f32> = u_xlat13;
            let x_3229 : vec3<f32> = vec3<f32>(x_3228.y, x_3228.z, x_3228.w);
            let x_3230 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3229.x, x_3230.y, x_3229.y, x_3229.z);
            let x_3233 : f32 = u_xlat14.x;
            u_xlat16.y = x_3233;
            let x_3235 : vec4<f32> = u_xlat11;
            let x_3238 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3241 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3235.x, x_3235.y, x_3235.x, x_3235.y) * vec4<f32>(x_3238.x, x_3238.y, x_3238.x, x_3238.y)) + vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3241.y));
            let x_3244 : vec4<f32> = u_xlat11;
            let x_3247 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3250 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3244.x, x_3244.y) * vec2<f32>(x_3247.x, x_3247.y)) + vec2<f32>(x_3250.w, x_3250.y));
            let x_3254 : f32 = u_xlat16.y;
            u_xlat13.y = x_3254;
            let x_3257 : f32 = u_xlat14.z;
            u_xlat16.y = x_3257;
            let x_3259 : vec4<f32> = u_xlat11;
            let x_3262 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3265 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y) * vec4<f32>(x_3262.x, x_3262.y, x_3262.x, x_3262.y)) + vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3265.y));
            let x_3268 : vec4<f32> = u_xlat11;
            let x_3271 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3274 : vec4<f32> = u_xlat16;
            let x_3276 : vec2<f32> = ((vec2<f32>(x_3268.x, x_3268.y) * vec2<f32>(x_3271.x, x_3271.y)) + vec2<f32>(x_3274.w, x_3274.y));
            let x_3277 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3276.x, x_3276.y, x_3277.z, x_3277.w);
            let x_3280 : f32 = u_xlat16.y;
            u_xlat13.z = x_3280;
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y) * vec4<f32>(x_3286.x, x_3286.y, x_3286.x, x_3286.y)) + vec4<f32>(x_3289.x, x_3289.y, x_3289.x, x_3289.z));
            let x_3293 : f32 = u_xlat14.w;
            u_xlat16.y = x_3293;
            let x_3296 : vec4<f32> = u_xlat11;
            let x_3299 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3302 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y) * vec4<f32>(x_3299.x, x_3299.y, x_3299.x, x_3299.y)) + vec4<f32>(x_3302.x, x_3302.y, x_3302.z, x_3302.y));
            let x_3306 : vec4<f32> = u_xlat11;
            let x_3309 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.x, x_3309.y)) + vec2<f32>(x_3312.w, x_3312.y));
            let x_3316 : f32 = u_xlat16.y;
            u_xlat13.w = x_3316;
            let x_3319 : vec4<f32> = u_xlat11;
            let x_3322 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3319.x, x_3319.y) * vec2<f32>(x_3322.x, x_3322.y)) + vec2<f32>(x_3325.x, x_3325.w));
            let x_3328 : vec4<f32> = u_xlat16;
            let x_3329 : vec3<f32> = vec3<f32>(x_3328.x, x_3328.z, x_3328.w);
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3329.x, x_3330.y, x_3329.y, x_3329.z);
            let x_3332 : vec4<f32> = u_xlat11;
            let x_3335 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3338 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3332.x, x_3332.y, x_3332.x, x_3332.y) * vec4<f32>(x_3335.x, x_3335.y, x_3335.x, x_3335.y)) + vec4<f32>(x_3338.x, x_3338.y, x_3338.z, x_3338.y));
            let x_3341 : vec4<f32> = u_xlat11;
            let x_3344 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(x_3344.x, x_3344.y)) + vec2<f32>(x_3347.w, x_3347.y));
            let x_3351 : f32 = u_xlat13.x;
            u_xlat14.x = x_3351;
            let x_3353 : vec4<f32> = u_xlat11;
            let x_3356 : vec4<f32> = x_665.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat14;
            let x_3361 : vec2<f32> = ((vec2<f32>(x_3353.x, x_3353.y) * vec2<f32>(x_3356.x, x_3356.y)) + vec2<f32>(x_3359.x, x_3359.y));
            let x_3362 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3361.x, x_3361.y, x_3362.z, x_3362.w);
            let x_3365 : vec4<f32> = u_xlat12;
            let x_3367 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3365.x, x_3365.x, x_3365.x, x_3365.x) * x_3367);
            let x_3370 : vec4<f32> = u_xlat12;
            let x_3372 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3370.y, x_3370.y, x_3370.y, x_3370.y) * x_3372);
            let x_3375 : vec4<f32> = u_xlat12;
            let x_3377 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3375.z, x_3375.z, x_3375.z, x_3375.z) * x_3377);
            let x_3379 : vec4<f32> = u_xlat12;
            let x_3381 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3379.w, x_3379.w, x_3379.w, x_3379.w) * x_3381);
            let x_3384 : vec4<f32> = u_xlat17;
            let x_3385 : vec2<f32> = vec2<f32>(x_3384.x, x_3384.y);
            let x_3387 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec43;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat84 = x_3396;
            let x_3398 : vec4<f32> = u_xlat17;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.z, x_3398.w);
            let x_3401 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec44;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat85 = x_3410;
            let x_3411 : f32 = u_xlat85;
            let x_3413 : f32 = u_xlat22.y;
            u_xlat85 = (x_3411 * x_3413);
            let x_3416 : f32 = u_xlat22.x;
            let x_3417 : f32 = u_xlat84;
            let x_3419 : f32 = u_xlat85;
            u_xlat84 = ((x_3416 * x_3417) + x_3419);
            let x_3422 : vec2<f32> = u_xlat61;
            let x_3424 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec45;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat85 = x_3433;
            let x_3435 : f32 = u_xlat22.z;
            let x_3436 : f32 = u_xlat85;
            let x_3438 : f32 = u_xlat84;
            u_xlat84 = ((x_3435 * x_3436) + x_3438);
            let x_3441 : vec4<f32> = u_xlat20;
            let x_3442 : vec2<f32> = vec2<f32>(x_3441.x, x_3441.y);
            let x_3444 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec46;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat85 = x_3453;
            let x_3455 : f32 = u_xlat22.w;
            let x_3456 : f32 = u_xlat85;
            let x_3458 : f32 = u_xlat84;
            u_xlat84 = ((x_3455 * x_3456) + x_3458);
            let x_3461 : vec4<f32> = u_xlat18;
            let x_3462 : vec2<f32> = vec2<f32>(x_3461.x, x_3461.y);
            let x_3464 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3462.x, x_3462.y, x_3464);
            let x_3471 : vec3<f32> = txVec47;
            let x_3473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3471.xy, x_3471.z);
            u_xlat85 = x_3473;
            let x_3475 : f32 = u_xlat23.x;
            let x_3476 : f32 = u_xlat85;
            let x_3478 : f32 = u_xlat84;
            u_xlat84 = ((x_3475 * x_3476) + x_3478);
            let x_3481 : vec4<f32> = u_xlat18;
            let x_3482 : vec2<f32> = vec2<f32>(x_3481.z, x_3481.w);
            let x_3484 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec48;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat85 = x_3493;
            let x_3495 : f32 = u_xlat23.y;
            let x_3496 : f32 = u_xlat85;
            let x_3498 : f32 = u_xlat84;
            u_xlat84 = ((x_3495 * x_3496) + x_3498);
            let x_3501 : vec4<f32> = u_xlat19;
            let x_3502 : vec2<f32> = vec2<f32>(x_3501.x, x_3501.y);
            let x_3504 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3502.x, x_3502.y, x_3504);
            let x_3511 : vec3<f32> = txVec49;
            let x_3513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3511.xy, x_3511.z);
            u_xlat85 = x_3513;
            let x_3515 : f32 = u_xlat23.z;
            let x_3516 : f32 = u_xlat85;
            let x_3518 : f32 = u_xlat84;
            u_xlat84 = ((x_3515 * x_3516) + x_3518);
            let x_3521 : vec4<f32> = u_xlat20;
            let x_3522 : vec2<f32> = vec2<f32>(x_3521.z, x_3521.w);
            let x_3524 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3522.x, x_3522.y, x_3524);
            let x_3531 : vec3<f32> = txVec50;
            let x_3533 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3531.xy, x_3531.z);
            u_xlat85 = x_3533;
            let x_3535 : f32 = u_xlat23.w;
            let x_3536 : f32 = u_xlat85;
            let x_3538 : f32 = u_xlat84;
            u_xlat84 = ((x_3535 * x_3536) + x_3538);
            let x_3541 : vec4<f32> = u_xlat21;
            let x_3542 : vec2<f32> = vec2<f32>(x_3541.x, x_3541.y);
            let x_3544 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3542.x, x_3542.y, x_3544);
            let x_3551 : vec3<f32> = txVec51;
            let x_3553 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3551.xy, x_3551.z);
            u_xlat85 = x_3553;
            let x_3555 : f32 = u_xlat24.x;
            let x_3556 : f32 = u_xlat85;
            let x_3558 : f32 = u_xlat84;
            u_xlat84 = ((x_3555 * x_3556) + x_3558);
            let x_3561 : vec4<f32> = u_xlat21;
            let x_3562 : vec2<f32> = vec2<f32>(x_3561.z, x_3561.w);
            let x_3564 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3562.x, x_3562.y, x_3564);
            let x_3571 : vec3<f32> = txVec52;
            let x_3573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3571.xy, x_3571.z);
            u_xlat85 = x_3573;
            let x_3575 : f32 = u_xlat24.y;
            let x_3576 : f32 = u_xlat85;
            let x_3578 : f32 = u_xlat84;
            u_xlat84 = ((x_3575 * x_3576) + x_3578);
            let x_3581 : vec2<f32> = u_xlat38;
            let x_3583 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3581.x, x_3581.y, x_3583);
            let x_3590 : vec3<f32> = txVec53;
            let x_3592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3590.xy, x_3590.z);
            u_xlat85 = x_3592;
            let x_3594 : f32 = u_xlat24.z;
            let x_3595 : f32 = u_xlat85;
            let x_3597 : f32 = u_xlat84;
            u_xlat84 = ((x_3594 * x_3595) + x_3597);
            let x_3600 : vec2<f32> = u_xlat69;
            let x_3602 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3600.x, x_3600.y, x_3602);
            let x_3609 : vec3<f32> = txVec54;
            let x_3611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3609.xy, x_3609.z);
            u_xlat85 = x_3611;
            let x_3613 : f32 = u_xlat24.w;
            let x_3614 : f32 = u_xlat85;
            let x_3616 : f32 = u_xlat84;
            u_xlat84 = ((x_3613 * x_3614) + x_3616);
            let x_3619 : vec4<f32> = u_xlat16;
            let x_3620 : vec2<f32> = vec2<f32>(x_3619.x, x_3619.y);
            let x_3622 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3620.x, x_3620.y, x_3622);
            let x_3629 : vec3<f32> = txVec55;
            let x_3631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3629.xy, x_3629.z);
            u_xlat85 = x_3631;
            let x_3633 : f32 = u_xlat12.x;
            let x_3634 : f32 = u_xlat85;
            let x_3636 : f32 = u_xlat84;
            u_xlat84 = ((x_3633 * x_3634) + x_3636);
            let x_3639 : vec4<f32> = u_xlat16;
            let x_3640 : vec2<f32> = vec2<f32>(x_3639.z, x_3639.w);
            let x_3642 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3640.x, x_3640.y, x_3642);
            let x_3649 : vec3<f32> = txVec56;
            let x_3651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3649.xy, x_3649.z);
            u_xlat85 = x_3651;
            let x_3653 : f32 = u_xlat12.y;
            let x_3654 : f32 = u_xlat85;
            let x_3656 : f32 = u_xlat84;
            u_xlat84 = ((x_3653 * x_3654) + x_3656);
            let x_3659 : vec2<f32> = u_xlat64;
            let x_3661 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3659.x, x_3659.y, x_3661);
            let x_3668 : vec3<f32> = txVec57;
            let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
            u_xlat85 = x_3670;
            let x_3672 : f32 = u_xlat12.z;
            let x_3673 : f32 = u_xlat85;
            let x_3675 : f32 = u_xlat84;
            u_xlat84 = ((x_3672 * x_3673) + x_3675);
            let x_3678 : vec4<f32> = u_xlat11;
            let x_3679 : vec2<f32> = vec2<f32>(x_3678.x, x_3678.y);
            let x_3681 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3679.x, x_3679.y, x_3681);
            let x_3688 : vec3<f32> = txVec58;
            let x_3690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3688.xy, x_3688.z);
            u_xlat85 = x_3690;
            let x_3692 : f32 = u_xlat12.w;
            let x_3693 : f32 = u_xlat85;
            let x_3695 : f32 = u_xlat84;
            u_xlat83 = ((x_3692 * x_3693) + x_3695);
          }
        }
      } else {
        let x_3699 : vec4<f32> = u_xlat10;
        let x_3700 : vec2<f32> = vec2<f32>(x_3699.x, x_3699.y);
        let x_3702 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3700.x, x_3700.y, x_3702);
        let x_3709 : vec3<f32> = txVec59;
        let x_3711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3709.xy, x_3709.z);
        u_xlat83 = x_3711;
      }
      let x_3712 : i32 = u_xlati79;
      let x_3714 : f32 = x_665.x_AdditionalShadowParams[x_3712].x;
      u_xlat84 = (1.0f + -(x_3714));
      let x_3717 : f32 = u_xlat83;
      let x_3718 : i32 = u_xlati79;
      let x_3720 : f32 = x_665.x_AdditionalShadowParams[x_3718].x;
      let x_3722 : f32 = u_xlat84;
      u_xlat83 = ((x_3717 * x_3720) + x_3722);
      let x_3725 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3725);
      let x_3728 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3728 >= 1.0f);
      let x_3731 : bool = u_xlatb84;
      let x_3733 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3731 | x_3733);
      let x_3735 : bool = u_xlatb84;
      let x_3736 : f32 = u_xlat83;
      u_xlat83 = select(x_3736, 1.0f, x_3735);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3739 : f32 = u_xlat83;
    u_xlat84 = (-(x_3739) + 1.0f);
    let x_3743 : f32 = u_xlat2.x;
    let x_3744 : f32 = u_xlat84;
    let x_3746 : f32 = u_xlat83;
    u_xlat83 = ((x_3743 * x_3744) + x_3746);
    let x_3748 : f32 = u_xlat80;
    let x_3749 : f32 = u_xlat83;
    u_xlat80 = (x_3748 * x_3749);
    let x_3751 : vec4<f32> = u_xlat1;
    let x_3753 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3751.x, x_3751.y, x_3751.z), vec3<f32>(x_3753.x, x_3753.y, x_3753.z));
    let x_3756 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3756, 0.0f, 1.0f);
    let x_3758 : f32 = u_xlat80;
    let x_3759 : f32 = u_xlat83;
    u_xlat80 = (x_3758 * x_3759);
    let x_3761 : f32 = u_xlat80;
    let x_3763 : i32 = u_xlati79;
    let x_3765 : vec4<f32> = x_2303.x_AdditionalLightsColor[x_3763];
    let x_3767 : vec3<f32> = (vec3<f32>(x_3761, x_3761, x_3761) * vec3<f32>(x_3765.x, x_3765.y, x_3765.z));
    let x_3768 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3767.x, x_3767.y, x_3767.z, x_3768.w);
    let x_3770 : vec4<f32> = u_xlat8;
    let x_3772 : f32 = u_xlat81;
    let x_3775 : vec4<f32> = u_xlat3;
    let x_3777 : vec3<f32> = ((vec3<f32>(x_3770.x, x_3770.y, x_3770.z) * vec3<f32>(x_3772, x_3772, x_3772)) + vec3<f32>(x_3775.x, x_3775.y, x_3775.z));
    let x_3778 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3777.x, x_3777.y, x_3777.z, x_3778.w);
    let x_3780 : vec4<f32> = u_xlat8;
    let x_3782 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3780.x, x_3780.y, x_3780.z), vec3<f32>(x_3782.x, x_3782.y, x_3782.z));
    let x_3785 : f32 = u_xlat79;
    u_xlat79 = max(x_3785, 1.17549435e-38f);
    let x_3787 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3787);
    let x_3789 : f32 = u_xlat79;
    let x_3791 : vec4<f32> = u_xlat8;
    let x_3793 : vec3<f32> = (vec3<f32>(x_3789, x_3789, x_3789) * vec3<f32>(x_3791.x, x_3791.y, x_3791.z));
    let x_3794 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3793.x, x_3793.y, x_3793.z, x_3794.w);
    let x_3796 : vec4<f32> = u_xlat1;
    let x_3798 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3796.x, x_3796.y, x_3796.z), vec3<f32>(x_3798.x, x_3798.y, x_3798.z));
    let x_3801 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3801, 0.0f, 1.0f);
    let x_3803 : vec4<f32> = u_xlat9;
    let x_3805 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3803.x, x_3803.y, x_3803.z), vec3<f32>(x_3805.x, x_3805.y, x_3805.z));
    let x_3808 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3808, 0.0f, 1.0f);
    let x_3810 : f32 = u_xlat79;
    let x_3811 : f32 = u_xlat79;
    u_xlat79 = (x_3810 * x_3811);
    let x_3813 : f32 = u_xlat79;
    let x_3815 : f32 = u_xlat7.x;
    u_xlat79 = ((x_3813 * x_3815) + 1.00001001358032226562f);
    let x_3818 : f32 = u_xlat80;
    let x_3819 : f32 = u_xlat80;
    u_xlat80 = (x_3818 * x_3819);
    let x_3821 : f32 = u_xlat79;
    let x_3822 : f32 = u_xlat79;
    u_xlat79 = (x_3821 * x_3822);
    let x_3824 : f32 = u_xlat80;
    u_xlat80 = max(x_3824, 0.10000000149011611938f);
    let x_3826 : f32 = u_xlat79;
    let x_3827 : f32 = u_xlat80;
    u_xlat79 = (x_3826 * x_3827);
    let x_3829 : f32 = u_xlat78;
    let x_3830 : f32 = u_xlat79;
    u_xlat79 = (x_3829 * x_3830);
    let x_3832 : f32 = u_xlat27;
    let x_3833 : f32 = u_xlat79;
    u_xlat79 = (x_3832 / x_3833);
    let x_3835 : vec4<f32> = u_xlat0;
    let x_3837 : f32 = u_xlat79;
    let x_3840 : vec3<f32> = u_xlat5;
    let x_3841 : vec3<f32> = ((vec3<f32>(x_3835.x, x_3835.y, x_3835.z) * vec3<f32>(x_3837, x_3837, x_3837)) + x_3840);
    let x_3842 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3841.x, x_3841.y, x_3841.z, x_3842.w);
    let x_3844 : vec4<f32> = u_xlat8;
    let x_3846 : vec4<f32> = u_xlat10;
    let x_3849 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3844.x, x_3844.y, x_3844.z) * vec3<f32>(x_3846.x, x_3846.y, x_3846.z)) + x_3849);

    continuing {
      let x_3851 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3851 + bitcast<u32>(1i));
    }
  }
  let x_3853 : vec4<f32> = u_xlat4;
  let x_3855 : f32 = u_xlat52;
  let x_3858 : vec4<f32> = u_xlat6;
  let x_3860 : vec3<f32> = ((vec3<f32>(x_3853.x, x_3853.y, x_3853.z) * vec3<f32>(x_3855, x_3855, x_3855)) + vec3<f32>(x_3858.x, x_3858.y, x_3858.z));
  let x_3861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3860.x, x_3860.y, x_3860.z, x_3861.w);
  let x_3863 : vec3<f32> = u_xlat32;
  let x_3864 : vec4<f32> = u_xlat0;
  let x_3866 : vec3<f32> = (x_3863 + vec3<f32>(x_3864.x, x_3864.y, x_3864.z));
  let x_3867 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3866.x, x_3866.y, x_3866.z, x_3867.w);
  let x_3869 : f32 = u_xlat75;
  let x_3870 : f32 = u_xlat75;
  u_xlat75 = (x_3869 * -(x_3870));
  let x_3873 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3873);
  let x_3875 : vec4<f32> = u_xlat0;
  let x_3878 : vec4<f32> = x_29.unity_FogColor;
  let x_3881 : vec3<f32> = (vec3<f32>(x_3875.x, x_3875.y, x_3875.z) + -(vec3<f32>(x_3878.x, x_3878.y, x_3878.z)));
  let x_3882 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3881.x, x_3881.y, x_3881.z, x_3882.w);
  let x_3886 : f32 = u_xlat75;
  let x_3888 : vec4<f32> = u_xlat0;
  let x_3892 : vec4<f32> = x_29.unity_FogColor;
  let x_3894 : vec3<f32> = ((vec3<f32>(x_3886, x_3886, x_3886) * vec3<f32>(x_3888.x, x_3888.y, x_3888.z)) + vec3<f32>(x_3892.x, x_3892.y, x_3892.z));
  let x_3895 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
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


