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

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat30 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat45 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat46 : f32;

@group(1) @binding(3) var<uniform> x_660 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_724 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1170 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati48 : i32;

var<private> u_xlatb35 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat35 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb49 : bool;

var<private> u_xlati35 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

var<private> u_xlat39 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var x_808 : f32;
  var x_819 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1301 : f32;
  var x_1311 : f32;
  var txVec1 : vec3<f32>;
  var x_1748 : f32;
  var x_1761 : f32;
  var x_1809 : f32;
  var x_1821 : vec3<f32>;
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
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat14;
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
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
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
  let x_268 : f32 = u_xlat14;
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
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat43;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb42;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb42;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb42;
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
  u_xlat42 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat42;
  u_xlat42 = (x_533 + 0.5f);
  let x_536 : f32 = u_xlat42;
  let x_538 : vec3<f32> = u_xlat5;
  let x_539 : vec3<f32> = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = u_xlat3.w;
  u_xlat42 = max(x_543, 0.00009999999747378752f);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : f32 = u_xlat42;
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
  u_xlat42 = ((-(x_565) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_570 : f32 = u_xlat42;
  let x_573 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_570) + x_573);
  let x_575 : f32 = u_xlat42;
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
  u_xlat42 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat42;
  let x_602 : f32 = u_xlat42;
  u_xlat2.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat2.x;
  u_xlat16 = (x_612 * x_614);
  let x_616 : f32 = u_xlat43;
  u_xlat43 = (x_616 + 1.0f);
  let x_618 : f32 = u_xlat43;
  u_xlat43 = min(x_618, 1.0f);
  let x_622 : f32 = u_xlat2.x;
  u_xlat44 = ((x_622 * 4.0f) + 2.0f);
  let x_628 : f32 = u_xlat2.z;
  u_xlat30 = min(x_628, 1.0f);
  let x_633 : vec4<f32> = vs_INTERP3;
  let x_634 : vec2<f32> = vec2<f32>(x_633.x, x_633.y);
  let x_636 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_634.x, x_634.y, x_636);
  let x_649 : vec3<f32> = txVec0;
  let x_651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_649.xy, x_649.z);
  u_xlat45 = x_651;
  let x_663 : f32 = x_660.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_663) + 1.0f);
  let x_666 : f32 = u_xlat45;
  let x_668 : f32 = x_660.x_MainLightShadowParams.x;
  let x_670 : f32 = u_xlat46;
  u_xlat45 = ((x_666 * x_668) + x_670);
  let x_674 : f32 = vs_INTERP3.z;
  u_xlatb46 = (0.0f >= x_674);
  let x_678 : f32 = vs_INTERP3.z;
  u_xlatb47 = (x_678 >= 1.0f);
  let x_680 : bool = u_xlatb46;
  let x_681 : bool = u_xlatb47;
  u_xlatb46 = (x_680 | x_681);
  let x_683 : bool = u_xlatb46;
  let x_684 : f32 = u_xlat45;
  u_xlat45 = select(x_684, 1.0f, x_683);
  let x_687 : vec3<f32> = vs_INTERP7;
  let x_689 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_691 : vec3<f32> = (x_687 + -(x_689));
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat6;
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_700 : f32 = u_xlat46;
  let x_702 : f32 = x_660.x_MainLightShadowParams.z;
  let x_705 : f32 = x_660.x_MainLightShadowParams.w;
  u_xlat47 = ((x_700 * x_702) + x_705);
  let x_707 : f32 = u_xlat47;
  u_xlat47 = clamp(x_707, 0.0f, 1.0f);
  let x_709 : f32 = u_xlat45;
  u_xlat6.x = (-(x_709) + 1.0f);
  let x_713 : f32 = u_xlat47;
  let x_715 : f32 = u_xlat6.x;
  let x_717 : f32 = u_xlat45;
  u_xlat45 = ((x_713 * x_715) + x_717);
  let x_726 : f32 = x_724.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_726 == -1.0f));
  let x_728 : bool = u_xlatb47;
  if (x_728) {
    let x_731 : vec3<f32> = vs_INTERP7;
    let x_735 : vec4<f32> = x_724.x_MainLightWorldToLight[1i];
    let x_737 : vec2<f32> = (vec2<f32>(x_731.y, x_731.y) * vec2<f32>(x_735.x, x_735.y));
    let x_738 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
    let x_741 : vec4<f32> = x_724.x_MainLightWorldToLight[0i];
    let x_743 : vec3<f32> = vs_INTERP7;
    let x_746 : vec4<f32> = u_xlat6;
    let x_748 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_743.x, x_743.x)) + vec2<f32>(x_746.x, x_746.y));
    let x_749 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_749.w);
    let x_752 : vec4<f32> = x_724.x_MainLightWorldToLight[2i];
    let x_754 : vec3<f32> = vs_INTERP7;
    let x_757 : vec4<f32> = u_xlat6;
    let x_759 : vec2<f32> = ((vec2<f32>(x_752.x, x_752.y) * vec2<f32>(x_754.z, x_754.z)) + vec2<f32>(x_757.x, x_757.y));
    let x_760 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
    let x_762 : vec4<f32> = u_xlat6;
    let x_765 : vec4<f32> = x_724.x_MainLightWorldToLight[3i];
    let x_767 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) + vec2<f32>(x_765.x, x_765.y));
    let x_768 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
    let x_770 : vec4<f32> = u_xlat6;
    let x_774 : vec2<f32> = ((vec2<f32>(x_770.x, x_770.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_775 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
    let x_782 : vec4<f32> = u_xlat6;
    let x_785 : f32 = x_29.x_GlobalMipBias.x;
    let x_786 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_782.x, x_782.y), x_785);
    u_xlat6 = x_786;
    let x_789 : f32 = x_724.x_MainLightCookieTextureFormat;
    let x_791 : f32 = x_724.x_MainLightCookieTextureFormat;
    let x_793 : f32 = x_724.x_MainLightCookieTextureFormat;
    let x_795 : f32 = x_724.x_MainLightCookieTextureFormat;
    let x_796 : vec4<f32> = vec4<f32>(x_789, x_791, x_793, x_795);
    let x_804 : vec4<bool> = (vec4<f32>(x_796.x, x_796.y, x_796.z, x_796.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_804.x, x_804.y);
    let x_807 : bool = u_xlatb7.y;
    if (x_807) {
      let x_812 : f32 = u_xlat6.w;
      x_808 = x_812;
    } else {
      let x_815 : f32 = u_xlat6.x;
      x_808 = x_815;
    }
    let x_816 : f32 = x_808;
    u_xlat47 = x_816;
    let x_818 : bool = u_xlatb7.x;
    if (x_818) {
      let x_822 : vec4<f32> = u_xlat6;
      x_819 = vec3<f32>(x_822.x, x_822.y, x_822.z);
    } else {
      let x_825 : f32 = u_xlat47;
      x_819 = vec3<f32>(x_825, x_825, x_825);
    }
    let x_827 : vec3<f32> = x_819;
    let x_828 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_834 : vec4<f32> = u_xlat6;
  let x_837 : vec4<f32> = x_29.x_MainLightColor;
  let x_839 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec3<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(-(x_842), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : f32 = u_xlat47;
  let x_848 : f32 = u_xlat47;
  u_xlat47 = (x_847 + x_848);
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : f32 = u_xlat47;
  let x_857 : vec3<f32> = u_xlat4;
  let x_859 : vec3<f32> = ((vec3<f32>(x_851.x, x_851.y, x_851.z) * -(vec3<f32>(x_853, x_853, x_853))) + -(x_857));
  let x_860 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat1;
  let x_864 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_862.x, x_862.y, x_862.z), x_864);
  let x_866 : f32 = u_xlat47;
  u_xlat47 = clamp(x_866, 0.0f, 1.0f);
  let x_868 : f32 = u_xlat47;
  u_xlat47 = (-(x_868) + 1.0f);
  let x_871 : f32 = u_xlat47;
  let x_872 : f32 = u_xlat47;
  u_xlat47 = (x_871 * x_872);
  let x_874 : f32 = u_xlat47;
  let x_875 : f32 = u_xlat47;
  u_xlat47 = (x_874 * x_875);
  let x_878 : f32 = u_xlat42;
  u_xlat48 = ((-(x_878) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_884 : f32 = u_xlat42;
  let x_885 : f32 = u_xlat48;
  u_xlat42 = (x_884 * x_885);
  let x_887 : f32 = u_xlat42;
  u_xlat42 = (x_887 * 6.0f);
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : f32 = u_xlat42;
  let x_900 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_897.x, x_897.y, x_897.z), x_899);
  u_xlat7 = x_900;
  let x_902 : f32 = u_xlat7.w;
  u_xlat42 = (x_902 + -1.0f);
  let x_905 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_906 : f32 = u_xlat42;
  u_xlat42 = ((x_905 * x_906) + 1.0f);
  let x_909 : f32 = u_xlat42;
  u_xlat42 = max(x_909, 0.0f);
  let x_911 : f32 = u_xlat42;
  u_xlat42 = log2(x_911);
  let x_913 : f32 = u_xlat42;
  let x_915 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_913 * x_915);
  let x_917 : f32 = u_xlat42;
  u_xlat42 = exp2(x_917);
  let x_919 : f32 = u_xlat42;
  let x_921 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_919 * x_921);
  let x_923 : vec4<f32> = u_xlat7;
  let x_925 : f32 = u_xlat42;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * vec3<f32>(x_925, x_925, x_925));
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_933 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_931.x, x_931.x) * vec2<f32>(x_933.x, x_933.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_939 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_939);
  let x_942 : vec4<f32> = u_xlat0;
  let x_945 : f32 = u_xlat43;
  u_xlat22 = (-(vec3<f32>(x_942.x, x_942.y, x_942.z)) + vec3<f32>(x_945, x_945, x_945));
  let x_948 : f32 = u_xlat47;
  let x_950 : vec3<f32> = u_xlat22;
  let x_952 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_948, x_948, x_948) * x_950) + vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : f32 = u_xlat42;
  let x_957 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_955, x_955, x_955) * x_957);
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec3<f32> = u_xlat22;
  let x_962 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) * x_961);
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat3;
  let x_967 : vec3<f32> = u_xlat5;
  let x_969 : vec4<f32> = u_xlat7;
  let x_971 : vec3<f32> = ((vec3<f32>(x_965.x, x_965.y, x_965.z) * x_967) + vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : f32 = u_xlat45;
  let x_976 : f32 = x_349.unity_LightData.z;
  u_xlat42 = (x_974 * x_976);
  let x_978 : vec4<f32> = u_xlat1;
  let x_981 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_978.x, x_978.y, x_978.z), vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat43;
  u_xlat43 = clamp(x_984, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat42;
  let x_987 : f32 = u_xlat43;
  u_xlat42 = (x_986 * x_987);
  let x_989 : f32 = u_xlat42;
  let x_991 : vec4<f32> = u_xlat6;
  let x_993 : vec3<f32> = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec3<f32> = u_xlat4;
  let x_998 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1000 : vec3<f32> = (x_996 + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat7;
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : f32 = u_xlat42;
  u_xlat42 = max(x_1008, 1.17549435e-38f);
  let x_1011 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1011);
  let x_1013 : f32 = u_xlat42;
  let x_1015 : vec4<f32> = u_xlat7;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1025, 0.0f, 1.0f);
  let x_1028 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1033, 0.0f, 1.0f);
  let x_1035 : f32 = u_xlat42;
  let x_1036 : f32 = u_xlat42;
  u_xlat42 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat42;
  let x_1040 : f32 = u_xlat8.x;
  u_xlat42 = ((x_1038 * x_1040) + 1.00001001358032226562f);
  let x_1044 : f32 = u_xlat43;
  let x_1045 : f32 = u_xlat43;
  u_xlat43 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat42;
  let x_1048 : f32 = u_xlat42;
  u_xlat42 = (x_1047 * x_1048);
  let x_1050 : f32 = u_xlat43;
  u_xlat43 = max(x_1050, 0.10000000149011611938f);
  let x_1053 : f32 = u_xlat42;
  let x_1054 : f32 = u_xlat43;
  u_xlat42 = (x_1053 * x_1054);
  let x_1056 : f32 = u_xlat44;
  let x_1057 : f32 = u_xlat42;
  u_xlat42 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat16;
  let x_1060 : f32 = u_xlat42;
  u_xlat42 = (x_1059 / x_1060);
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1064 : f32 = u_xlat42;
  let x_1067 : vec3<f32> = u_xlat5;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.y, x_1062.z) * vec3<f32>(x_1064, x_1064, x_1064)) + x_1067);
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat6;
  let x_1073 : vec4<f32> = u_xlat7;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1081 : f32 = x_349.unity_LightData.y;
  u_xlat42 = min(x_1079, x_1081);
  let x_1085 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1085));
  let x_1088 : f32 = u_xlat46;
  let x_1091 : f32 = x_660.x_AdditionalShadowFadeParams.x;
  let x_1094 : f32 = x_660.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1088 * x_1091) + x_1094);
  let x_1096 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1096, 0.0f, 1.0f);
  let x_1099 : f32 = x_724.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1101 : f32 = x_724.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1103 : f32 = x_724.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1105 : f32 = x_724.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1106 : vec4<f32> = vec4<f32>(x_1099, x_1101, x_1103, x_1105);
  let x_1112 : vec4<bool> = (vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1106.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1112.x, x_1112.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1124 : u32 = u_xlatu_loop_1;
    let x_1125 : u32 = u_xlatu42;
    if ((x_1124 < x_1125)) {
    } else {
      break;
    }
    let x_1128 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1128 >> 2u);
    let x_1132 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1132 & 3u));
    let x_1135 : u32 = u_xlatu45;
    let x_1138 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1135)];
    let x_1148 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1153 : vec4<u32> = indexable[x_1148];
    u_xlat45 = dot(x_1138, bitcast<vec4<f32>>(x_1153));
    let x_1157 : f32 = u_xlat45;
    u_xlati45 = i32(x_1157);
    let x_1160 : vec3<f32> = vs_INTERP7;
    let x_1171 : i32 = u_xlati45;
    let x_1173 : vec4<f32> = x_1170.x_AdditionalLightsPosition[x_1171];
    let x_1176 : i32 = u_xlati45;
    let x_1178 : vec4<f32> = x_1170.x_AdditionalLightsPosition[x_1176];
    u_xlat9 = ((-(x_1160) * vec3<f32>(x_1173.w, x_1173.w, x_1173.w)) + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
    let x_1181 : vec3<f32> = u_xlat9;
    let x_1182 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1181, x_1182);
    let x_1184 : f32 = u_xlat46;
    u_xlat46 = max(x_1184, 0.00006103515625f);
    let x_1187 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1187);
    let x_1190 : f32 = u_xlat47;
    let x_1192 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1190, x_1190, x_1190) * x_1192);
    let x_1194 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1194);
    let x_1196 : f32 = u_xlat46;
    let x_1197 : i32 = u_xlati45;
    let x_1199 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1197].x;
    u_xlat46 = (x_1196 * x_1199);
    let x_1201 : f32 = u_xlat46;
    let x_1203 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1201) * x_1203) + 1.0f);
    let x_1206 : f32 = u_xlat46;
    u_xlat46 = max(x_1206, 0.0f);
    let x_1208 : f32 = u_xlat46;
    let x_1209 : f32 = u_xlat46;
    u_xlat46 = (x_1208 * x_1209);
    let x_1211 : f32 = u_xlat46;
    let x_1212 : f32 = u_xlat48;
    u_xlat46 = (x_1211 * x_1212);
    let x_1214 : i32 = u_xlati45;
    let x_1216 : vec4<f32> = x_1170.x_AdditionalLightsSpotDir[x_1214];
    let x_1218 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), x_1218);
    let x_1220 : f32 = u_xlat48;
    let x_1221 : i32 = u_xlati45;
    let x_1223 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1221].z;
    let x_1225 : i32 = u_xlati45;
    let x_1227 : f32 = x_1170.x_AdditionalLightsAttenuation[x_1225].w;
    u_xlat48 = ((x_1220 * x_1223) + x_1227);
    let x_1229 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1229, 0.0f, 1.0f);
    let x_1231 : f32 = u_xlat48;
    let x_1232 : f32 = u_xlat48;
    u_xlat48 = (x_1231 * x_1232);
    let x_1234 : f32 = u_xlat46;
    let x_1235 : f32 = u_xlat48;
    u_xlat46 = (x_1234 * x_1235);
    let x_1239 : i32 = u_xlati45;
    let x_1241 : f32 = x_660.x_AdditionalShadowParams[x_1239].w;
    u_xlati48 = i32(x_1241);
    let x_1244 : i32 = u_xlati48;
    u_xlatb35 = (x_1244 >= 0i);
    let x_1246 : bool = u_xlatb35;
    if (x_1246) {
      let x_1250 : i32 = u_xlati45;
      let x_1252 : f32 = x_660.x_AdditionalShadowParams[x_1250].z;
      u_xlatb35 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1252, x_1252, x_1252, x_1252))));
      let x_1256 : bool = u_xlatb35;
      if (x_1256) {
        let x_1261 : vec3<f32> = u_xlat10;
        let x_1264 : vec3<f32> = u_xlat10;
        let x_1267 : vec4<bool> = (abs(vec4<f32>(x_1261.z, x_1261.z, x_1261.y, x_1261.z)) >= abs(vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.x)));
        let x_1269 : vec3<bool> = vec3<bool>(x_1267.x, x_1267.y, x_1267.z);
        let x_1270 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1273 : bool = u_xlatb11.y;
        let x_1275 : bool = u_xlatb11.x;
        u_xlatb35 = (x_1273 & x_1275);
        let x_1277 : vec3<f32> = u_xlat10;
        let x_1280 : vec4<bool> = (-(vec4<f32>(x_1277.z, x_1277.y, x_1277.z, x_1277.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1281 : vec3<bool> = vec3<bool>(x_1280.x, x_1280.y, x_1280.w);
        let x_1282 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1281.x, x_1281.y, x_1282.z, x_1281.z);
        let x_1286 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1286);
        let x_1291 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1291);
        let x_1297 : bool = u_xlatb11.w;
        u_xlat49 = select(0.0f, 1.0f, x_1297);
        let x_1300 : bool = u_xlatb11.z;
        if (x_1300) {
          let x_1305 : f32 = u_xlat11.y;
          x_1301 = x_1305;
        } else {
          let x_1307 : f32 = u_xlat49;
          x_1301 = x_1307;
        }
        let x_1308 : f32 = x_1301;
        u_xlat49 = x_1308;
        let x_1310 : bool = u_xlatb35;
        if (x_1310) {
          let x_1315 : f32 = u_xlat11.x;
          x_1311 = x_1315;
        } else {
          let x_1317 : f32 = u_xlat49;
          x_1311 = x_1317;
        }
        let x_1318 : f32 = x_1311;
        u_xlat35.x = x_1318;
        let x_1320 : i32 = u_xlati45;
        let x_1322 : f32 = x_660.x_AdditionalShadowParams[x_1320].w;
        u_xlat49 = trunc(x_1322);
        let x_1325 : f32 = u_xlat35.x;
        let x_1326 : f32 = u_xlat49;
        u_xlat35.x = (x_1325 + x_1326);
        let x_1330 : f32 = u_xlat35.x;
        u_xlati48 = i32(x_1330);
      }
      let x_1332 : i32 = u_xlati48;
      u_xlati48 = (x_1332 << bitcast<u32>(2i));
      let x_1334 : vec3<f32> = vs_INTERP7;
      let x_1337 : i32 = u_xlati48;
      let x_1340 : i32 = u_xlati48;
      let x_1344 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1337 + 1i) / 4i)][((x_1340 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1334.y, x_1334.y, x_1334.y, x_1334.y) * x_1344);
      let x_1346 : i32 = u_xlati48;
      let x_1348 : i32 = u_xlati48;
      let x_1351 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[(x_1346 / 4i)][(x_1348 % 4i)];
      let x_1352 : vec3<f32> = vs_INTERP7;
      let x_1355 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1351 * vec4<f32>(x_1352.x, x_1352.x, x_1352.x, x_1352.x)) + x_1355);
      let x_1357 : i32 = u_xlati48;
      let x_1360 : i32 = u_xlati48;
      let x_1364 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1357 + 2i) / 4i)][((x_1360 + 2i) % 4i)];
      let x_1365 : vec3<f32> = vs_INTERP7;
      let x_1368 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1364 * vec4<f32>(x_1365.z, x_1365.z, x_1365.z, x_1365.z)) + x_1368);
      let x_1370 : vec4<f32> = u_xlat11;
      let x_1371 : i32 = u_xlati48;
      let x_1374 : i32 = u_xlati48;
      let x_1378 : vec4<f32> = x_660.x_AdditionalLightsWorldToShadow[((x_1371 + 3i) / 4i)][((x_1374 + 3i) % 4i)];
      u_xlat11 = (x_1370 + x_1378);
      let x_1380 : vec4<f32> = u_xlat11;
      let x_1382 : vec4<f32> = u_xlat11;
      let x_1384 : vec3<f32> = (vec3<f32>(x_1380.x, x_1380.y, x_1380.z) / vec3<f32>(x_1382.w, x_1382.w, x_1382.w));
      let x_1385 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
      let x_1388 : vec4<f32> = u_xlat11;
      let x_1389 : vec2<f32> = vec2<f32>(x_1388.x, x_1388.y);
      let x_1391 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
      let x_1399 : vec3<f32> = txVec1;
      let x_1401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
      u_xlat48 = x_1401;
      let x_1402 : i32 = u_xlati45;
      let x_1404 : f32 = x_660.x_AdditionalShadowParams[x_1402].x;
      u_xlat35.x = (1.0f + -(x_1404));
      let x_1408 : f32 = u_xlat48;
      let x_1409 : i32 = u_xlati45;
      let x_1411 : f32 = x_660.x_AdditionalShadowParams[x_1409].x;
      let x_1414 : f32 = u_xlat35.x;
      u_xlat48 = ((x_1408 * x_1411) + x_1414);
      let x_1417 : f32 = u_xlat11.z;
      u_xlatb35 = (0.0f >= x_1417);
      let x_1421 : f32 = u_xlat11.z;
      u_xlatb49 = (x_1421 >= 1.0f);
      let x_1423 : bool = u_xlatb49;
      let x_1424 : bool = u_xlatb35;
      u_xlatb35 = (x_1423 | x_1424);
      let x_1426 : bool = u_xlatb35;
      let x_1427 : f32 = u_xlat48;
      u_xlat48 = select(x_1427, 1.0f, x_1426);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1430 : f32 = u_xlat48;
    u_xlat35.x = (-(x_1430) + 1.0f);
    let x_1434 : f32 = u_xlat43;
    let x_1436 : f32 = u_xlat35.x;
    let x_1438 : f32 = u_xlat48;
    u_xlat48 = ((x_1434 * x_1436) + x_1438);
    let x_1441 : i32 = u_xlati45;
    u_xlati35 = (1i << bitcast<u32>((x_1441 & 31i)));
    let x_1445 : i32 = u_xlati35;
    let x_1448 : f32 = x_724.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1445) & bitcast<u32>(x_1448)));
    let x_1452 : i32 = u_xlati35;
    if ((x_1452 != 0i)) {
      let x_1456 : i32 = u_xlati45;
      let x_1458 : f32 = x_724.x_AdditionalLightsLightTypes[x_1456].el;
      u_xlati35 = i32(x_1458);
      let x_1461 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1461 != 0i));
      let x_1465 : i32 = u_xlati45;
      u_xlati51 = (x_1465 << bitcast<u32>(2i));
      let x_1467 : i32 = u_xlati49;
      if ((x_1467 != 0i)) {
        let x_1471 : vec3<f32> = vs_INTERP7;
        let x_1473 : i32 = u_xlati51;
        let x_1476 : i32 = u_xlati51;
        let x_1480 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1473 + 1i) / 4i)][((x_1476 + 1i) % 4i)];
        let x_1482 : vec3<f32> = (vec3<f32>(x_1471.y, x_1471.y, x_1471.y) * vec3<f32>(x_1480.x, x_1480.y, x_1480.w));
        let x_1483 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
        let x_1485 : i32 = u_xlati51;
        let x_1487 : i32 = u_xlati51;
        let x_1490 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_1485 / 4i)][(x_1487 % 4i)];
        let x_1492 : vec3<f32> = vs_INTERP7;
        let x_1495 : vec4<f32> = u_xlat11;
        let x_1497 : vec3<f32> = ((vec3<f32>(x_1490.x, x_1490.y, x_1490.w) * vec3<f32>(x_1492.x, x_1492.x, x_1492.x)) + vec3<f32>(x_1495.x, x_1495.y, x_1495.z));
        let x_1498 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1498.w);
        let x_1500 : i32 = u_xlati51;
        let x_1503 : i32 = u_xlati51;
        let x_1507 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1500 + 2i) / 4i)][((x_1503 + 2i) % 4i)];
        let x_1509 : vec3<f32> = vs_INTERP7;
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1514 : vec3<f32> = ((vec3<f32>(x_1507.x, x_1507.y, x_1507.w) * vec3<f32>(x_1509.z, x_1509.z, x_1509.z)) + vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
        let x_1517 : vec4<f32> = u_xlat11;
        let x_1519 : i32 = u_xlati51;
        let x_1522 : i32 = u_xlati51;
        let x_1526 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1519 + 3i) / 4i)][((x_1522 + 3i) % 4i)];
        let x_1528 : vec3<f32> = (vec3<f32>(x_1517.x, x_1517.y, x_1517.z) + vec3<f32>(x_1526.x, x_1526.y, x_1526.w));
        let x_1529 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
        let x_1531 : vec4<f32> = u_xlat11;
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1535 : vec2<f32> = (vec2<f32>(x_1531.x, x_1531.y) / vec2<f32>(x_1533.z, x_1533.z));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1535.x, x_1535.y, x_1536.z, x_1536.w);
        let x_1538 : vec4<f32> = u_xlat11;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1541.x, x_1541.y, x_1542.z, x_1542.w);
        let x_1544 : vec4<f32> = u_xlat11;
        let x_1548 : vec2<f32> = clamp(vec2<f32>(x_1544.x, x_1544.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1551 : i32 = u_xlati45;
        let x_1553 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1551];
        let x_1555 : vec4<f32> = u_xlat11;
        let x_1558 : i32 = u_xlati45;
        let x_1560 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1558];
        let x_1562 : vec2<f32> = ((vec2<f32>(x_1553.x, x_1553.y) * vec2<f32>(x_1555.x, x_1555.y)) + vec2<f32>(x_1560.z, x_1560.w));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
      } else {
        let x_1566 : i32 = u_xlati35;
        u_xlatb35 = (x_1566 == 1i);
        let x_1568 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1568);
        let x_1570 : i32 = u_xlati35;
        if ((x_1570 != 0i)) {
          let x_1574 : vec3<f32> = vs_INTERP7;
          let x_1576 : i32 = u_xlati51;
          let x_1579 : i32 = u_xlati51;
          let x_1583 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1576 + 1i) / 4i)][((x_1579 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1574.y, x_1574.y) * vec2<f32>(x_1583.x, x_1583.y));
          let x_1586 : i32 = u_xlati51;
          let x_1588 : i32 = u_xlati51;
          let x_1591 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_1586 / 4i)][(x_1588 % 4i)];
          let x_1593 : vec3<f32> = vs_INTERP7;
          let x_1596 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1593.x, x_1593.x)) + x_1596);
          let x_1598 : i32 = u_xlati51;
          let x_1601 : i32 = u_xlati51;
          let x_1605 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1598 + 2i) / 4i)][((x_1601 + 2i) % 4i)];
          let x_1607 : vec3<f32> = vs_INTERP7;
          let x_1610 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1605.x, x_1605.y) * vec2<f32>(x_1607.z, x_1607.z)) + x_1610);
          let x_1612 : vec2<f32> = u_xlat35;
          let x_1613 : i32 = u_xlati51;
          let x_1616 : i32 = u_xlati51;
          let x_1620 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1613 + 3i) / 4i)][((x_1616 + 3i) % 4i)];
          u_xlat35 = (x_1612 + vec2<f32>(x_1620.x, x_1620.y));
          let x_1623 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1623 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1626 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1626);
          let x_1628 : i32 = u_xlati45;
          let x_1630 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1628];
          let x_1632 : vec2<f32> = u_xlat35;
          let x_1634 : i32 = u_xlati45;
          let x_1636 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1634];
          let x_1638 : vec2<f32> = ((vec2<f32>(x_1630.x, x_1630.y) * x_1632) + vec2<f32>(x_1636.z, x_1636.w));
          let x_1639 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
        } else {
          let x_1643 : vec3<f32> = vs_INTERP7;
          let x_1645 : i32 = u_xlati51;
          let x_1648 : i32 = u_xlati51;
          let x_1652 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1645 + 1i) / 4i)][((x_1648 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1643.y, x_1643.y, x_1643.y, x_1643.y) * x_1652);
          let x_1654 : i32 = u_xlati51;
          let x_1656 : i32 = u_xlati51;
          let x_1659 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[(x_1654 / 4i)][(x_1656 % 4i)];
          let x_1660 : vec3<f32> = vs_INTERP7;
          let x_1663 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1659 * vec4<f32>(x_1660.x, x_1660.x, x_1660.x, x_1660.x)) + x_1663);
          let x_1665 : i32 = u_xlati51;
          let x_1668 : i32 = u_xlati51;
          let x_1672 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1665 + 2i) / 4i)][((x_1668 + 2i) % 4i)];
          let x_1673 : vec3<f32> = vs_INTERP7;
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1672 * vec4<f32>(x_1673.z, x_1673.z, x_1673.z, x_1673.z)) + x_1676);
          let x_1678 : vec4<f32> = u_xlat12;
          let x_1679 : i32 = u_xlati51;
          let x_1682 : i32 = u_xlati51;
          let x_1686 : vec4<f32> = x_724.x_AdditionalLightsWorldToLights[((x_1679 + 3i) / 4i)][((x_1682 + 3i) % 4i)];
          u_xlat12 = (x_1678 + x_1686);
          let x_1688 : vec4<f32> = u_xlat12;
          let x_1690 : vec4<f32> = u_xlat12;
          let x_1692 : vec3<f32> = (vec3<f32>(x_1688.x, x_1688.y, x_1688.z) / vec3<f32>(x_1690.w, x_1690.w, x_1690.w));
          let x_1693 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
          let x_1695 : vec4<f32> = u_xlat12;
          let x_1697 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1695.x, x_1695.y, x_1695.z), vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
          let x_1702 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1702);
          let x_1705 : vec2<f32> = u_xlat35;
          let x_1707 : vec4<f32> = u_xlat12;
          let x_1709 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.x, x_1705.x) * vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
          let x_1710 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
          let x_1712 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1712.x, x_1712.y, x_1712.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1718 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1718, 0.00000099999999747524f);
          let x_1723 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1723);
          let x_1727 : vec2<f32> = u_xlat35;
          let x_1729 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1727.x, x_1727.x, x_1727.x) * vec3<f32>(x_1729.z, x_1729.x, x_1729.y));
          let x_1733 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1733);
          let x_1737 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1737, 0.0f, 1.0f);
          let x_1741 : vec3<f32> = u_xlat13;
          let x_1743 : vec4<bool> = (vec4<f32>(x_1741.y, x_1741.z, x_1741.y, x_1741.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1743.x, x_1743.y);
          let x_1747 : bool = u_xlatb39.x;
          if (x_1747) {
            let x_1752 : f32 = u_xlat13.x;
            x_1748 = x_1752;
          } else {
            let x_1755 : f32 = u_xlat13.x;
            x_1748 = -(x_1755);
          }
          let x_1757 : f32 = x_1748;
          u_xlat39.x = x_1757;
          let x_1760 : bool = u_xlatb39.y;
          if (x_1760) {
            let x_1765 : f32 = u_xlat13.x;
            x_1761 = x_1765;
          } else {
            let x_1768 : f32 = u_xlat13.x;
            x_1761 = -(x_1768);
          }
          let x_1770 : f32 = x_1761;
          u_xlat39.y = x_1770;
          let x_1772 : vec4<f32> = u_xlat12;
          let x_1774 : vec2<f32> = u_xlat35;
          let x_1777 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1774.x, x_1774.x)) + x_1777);
          let x_1779 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1779 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1782 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1782, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1786 : i32 = u_xlati45;
          let x_1788 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1786];
          let x_1790 : vec2<f32> = u_xlat35;
          let x_1792 : i32 = u_xlati45;
          let x_1794 : vec4<f32> = x_724.x_AdditionalLightsCookieAtlasUVRects[x_1792];
          let x_1796 : vec2<f32> = ((vec2<f32>(x_1788.x, x_1788.y) * x_1790) + vec2<f32>(x_1794.z, x_1794.w));
          let x_1797 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1796.x, x_1796.y, x_1797.z, x_1797.w);
        }
      }
      let x_1804 : vec4<f32> = u_xlat11;
      let x_1806 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1804.x, x_1804.y), 0.0f);
      u_xlat11 = x_1806;
      let x_1808 : bool = u_xlatb7.y;
      if (x_1808) {
        let x_1813 : f32 = u_xlat11.w;
        x_1809 = x_1813;
      } else {
        let x_1816 : f32 = u_xlat11.x;
        x_1809 = x_1816;
      }
      let x_1817 : f32 = x_1809;
      u_xlat35.x = x_1817;
      let x_1820 : bool = u_xlatb7.x;
      if (x_1820) {
        let x_1824 : vec4<f32> = u_xlat11;
        x_1821 = vec3<f32>(x_1824.x, x_1824.y, x_1824.z);
      } else {
        let x_1827 : vec2<f32> = u_xlat35;
        x_1821 = vec3<f32>(x_1827.x, x_1827.x, x_1827.x);
      }
      let x_1829 : vec3<f32> = x_1821;
      let x_1830 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1836 : vec4<f32> = u_xlat11;
    let x_1838 : i32 = u_xlati45;
    let x_1840 : vec4<f32> = x_1170.x_AdditionalLightsColor[x_1838];
    let x_1842 : vec3<f32> = (vec3<f32>(x_1836.x, x_1836.y, x_1836.z) * vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
    let x_1843 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1843.w);
    let x_1845 : f32 = u_xlat46;
    let x_1846 : f32 = u_xlat48;
    u_xlat45 = (x_1845 * x_1846);
    let x_1848 : vec4<f32> = u_xlat1;
    let x_1850 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1848.x, x_1848.y, x_1848.z), x_1850);
    let x_1852 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1852, 0.0f, 1.0f);
    let x_1854 : f32 = u_xlat45;
    let x_1855 : f32 = u_xlat46;
    u_xlat45 = (x_1854 * x_1855);
    let x_1857 : f32 = u_xlat45;
    let x_1859 : vec4<f32> = u_xlat11;
    let x_1861 : vec3<f32> = (vec3<f32>(x_1857, x_1857, x_1857) * vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
    let x_1862 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
    let x_1864 : vec3<f32> = u_xlat9;
    let x_1865 : f32 = u_xlat47;
    let x_1868 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1864 * vec3<f32>(x_1865, x_1865, x_1865)) + x_1868);
    let x_1870 : vec3<f32> = u_xlat9;
    let x_1871 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1870, x_1871);
    let x_1873 : f32 = u_xlat45;
    u_xlat45 = max(x_1873, 1.17549435e-38f);
    let x_1875 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1875);
    let x_1877 : f32 = u_xlat45;
    let x_1879 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1877, x_1877, x_1877) * x_1879);
    let x_1881 : vec4<f32> = u_xlat1;
    let x_1883 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
    let x_1885 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1885, 0.0f, 1.0f);
    let x_1887 : vec3<f32> = u_xlat10;
    let x_1888 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1887, x_1888);
    let x_1890 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1890, 0.0f, 1.0f);
    let x_1892 : f32 = u_xlat45;
    let x_1893 : f32 = u_xlat45;
    u_xlat45 = (x_1892 * x_1893);
    let x_1895 : f32 = u_xlat45;
    let x_1897 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1895 * x_1897) + 1.00001001358032226562f);
    let x_1900 : f32 = u_xlat46;
    let x_1901 : f32 = u_xlat46;
    u_xlat46 = (x_1900 * x_1901);
    let x_1903 : f32 = u_xlat45;
    let x_1904 : f32 = u_xlat45;
    u_xlat45 = (x_1903 * x_1904);
    let x_1906 : f32 = u_xlat46;
    u_xlat46 = max(x_1906, 0.10000000149011611938f);
    let x_1908 : f32 = u_xlat45;
    let x_1909 : f32 = u_xlat46;
    u_xlat45 = (x_1908 * x_1909);
    let x_1911 : f32 = u_xlat44;
    let x_1912 : f32 = u_xlat45;
    u_xlat45 = (x_1911 * x_1912);
    let x_1914 : f32 = u_xlat16;
    let x_1915 : f32 = u_xlat45;
    u_xlat45 = (x_1914 / x_1915);
    let x_1917 : vec4<f32> = u_xlat0;
    let x_1919 : f32 = u_xlat45;
    let x_1922 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1919, x_1919, x_1919)) + x_1922);
    let x_1924 : vec3<f32> = u_xlat9;
    let x_1925 : vec4<f32> = u_xlat11;
    let x_1928 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1924 * vec3<f32>(x_1925.x, x_1925.y, x_1925.z)) + x_1928);

    continuing {
      let x_1930 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1930 + bitcast<u32>(1i));
    }
  }
  let x_1932 : vec4<f32> = u_xlat3;
  let x_1934 : f32 = u_xlat30;
  let x_1937 : vec4<f32> = u_xlat6;
  let x_1939 : vec3<f32> = ((vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * vec3<f32>(x_1934, x_1934, x_1934)) + vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1944 : vec3<f32> = u_xlat22;
  let x_1945 : vec4<f32> = u_xlat0;
  let x_1947 : vec3<f32> = (x_1944 + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
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


