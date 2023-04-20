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

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb33 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat33 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb23 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat23 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat24 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

@group(1) @binding(3) var<uniform> x_660 : LightShadows;

var<private> u_xlatb37 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1020 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlati39 : i32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1152 : f32;
  var x_1162 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlatb11 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb11;
  u_xlat11 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat11;
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
  u_xlatb11 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat22 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb11;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat22;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat11 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat12.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat22;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat22 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat22;
  u_xlatb33 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat22;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat22;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat12.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat22;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat22 = x_207;
  let x_208 : bool = u_xlatb33;
  if (x_208) {
    let x_213 : f32 = u_xlat12.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat22;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat22 = x_216;
  let x_217 : f32 = u_xlat22;
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
  let x_268 : f32 = u_xlat11;
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
  u_xlat33 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat33;
  u_xlat33 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat33;
  u_xlat33 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_319);
  let x_321 : f32 = u_xlat33;
  u_xlat33 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb23.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat23.y;
  let x_367 : f32 = u_xlat23.x;
  u_xlat23.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat23;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat12;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat33;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat33;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb33 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat34;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb33;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb33;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb33;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_507 : vec2<f32> = vs_INTERP0;
  let x_509 : f32 = x_29.x_GlobalMipBias.x;
  let x_510 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_507, x_509);
  u_xlat3 = x_510;
  let x_516 : vec2<f32> = vs_INTERP0;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_516, x_518);
  u_xlat5 = vec3<f32>(x_519.x, x_519.y, x_519.z);
  let x_521 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat33;
  u_xlat33 = (x_533 + 0.5f);
  let x_536 : f32 = u_xlat33;
  let x_538 : vec3<f32> = u_xlat5;
  let x_539 : vec3<f32> = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = u_xlat3.w;
  u_xlat33 = max(x_543, 0.00009999999747378752f);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : f32 = u_xlat33;
  let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) / vec3<f32>(x_548, x_548, x_548));
  let x_551 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat2;
  let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
  let x_555 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat2;
  let x_561 : vec2<f32> = clamp(vec2<f32>(x_557.x, x_557.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_565 : f32 = u_xlat2.x;
  u_xlat33 = ((-(x_565) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_570 : f32 = u_xlat33;
  let x_573 : f32 = u_xlat2.y;
  u_xlat34 = (-(x_570) + x_573);
  let x_575 : f32 = u_xlat33;
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_575, x_575, x_575) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat0;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * vec3<f32>(x_589.x, x_589.y, x_589.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_598 : f32 = u_xlat2.y;
  u_xlat33 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat33;
  let x_602 : f32 = u_xlat33;
  u_xlat2.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat2.x;
  u_xlat13 = (x_612 * x_614);
  let x_616 : f32 = u_xlat34;
  u_xlat34 = (x_616 + 1.0f);
  let x_618 : f32 = u_xlat34;
  u_xlat34 = min(x_618, 1.0f);
  let x_622 : f32 = u_xlat2.x;
  u_xlat35 = ((x_622 * 4.0f) + 2.0f);
  let x_628 : f32 = u_xlat2.z;
  u_xlat24 = min(x_628, 1.0f);
  let x_633 : vec4<f32> = vs_INTERP3;
  let x_634 : vec2<f32> = vec2<f32>(x_633.x, x_633.y);
  let x_636 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_634.x, x_634.y, x_636);
  let x_649 : vec3<f32> = txVec0;
  let x_651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_649.xy, x_649.z);
  u_xlat36 = x_651;
  let x_663 : f32 = x_660.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_663) + 1.0f);
  let x_666 : f32 = u_xlat36;
  let x_668 : f32 = x_660.x_MainLightShadowParams.x;
  let x_670 : f32 = u_xlat37;
  u_xlat36 = ((x_666 * x_668) + x_670);
  let x_674 : f32 = vs_INTERP3.z;
  u_xlatb37 = (0.0f >= x_674);
  let x_678 : f32 = vs_INTERP3.z;
  u_xlatb38 = (x_678 >= 1.0f);
  let x_680 : bool = u_xlatb37;
  let x_681 : bool = u_xlatb38;
  u_xlatb37 = (x_680 | x_681);
  let x_683 : bool = u_xlatb37;
  let x_684 : f32 = u_xlat36;
  u_xlat36 = select(x_684, 1.0f, x_683);
  let x_687 : vec3<f32> = vs_INTERP7;
  let x_689 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_691 : vec3<f32> = (x_687 + -(x_689));
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat6;
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_700 : f32 = u_xlat37;
  let x_702 : f32 = x_660.x_MainLightShadowParams.z;
  let x_705 : f32 = x_660.x_MainLightShadowParams.w;
  u_xlat38 = ((x_700 * x_702) + x_705);
  let x_707 : f32 = u_xlat38;
  u_xlat38 = clamp(x_707, 0.0f, 1.0f);
  let x_709 : f32 = u_xlat36;
  u_xlat6.x = (-(x_709) + 1.0f);
  let x_713 : f32 = u_xlat38;
  let x_715 : f32 = u_xlat6.x;
  let x_717 : f32 = u_xlat36;
  u_xlat36 = ((x_713 * x_715) + x_717);
  let x_719 : vec3<f32> = u_xlat4;
  let x_721 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(-(x_719), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat38;
  let x_725 : f32 = u_xlat38;
  u_xlat38 = (x_724 + x_725);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : f32 = u_xlat38;
  let x_733 : vec3<f32> = u_xlat4;
  let x_735 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * -(vec3<f32>(x_729, x_729, x_729))) + -(x_733));
  let x_736 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), x_740);
  let x_742 : f32 = u_xlat38;
  u_xlat38 = clamp(x_742, 0.0f, 1.0f);
  let x_744 : f32 = u_xlat38;
  u_xlat38 = (-(x_744) + 1.0f);
  let x_747 : f32 = u_xlat38;
  let x_748 : f32 = u_xlat38;
  u_xlat38 = (x_747 * x_748);
  let x_750 : f32 = u_xlat38;
  let x_751 : f32 = u_xlat38;
  u_xlat38 = (x_750 * x_751);
  let x_754 : f32 = u_xlat33;
  u_xlat39 = ((-(x_754) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_760 : f32 = u_xlat33;
  let x_761 : f32 = u_xlat39;
  u_xlat33 = (x_760 * x_761);
  let x_763 : f32 = u_xlat33;
  u_xlat33 = (x_763 * 6.0f);
  let x_773 : vec4<f32> = u_xlat6;
  let x_775 : f32 = u_xlat33;
  let x_776 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_773.x, x_773.y, x_773.z), x_775);
  u_xlat6 = x_776;
  let x_778 : f32 = u_xlat6.w;
  u_xlat33 = (x_778 + -1.0f);
  let x_781 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_782 : f32 = u_xlat33;
  u_xlat33 = ((x_781 * x_782) + 1.0f);
  let x_785 : f32 = u_xlat33;
  u_xlat33 = max(x_785, 0.0f);
  let x_787 : f32 = u_xlat33;
  u_xlat33 = log2(x_787);
  let x_789 : f32 = u_xlat33;
  let x_791 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_789 * x_791);
  let x_793 : f32 = u_xlat33;
  u_xlat33 = exp2(x_793);
  let x_795 : f32 = u_xlat33;
  let x_797 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_795 * x_797);
  let x_799 : vec4<f32> = u_xlat6;
  let x_801 : f32 = u_xlat33;
  let x_803 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801, x_801, x_801));
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec2<f32>(x_807.x, x_807.x) * vec2<f32>(x_809.x, x_809.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_815 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_815);
  let x_818 : vec4<f32> = u_xlat0;
  let x_821 : f32 = u_xlat34;
  u_xlat18 = (-(vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(x_821, x_821, x_821));
  let x_824 : f32 = u_xlat38;
  let x_826 : vec3<f32> = u_xlat18;
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_824, x_824, x_824) * x_826) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat33;
  let x_833 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_831, x_831, x_831) * x_833);
  let x_835 : vec4<f32> = u_xlat6;
  let x_837 : vec3<f32> = u_xlat18;
  let x_838 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * x_837);
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat3;
  let x_843 : vec3<f32> = u_xlat5;
  let x_845 : vec4<f32> = u_xlat6;
  let x_847 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.y, x_841.z) * x_843) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : f32 = u_xlat36;
  let x_852 : f32 = x_349.unity_LightData.z;
  u_xlat33 = (x_850 * x_852);
  let x_854 : vec4<f32> = u_xlat1;
  let x_858 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : f32 = u_xlat34;
  u_xlat34 = clamp(x_861, 0.0f, 1.0f);
  let x_863 : f32 = u_xlat33;
  let x_864 : f32 = u_xlat34;
  u_xlat33 = (x_863 * x_864);
  let x_866 : f32 = u_xlat33;
  let x_869 : vec4<f32> = x_29.x_MainLightColor;
  let x_871 : vec3<f32> = (vec3<f32>(x_866, x_866, x_866) * vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat4;
  let x_876 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat18 = (x_874 + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec3<f32> = u_xlat18;
  let x_880 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_879, x_880);
  let x_882 : f32 = u_xlat33;
  u_xlat33 = max(x_882, 1.17549435e-38f);
  let x_885 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_885);
  let x_887 : f32 = u_xlat33;
  let x_889 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_887, x_887, x_887) * x_889);
  let x_891 : vec4<f32> = u_xlat1;
  let x_893 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(vec3<f32>(x_891.x, x_891.y, x_891.z), x_893);
  let x_895 : f32 = u_xlat33;
  u_xlat33 = clamp(x_895, 0.0f, 1.0f);
  let x_898 : vec4<f32> = x_29.x_MainLightPosition;
  let x_900 : vec3<f32> = u_xlat18;
  u_xlat34 = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), x_900);
  let x_902 : f32 = u_xlat34;
  u_xlat34 = clamp(x_902, 0.0f, 1.0f);
  let x_904 : f32 = u_xlat33;
  let x_905 : f32 = u_xlat33;
  u_xlat33 = (x_904 * x_905);
  let x_907 : f32 = u_xlat33;
  let x_909 : f32 = u_xlat7.x;
  u_xlat33 = ((x_907 * x_909) + 1.00001001358032226562f);
  let x_913 : f32 = u_xlat34;
  let x_914 : f32 = u_xlat34;
  u_xlat34 = (x_913 * x_914);
  let x_916 : f32 = u_xlat33;
  let x_917 : f32 = u_xlat33;
  u_xlat33 = (x_916 * x_917);
  let x_919 : f32 = u_xlat34;
  u_xlat34 = max(x_919, 0.10000000149011611938f);
  let x_922 : f32 = u_xlat33;
  let x_923 : f32 = u_xlat34;
  u_xlat33 = (x_922 * x_923);
  let x_925 : f32 = u_xlat35;
  let x_926 : f32 = u_xlat33;
  u_xlat33 = (x_925 * x_926);
  let x_928 : f32 = u_xlat13;
  let x_929 : f32 = u_xlat33;
  u_xlat33 = (x_928 / x_929);
  let x_931 : vec4<f32> = u_xlat0;
  let x_933 : f32 = u_xlat33;
  let x_936 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(x_933, x_933, x_933)) + x_936);
  let x_938 : vec4<f32> = u_xlat6;
  let x_940 : vec3<f32> = u_xlat18;
  let x_941 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) * x_940);
  let x_942 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_945 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_947 : f32 = x_349.unity_LightData.y;
  u_xlat33 = min(x_945, x_947);
  let x_951 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_951));
  let x_954 : f32 = u_xlat37;
  let x_957 : f32 = x_660.x_AdditionalShadowFadeParams.x;
  let x_960 : f32 = x_660.x_AdditionalShadowFadeParams.y;
  u_xlat34 = ((x_954 * x_957) + x_960);
  let x_962 : f32 = u_xlat34;
  u_xlat34 = clamp(x_962, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_974 : u32 = u_xlatu_loop_1;
    let x_975 : u32 = u_xlatu33;
    if ((x_974 < x_975)) {
    } else {
      break;
    }
    let x_978 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_978 >> 2u);
    let x_982 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_982 & 3u));
    let x_985 : u32 = u_xlatu36;
    let x_988 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_985)];
    let x_998 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1003 : vec4<u32> = indexable[x_998];
    u_xlat36 = dot(x_988, bitcast<vec4<f32>>(x_1003));
    let x_1007 : f32 = u_xlat36;
    u_xlati36 = i32(x_1007);
    let x_1010 : vec3<f32> = vs_INTERP7;
    let x_1021 : i32 = u_xlati36;
    let x_1023 : vec4<f32> = x_1020.x_AdditionalLightsPosition[x_1021];
    let x_1026 : i32 = u_xlati36;
    let x_1028 : vec4<f32> = x_1020.x_AdditionalLightsPosition[x_1026];
    u_xlat8 = ((-(x_1010) * vec3<f32>(x_1023.w, x_1023.w, x_1023.w)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
    let x_1031 : vec3<f32> = u_xlat8;
    let x_1032 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1031, x_1032);
    let x_1034 : f32 = u_xlat37;
    u_xlat37 = max(x_1034, 0.00006103515625f);
    let x_1037 : f32 = u_xlat37;
    u_xlat38 = inverseSqrt(x_1037);
    let x_1040 : f32 = u_xlat38;
    let x_1042 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1040, x_1040, x_1040) * x_1042);
    let x_1044 : f32 = u_xlat37;
    u_xlat39 = (1.0f / x_1044);
    let x_1046 : f32 = u_xlat37;
    let x_1047 : i32 = u_xlati36;
    let x_1049 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1047].x;
    u_xlat37 = (x_1046 * x_1049);
    let x_1051 : f32 = u_xlat37;
    let x_1053 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1051) * x_1053) + 1.0f);
    let x_1056 : f32 = u_xlat37;
    u_xlat37 = max(x_1056, 0.0f);
    let x_1058 : f32 = u_xlat37;
    let x_1059 : f32 = u_xlat37;
    u_xlat37 = (x_1058 * x_1059);
    let x_1061 : f32 = u_xlat37;
    let x_1062 : f32 = u_xlat39;
    u_xlat37 = (x_1061 * x_1062);
    let x_1064 : i32 = u_xlati36;
    let x_1066 : vec4<f32> = x_1020.x_AdditionalLightsSpotDir[x_1064];
    let x_1068 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), x_1068);
    let x_1070 : f32 = u_xlat39;
    let x_1071 : i32 = u_xlati36;
    let x_1073 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1071].z;
    let x_1075 : i32 = u_xlati36;
    let x_1077 : f32 = x_1020.x_AdditionalLightsAttenuation[x_1075].w;
    u_xlat39 = ((x_1070 * x_1073) + x_1077);
    let x_1079 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1079, 0.0f, 1.0f);
    let x_1081 : f32 = u_xlat39;
    let x_1082 : f32 = u_xlat39;
    u_xlat39 = (x_1081 * x_1082);
    let x_1084 : f32 = u_xlat37;
    let x_1085 : f32 = u_xlat39;
    u_xlat37 = (x_1084 * x_1085);
    let x_1089 : i32 = u_xlati36;
    let x_1091 : f32 = x_660.x_AdditionalShadowParams[x_1089].w;
    u_xlati39 = i32(x_1091);
    let x_1094 : i32 = u_xlati39;
    u_xlatb41 = (x_1094 >= 0i);
    let x_1096 : bool = u_xlatb41;
    if (x_1096) {
      let x_1100 : i32 = u_xlati36;
      let x_1102 : f32 = x_660.x_AdditionalShadowParams[x_1100].z;
      u_xlatb41 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1102, x_1102, x_1102, x_1102))));
      let x_1107 : bool = u_xlatb41;
      if (x_1107) {
        let x_1112 : vec3<f32> = u_xlat9;
        let x_1115 : vec3<f32> = u_xlat9;
        let x_1118 : vec4<bool> = (abs(vec4<f32>(x_1112.z, x_1112.z, x_1112.y, x_1112.z)) >= abs(vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.x)));
        let x_1120 : vec3<bool> = vec3<bool>(x_1118.x, x_1118.y, x_1118.z);
        let x_1121 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1124 : bool = u_xlatb10.y;
        let x_1126 : bool = u_xlatb10.x;
        u_xlatb41 = (x_1124 & x_1126);
        let x_1128 : vec3<f32> = u_xlat9;
        let x_1131 : vec4<bool> = (-(vec4<f32>(x_1128.z, x_1128.y, x_1128.z, x_1128.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1132 : vec3<bool> = vec3<bool>(x_1131.x, x_1131.y, x_1131.w);
        let x_1133 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1132.x, x_1132.y, x_1133.z, x_1132.z);
        let x_1137 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1137);
        let x_1142 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1142);
        let x_1148 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1148);
        let x_1151 : bool = u_xlatb10.z;
        if (x_1151) {
          let x_1156 : f32 = u_xlat10.y;
          x_1152 = x_1156;
        } else {
          let x_1158 : f32 = u_xlat42;
          x_1152 = x_1158;
        }
        let x_1159 : f32 = x_1152;
        u_xlat42 = x_1159;
        let x_1161 : bool = u_xlatb41;
        if (x_1161) {
          let x_1166 : f32 = u_xlat10.x;
          x_1162 = x_1166;
        } else {
          let x_1168 : f32 = u_xlat42;
          x_1162 = x_1168;
        }
        let x_1169 : f32 = x_1162;
        u_xlat41 = x_1169;
        let x_1170 : i32 = u_xlati36;
        let x_1172 : f32 = x_660.x_AdditionalShadowParams[x_1170].w;
        u_xlat42 = trunc(x_1172);
        let x_1174 : f32 = u_xlat41;
        let x_1175 : f32 = u_xlat42;
        u_xlat41 = (x_1174 + x_1175);
        let x_1177 : f32 = u_xlat41;
        u_xlati39 = i32(x_1177);
      }
      let x_1179 : i32 = u_xlati39;
      u_xlati39 = (x_1179 << bitcast<u32>(2i));
      let x_1181 : vec3<f32> = vs_INTERP7;
      let x_1184 : i32 = u_xlati39;
      let x_1187 : i32 = u_xlati39;
      let x_1191 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1184 + 1i) / 4i)][((x_1187 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y) * x_1191);
      let x_1193 : i32 = u_xlati39;
      let x_1195 : i32 = u_xlati39;
      let x_1198 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[(x_1193 / 4i)][(x_1195 % 4i)];
      let x_1199 : vec3<f32> = vs_INTERP7;
      let x_1202 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1198 * vec4<f32>(x_1199.x, x_1199.x, x_1199.x, x_1199.x)) + x_1202);
      let x_1204 : i32 = u_xlati39;
      let x_1207 : i32 = u_xlati39;
      let x_1211 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1204 + 2i) / 4i)][((x_1207 + 2i) % 4i)];
      let x_1212 : vec3<f32> = vs_INTERP7;
      let x_1215 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1211 * vec4<f32>(x_1212.z, x_1212.z, x_1212.z, x_1212.z)) + x_1215);
      let x_1217 : vec4<f32> = u_xlat10;
      let x_1218 : i32 = u_xlati39;
      let x_1221 : i32 = u_xlati39;
      let x_1225 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1218 + 3i) / 4i)][((x_1221 + 3i) % 4i)];
      u_xlat10 = (x_1217 + x_1225);
      let x_1227 : vec4<f32> = u_xlat10;
      let x_1229 : vec4<f32> = u_xlat10;
      let x_1231 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) / vec3<f32>(x_1229.w, x_1229.w, x_1229.w));
      let x_1232 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
      let x_1235 : vec4<f32> = u_xlat10;
      let x_1236 : vec2<f32> = vec2<f32>(x_1235.x, x_1235.y);
      let x_1238 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
      let x_1246 : vec3<f32> = txVec1;
      let x_1248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
      u_xlat39 = x_1248;
      let x_1249 : i32 = u_xlati36;
      let x_1251 : f32 = x_660.x_AdditionalShadowParams[x_1249].x;
      u_xlat41 = (1.0f + -(x_1251));
      let x_1254 : f32 = u_xlat39;
      let x_1255 : i32 = u_xlati36;
      let x_1257 : f32 = x_660.x_AdditionalShadowParams[x_1255].x;
      let x_1259 : f32 = u_xlat41;
      u_xlat39 = ((x_1254 * x_1257) + x_1259);
      let x_1262 : f32 = u_xlat10.z;
      u_xlatb41 = (0.0f >= x_1262);
      let x_1266 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1266 >= 1.0f);
      let x_1268 : bool = u_xlatb41;
      let x_1269 : bool = u_xlatb42;
      u_xlatb41 = (x_1268 | x_1269);
      let x_1271 : bool = u_xlatb41;
      let x_1272 : f32 = u_xlat39;
      u_xlat39 = select(x_1272, 1.0f, x_1271);
    } else {
      u_xlat39 = 1.0f;
    }
    let x_1275 : f32 = u_xlat39;
    u_xlat41 = (-(x_1275) + 1.0f);
    let x_1278 : f32 = u_xlat34;
    let x_1279 : f32 = u_xlat41;
    let x_1281 : f32 = u_xlat39;
    u_xlat39 = ((x_1278 * x_1279) + x_1281);
    let x_1283 : f32 = u_xlat37;
    let x_1284 : f32 = u_xlat39;
    u_xlat37 = (x_1283 * x_1284);
    let x_1286 : vec4<f32> = u_xlat1;
    let x_1288 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1286.x, x_1286.y, x_1286.z), x_1288);
    let x_1290 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1290, 0.0f, 1.0f);
    let x_1292 : f32 = u_xlat37;
    let x_1293 : f32 = u_xlat39;
    u_xlat37 = (x_1292 * x_1293);
    let x_1295 : f32 = u_xlat37;
    let x_1297 : i32 = u_xlati36;
    let x_1299 : vec4<f32> = x_1020.x_AdditionalLightsColor[x_1297];
    let x_1301 : vec3<f32> = (vec3<f32>(x_1295, x_1295, x_1295) * vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
    let x_1302 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
    let x_1304 : vec3<f32> = u_xlat8;
    let x_1305 : f32 = u_xlat38;
    let x_1308 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1304 * vec3<f32>(x_1305, x_1305, x_1305)) + x_1308);
    let x_1310 : vec3<f32> = u_xlat8;
    let x_1311 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1310, x_1311);
    let x_1313 : f32 = u_xlat36;
    u_xlat36 = max(x_1313, 1.17549435e-38f);
    let x_1315 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1315);
    let x_1317 : f32 = u_xlat36;
    let x_1319 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1317, x_1317, x_1317) * x_1319);
    let x_1321 : vec4<f32> = u_xlat1;
    let x_1323 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), x_1323);
    let x_1325 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1325, 0.0f, 1.0f);
    let x_1327 : vec3<f32> = u_xlat9;
    let x_1328 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1327, x_1328);
    let x_1330 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1330, 0.0f, 1.0f);
    let x_1332 : f32 = u_xlat36;
    let x_1333 : f32 = u_xlat36;
    u_xlat36 = (x_1332 * x_1333);
    let x_1335 : f32 = u_xlat36;
    let x_1337 : f32 = u_xlat7.x;
    u_xlat36 = ((x_1335 * x_1337) + 1.00001001358032226562f);
    let x_1340 : f32 = u_xlat37;
    let x_1341 : f32 = u_xlat37;
    u_xlat37 = (x_1340 * x_1341);
    let x_1343 : f32 = u_xlat36;
    let x_1344 : f32 = u_xlat36;
    u_xlat36 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat37;
    u_xlat37 = max(x_1346, 0.10000000149011611938f);
    let x_1348 : f32 = u_xlat36;
    let x_1349 : f32 = u_xlat37;
    u_xlat36 = (x_1348 * x_1349);
    let x_1351 : f32 = u_xlat35;
    let x_1352 : f32 = u_xlat36;
    u_xlat36 = (x_1351 * x_1352);
    let x_1354 : f32 = u_xlat13;
    let x_1355 : f32 = u_xlat36;
    u_xlat36 = (x_1354 / x_1355);
    let x_1357 : vec4<f32> = u_xlat0;
    let x_1359 : f32 = u_xlat36;
    let x_1362 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1357.x, x_1357.y, x_1357.z) * vec3<f32>(x_1359, x_1359, x_1359)) + x_1362);
    let x_1364 : vec3<f32> = u_xlat8;
    let x_1365 : vec4<f32> = u_xlat10;
    let x_1368 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1364 * vec3<f32>(x_1365.x, x_1365.y, x_1365.z)) + x_1368);

    continuing {
      let x_1370 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1370 + bitcast<u32>(1i));
    }
  }
  let x_1372 : vec4<f32> = u_xlat3;
  let x_1374 : f32 = u_xlat24;
  let x_1377 : vec4<f32> = u_xlat6;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374, x_1374, x_1374)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1384 : vec3<f32> = u_xlat18;
  let x_1385 : vec4<f32> = u_xlat0;
  let x_1387 : vec3<f32> = (x_1384 + vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
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


