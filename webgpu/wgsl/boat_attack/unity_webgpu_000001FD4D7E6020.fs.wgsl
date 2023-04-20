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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(1) @binding(2) var<uniform> x_355 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1862 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1999 : f32;
  var x_2009 : f32;
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
  var x_3352 : f32;
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
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat22;
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
  u_xlat22 = dot(x_273, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_279 : f32 = u_xlat22;
  u_xlat22 = (-(x_279) + 4.0f);
  let x_284 : f32 = u_xlat22;
  u_xlatu22 = u32(x_284);
  let x_288 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_288) << bitcast<u32>(2i));
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : i32 = u_xlati22;
  let x_296 : i32 = u_xlati22;
  let x_300 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_293 + 1i) / 4i)][((x_296 + 1i) % 4i)];
  let x_302 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : i32 = u_xlati22;
  let x_307 : i32 = u_xlati22;
  let x_310 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_305 / 4i)][(x_307 % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.x, x_312.x, x_312.x)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati22;
  let x_323 : i32 = u_xlati22;
  let x_327 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_320 + 2i) / 4i)][((x_323 + 2i) % 4i)];
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : i32 = u_xlati22;
  let x_342 : i32 = u_xlati22;
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
  u_xlat22 = (x_398 * x_400);
  let x_403 : f32 = u_xlat2.x;
  let x_405 : f32 = u_xlat2.x;
  let x_407 : f32 = u_xlat22;
  u_xlat22 = ((x_403 * x_405) + -(x_407));
  let x_412 : vec4<f32> = x_355.unity_SHC;
  let x_414 : f32 = u_xlat22;
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
  u_xlatb22 = (0.0f < x_436);
  let x_438 : bool = u_xlatb22;
  if (x_438) {
    let x_442 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb22 = (x_442 == 1.0f);
    let x_444 : bool = u_xlatb22;
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
      u_xlat22 = dot(x_525, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_532 : f32 = x_159.x_MainLightShadowParams.y;
      u_xlatb66 = (x_532 == 2.0f);
      let x_534 : bool = u_xlatb66;
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
        u_xlat49 = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(x_558.z, x_558.w)) + -(vec2<f32>(x_561.x, x_561.y)));
        let x_565 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_565.x, x_565.x, x_565.y, x_565.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_570 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_570.x, x_570.x, x_570.z, x_570.z) * vec4<f32>(x_572.x, x_572.x, x_572.z, x_572.z));
        let x_575 : vec4<f32> = u_xlat7;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.y, x_575.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_580.y, x_579.y, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_585 : vec2<f32> = u_xlat49;
        let x_587 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.z) * vec2<f32>(0.5f, 0.5f)) + -(x_585));
        let x_588 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_591 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_591) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec2<f32> = u_xlat49;
        let x_598 : vec2<f32> = min(x_596, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = u_xlat51;
        let x_608 : vec2<f32> = ((-(vec2<f32>(x_601.x, x_601.y)) * vec2<f32>(x_604.x, x_604.y)) + x_607);
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_611, vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat49;
        let x_615 : vec2<f32> = u_xlat49;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_613) * x_615) + vec2<f32>(x_617.y, x_617.w));
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_625 + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat7;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat51;
        let x_636 : vec2<f32> = (x_635 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat8;
        let x_641 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec2<f32> = u_xlat49;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_649.y, x_649.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : f32 = u_xlat8.x;
        u_xlat9.z = x_653;
        let x_656 : f32 = u_xlat49.x;
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
        let x_674 : f32 = u_xlat49.y;
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
        u_xlat49 = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_751.z, x_751.w));
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
        u_xlat66 = (x_800 * x_802);
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
        u_xlat68 = x_833;
        let x_834 : f32 = u_xlat68;
        let x_836 : f32 = u_xlat12.y;
        u_xlat68 = (x_834 * x_836);
        let x_839 : f32 = u_xlat12.x;
        let x_841 : f32 = u_xlat1.x;
        let x_843 : f32 = u_xlat68;
        u_xlat1.x = ((x_839 * x_841) + x_843);
        let x_847 : vec2<f32> = u_xlat49;
        let x_849 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec6;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat68 = x_858;
        let x_860 : f32 = u_xlat12.z;
        let x_861 : f32 = u_xlat68;
        let x_864 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_860 * x_861) + x_864);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec7;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat68 = x_880;
        let x_882 : f32 = u_xlat12.w;
        let x_883 : f32 = u_xlat68;
        let x_886 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_882 * x_883) + x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec8;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat68 = x_902;
        let x_904 : f32 = u_xlat13.x;
        let x_905 : f32 = u_xlat68;
        let x_908 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_904 * x_905) + x_908);
        let x_912 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_922 : vec3<f32> = txVec9;
        let x_924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_922.xy, x_922.z);
        u_xlat68 = x_924;
        let x_926 : f32 = u_xlat13.y;
        let x_927 : f32 = u_xlat68;
        let x_930 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_926 * x_927) + x_930);
        let x_934 : vec4<f32> = u_xlat8;
        let x_935 : vec2<f32> = vec2<f32>(x_934.z, x_934.w);
        let x_937 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec10;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_944.xy, x_944.z);
        u_xlat68 = x_946;
        let x_948 : f32 = u_xlat13.z;
        let x_949 : f32 = u_xlat68;
        let x_952 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_948 * x_949) + x_952);
        let x_956 : vec4<f32> = u_xlat7;
        let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
        let x_959 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_966 : vec3<f32> = txVec11;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_966.xy, x_966.z);
        u_xlat68 = x_968;
        let x_970 : f32 = u_xlat13.w;
        let x_971 : f32 = u_xlat68;
        let x_974 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_970 * x_971) + x_974);
        let x_978 : vec4<f32> = u_xlat7;
        let x_979 : vec2<f32> = vec2<f32>(x_978.z, x_978.w);
        let x_981 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_979.x, x_979.y, x_981);
        let x_988 : vec3<f32> = txVec12;
        let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_988.xy, x_988.z);
        u_xlat68 = x_990;
        let x_991 : f32 = u_xlat66;
        let x_992 : f32 = u_xlat68;
        let x_995 : f32 = u_xlat1.x;
        u_xlat22 = ((x_991 * x_992) + x_995);
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
        u_xlat49 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.z, x_1015.w)) + -(vec2<f32>(x_1018.x, x_1018.y)));
        let x_1022 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1022.x, x_1022.x, x_1022.y, x_1022.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1025.x, x_1025.x, x_1025.z, x_1025.z) * vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1030.y, x_1030.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1035.x, x_1034.x, x_1035.z, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1040 : vec2<f32> = u_xlat49;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1040));
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1043.w);
        let x_1045 : vec2<f32> = u_xlat49;
        let x_1047 : vec2<f32> = (-(x_1045) + vec2<f32>(1.0f, 1.0f));
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1050, vec2<f32>(0.0f, 0.0f));
        let x_1052 : vec2<f32> = u_xlat51;
        let x_1054 : vec2<f32> = u_xlat51;
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = ((-(x_1052) * x_1054) + vec2<f32>(x_1056.x, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1061, vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec2<f32> = u_xlat51;
        let x_1067 : vec2<f32> = u_xlat51;
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1071 : vec2<f32> = ((-(x_1065) * x_1067) + vec2<f32>(x_1069.y, x_1069.w));
        let x_1072 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1071.x, x_1072.y, x_1071.y);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1074.x, x_1074.y) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec3<f32> = u_xlat28;
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
        let x_1105 : vec2<f32> = u_xlat49;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec2<f32> = u_xlat49;
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
        let x_1131 : vec2<f32> = u_xlat49;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.y, x_1131.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1137 : vec2<f32> = u_xlat49;
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
        u_xlat49 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
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
        u_xlat29 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat10.y;
        u_xlat7.w = x_1263;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.w));
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
        u_xlat52 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
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
        u_xlat66 = x_1344;
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
        let x_1368 : f32 = u_xlat66;
        let x_1371 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1367 * x_1368) + x_1371);
        let x_1374 : vec2<f32> = u_xlat49;
        let x_1376 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec15;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat1.x = x_1385;
        let x_1388 : f32 = u_xlat16.z;
        let x_1390 : f32 = u_xlat1.x;
        let x_1392 : f32 = u_xlat66;
        u_xlat66 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat14;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec16;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat1.x = x_1407;
        let x_1410 : f32 = u_xlat16.w;
        let x_1412 : f32 = u_xlat1.x;
        let x_1414 : f32 = u_xlat66;
        u_xlat66 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec17;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat1.x = x_1429;
        let x_1432 : f32 = u_xlat17.x;
        let x_1434 : f32 = u_xlat1.x;
        let x_1436 : f32 = u_xlat66;
        u_xlat66 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec18;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : f32 = u_xlat17.y;
        let x_1456 : f32 = u_xlat1.x;
        let x_1458 : f32 = u_xlat66;
        u_xlat66 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat13;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec19;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat1.x = x_1473;
        let x_1476 : f32 = u_xlat17.z;
        let x_1478 : f32 = u_xlat1.x;
        let x_1480 : f32 = u_xlat66;
        u_xlat66 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat14;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec20;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat1.x = x_1495;
        let x_1498 : f32 = u_xlat17.w;
        let x_1500 : f32 = u_xlat1.x;
        let x_1502 : f32 = u_xlat66;
        u_xlat66 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec21;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat1.x = x_1517;
        let x_1520 : f32 = u_xlat18.x;
        let x_1522 : f32 = u_xlat1.x;
        let x_1524 : f32 = u_xlat66;
        u_xlat66 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat15;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec22;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat1.x = x_1539;
        let x_1542 : f32 = u_xlat18.y;
        let x_1544 : f32 = u_xlat1.x;
        let x_1546 : f32 = u_xlat66;
        u_xlat66 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat29;
        let x_1551 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec23;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat1.x = x_1560;
        let x_1563 : f32 = u_xlat18.z;
        let x_1565 : f32 = u_xlat1.x;
        let x_1567 : f32 = u_xlat66;
        u_xlat66 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat57;
        let x_1572 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec24;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat1.x = x_1581;
        let x_1584 : f32 = u_xlat18.w;
        let x_1586 : f32 = u_xlat1.x;
        let x_1588 : f32 = u_xlat66;
        u_xlat66 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat10;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec25;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat1.x = x_1603;
        let x_1606 : f32 = u_xlat6.x;
        let x_1608 : f32 = u_xlat1.x;
        let x_1610 : f32 = u_xlat66;
        u_xlat66 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec26;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat1.x = x_1625;
        let x_1628 : f32 = u_xlat6.y;
        let x_1630 : f32 = u_xlat1.x;
        let x_1632 : f32 = u_xlat66;
        u_xlat66 = ((x_1628 * x_1630) + x_1632);
        let x_1635 : vec2<f32> = u_xlat52;
        let x_1637 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec27;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat1.x = x_1646;
        let x_1649 : f32 = u_xlat6.z;
        let x_1651 : f32 = u_xlat1.x;
        let x_1653 : f32 = u_xlat66;
        u_xlat66 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat5;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec28;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat1.x = x_1668;
        let x_1671 : f32 = u_xlat6.w;
        let x_1673 : f32 = u_xlat1.x;
        let x_1675 : f32 = u_xlat66;
        u_xlat22 = ((x_1671 * x_1673) + x_1675);
      }
    }
  } else {
    let x_1679 : vec4<f32> = u_xlat3;
    let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
    let x_1682 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
    let x_1689 : vec3<f32> = txVec29;
    let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
    u_xlat22 = x_1691;
  }
  let x_1693 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1693) + 1.0f);
  let x_1696 : f32 = u_xlat22;
  let x_1698 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1700 : f32 = u_xlat66;
  u_xlat22 = ((x_1696 * x_1698) + x_1700);
  let x_1703 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1703);
  let x_1707 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1707 >= 1.0f);
  let x_1709 : bool = u_xlatb66;
  let x_1710 : bool = u_xlatb1;
  u_xlatb66 = (x_1709 | x_1710);
  let x_1712 : bool = u_xlatb66;
  let x_1713 : f32 = u_xlat22;
  u_xlat22 = select(x_1713, 1.0f, x_1712);
  let x_1715 : vec3<f32> = vs_TEXCOORD1;
  let x_1718 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1720 : vec3<f32> = (x_1715 + -(x_1718));
  let x_1721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1723 : vec4<f32> = u_xlat3;
  let x_1725 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : f32 = u_xlat66;
  let x_1730 : f32 = x_159.x_MainLightShadowParams.z;
  let x_1733 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1728 * x_1730) + x_1733);
  let x_1737 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1737, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat22;
  u_xlat68 = (-(x_1740) + 1.0f);
  let x_1744 : f32 = u_xlat1.x;
  let x_1745 : f32 = u_xlat68;
  let x_1747 : f32 = u_xlat22;
  u_xlat22 = ((x_1744 * x_1745) + x_1747);
  let x_1749 : f32 = u_xlat22;
  let x_1751 : f32 = x_355.unity_LightData.z;
  u_xlat22 = (x_1749 * x_1751);
  let x_1753 : f32 = u_xlat22;
  let x_1756 : vec4<f32> = x_27.x_MainLightColor;
  let x_1758 : vec3<f32> = (vec3<f32>(x_1753, x_1753, x_1753) * vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat2;
  let x_1764 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_1761.x, x_1761.y, x_1761.z), vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1767, 0.0f, 1.0f);
  let x_1769 : f32 = u_xlat22;
  let x_1771 : vec4<f32> = u_xlat3;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat1;
  let x_1778 : vec4<f32> = u_xlat3;
  let x_1780 : vec3<f32> = (vec3<f32>(x_1776.y, x_1776.z, x_1776.w) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec4<f32> = u_xlat0;
  let x_1785 : vec4<f32> = u_xlat3;
  let x_1787 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.x, x_1783.x) * vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
  let x_1788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
  let x_1791 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1793 : f32 = x_355.unity_LightData.y;
  u_xlat22 = min(x_1791, x_1793);
  let x_1795 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1795));
  let x_1798 : f32 = u_xlat66;
  let x_1801 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1804 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1798 * x_1801) + x_1804);
  let x_1806 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1806, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1818 : u32 = u_xlatu_loop_1;
    let x_1819 : u32 = u_xlatu22;
    if ((x_1818 < x_1819)) {
    } else {
      break;
    }
    let x_1822 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1822 >> 2u);
    let x_1825 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1825 & 3u));
    let x_1828 : u32 = u_xlatu68;
    let x_1831 : vec4<f32> = x_355.unity_LightIndices[bitcast<i32>(x_1828)];
    let x_1841 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1846 : vec4<u32> = indexable[x_1841];
    u_xlat68 = dot(x_1831, bitcast<vec4<f32>>(x_1846));
    let x_1850 : f32 = u_xlat68;
    u_xlati68 = i32(x_1850);
    let x_1852 : vec3<f32> = vs_TEXCOORD1;
    let x_1863 : i32 = u_xlati68;
    let x_1865 : vec4<f32> = x_1862.x_AdditionalLightsPosition[x_1863];
    let x_1868 : i32 = u_xlati68;
    let x_1870 : vec4<f32> = x_1862.x_AdditionalLightsPosition[x_1868];
    let x_1872 : vec3<f32> = ((-(x_1852) * vec3<f32>(x_1865.w, x_1865.w, x_1865.w)) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
    let x_1873 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
    let x_1876 : vec4<f32> = u_xlat6;
    let x_1878 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1876.x, x_1876.y, x_1876.z), vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
    let x_1881 : f32 = u_xlat69;
    u_xlat69 = max(x_1881, 0.00006103515625f);
    let x_1885 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1885);
    let x_1887 : f32 = u_xlat70;
    let x_1889 : vec4<f32> = u_xlat6;
    let x_1891 : vec3<f32> = (vec3<f32>(x_1887, x_1887, x_1887) * vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
    let x_1892 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
    let x_1894 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1894);
    let x_1896 : f32 = u_xlat69;
    let x_1897 : i32 = u_xlati68;
    let x_1899 : f32 = x_1862.x_AdditionalLightsAttenuation[x_1897].x;
    u_xlat69 = (x_1896 * x_1899);
    let x_1901 : f32 = u_xlat69;
    let x_1903 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1901) * x_1903) + 1.0f);
    let x_1906 : f32 = u_xlat69;
    u_xlat69 = max(x_1906, 0.0f);
    let x_1908 : f32 = u_xlat69;
    let x_1909 : f32 = u_xlat69;
    u_xlat69 = (x_1908 * x_1909);
    let x_1911 : f32 = u_xlat69;
    let x_1912 : f32 = u_xlat70;
    u_xlat69 = (x_1911 * x_1912);
    let x_1914 : i32 = u_xlati68;
    let x_1916 : vec4<f32> = x_1862.x_AdditionalLightsSpotDir[x_1914];
    let x_1918 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1916.x, x_1916.y, x_1916.z), vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : f32 = u_xlat70;
    let x_1922 : i32 = u_xlati68;
    let x_1924 : f32 = x_1862.x_AdditionalLightsAttenuation[x_1922].z;
    let x_1926 : i32 = u_xlati68;
    let x_1928 : f32 = x_1862.x_AdditionalLightsAttenuation[x_1926].w;
    u_xlat70 = ((x_1921 * x_1924) + x_1928);
    let x_1930 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1930, 0.0f, 1.0f);
    let x_1932 : f32 = u_xlat70;
    let x_1933 : f32 = u_xlat70;
    u_xlat70 = (x_1932 * x_1933);
    let x_1935 : f32 = u_xlat69;
    let x_1936 : f32 = u_xlat70;
    u_xlat69 = (x_1935 * x_1936);
    let x_1940 : i32 = u_xlati68;
    let x_1942 : f32 = x_159.x_AdditionalShadowParams[x_1940].w;
    u_xlati70 = i32(x_1942);
    let x_1945 : i32 = u_xlati70;
    u_xlatb71 = (x_1945 >= 0i);
    let x_1947 : bool = u_xlatb71;
    if (x_1947) {
      let x_1951 : i32 = u_xlati68;
      let x_1953 : f32 = x_159.x_AdditionalShadowParams[x_1951].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1953, x_1953, x_1953, x_1953))));
      let x_1957 : bool = u_xlatb71;
      if (x_1957) {
        let x_1961 : vec4<f32> = u_xlat6;
        let x_1964 : vec4<f32> = u_xlat6;
        let x_1967 : vec4<bool> = (abs(vec4<f32>(x_1961.z, x_1961.z, x_1961.y, x_1961.z)) >= abs(vec4<f32>(x_1964.x, x_1964.y, x_1964.x, x_1964.x)));
        let x_1969 : vec3<bool> = vec3<bool>(x_1967.x, x_1967.y, x_1967.z);
        let x_1970 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
        let x_1973 : bool = u_xlatb7.y;
        let x_1975 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1973 & x_1975);
        let x_1977 : vec4<f32> = u_xlat6;
        let x_1980 : vec4<bool> = (-(vec4<f32>(x_1977.z, x_1977.y, x_1977.z, x_1977.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1981 : vec3<bool> = vec3<bool>(x_1980.x, x_1980.y, x_1980.w);
        let x_1982 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1981.x, x_1981.y, x_1982.z, x_1981.z);
        let x_1985 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1985);
        let x_1990 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1990);
        let x_1995 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1995);
        let x_1998 : bool = u_xlatb7.z;
        if (x_1998) {
          let x_2003 : f32 = u_xlat7.y;
          x_1999 = x_2003;
        } else {
          let x_2005 : f32 = u_xlat72;
          x_1999 = x_2005;
        }
        let x_2006 : f32 = x_1999;
        u_xlat72 = x_2006;
        let x_2008 : bool = u_xlatb71;
        if (x_2008) {
          let x_2013 : f32 = u_xlat7.x;
          x_2009 = x_2013;
        } else {
          let x_2015 : f32 = u_xlat72;
          x_2009 = x_2015;
        }
        let x_2016 : f32 = x_2009;
        u_xlat71 = x_2016;
        let x_2017 : i32 = u_xlati68;
        let x_2019 : f32 = x_159.x_AdditionalShadowParams[x_2017].w;
        u_xlat72 = trunc(x_2019);
        let x_2021 : f32 = u_xlat71;
        let x_2022 : f32 = u_xlat72;
        u_xlat71 = (x_2021 + x_2022);
        let x_2024 : f32 = u_xlat71;
        u_xlati70 = i32(x_2024);
      }
      let x_2026 : i32 = u_xlati70;
      u_xlati70 = (x_2026 << bitcast<u32>(2i));
      let x_2028 : vec3<f32> = vs_TEXCOORD1;
      let x_2031 : i32 = u_xlati70;
      let x_2034 : i32 = u_xlati70;
      let x_2038 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2031 + 1i) / 4i)][((x_2034 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2028.y, x_2028.y, x_2028.y, x_2028.y) * x_2038);
      let x_2040 : i32 = u_xlati70;
      let x_2042 : i32 = u_xlati70;
      let x_2045 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2040 / 4i)][(x_2042 % 4i)];
      let x_2046 : vec3<f32> = vs_TEXCOORD1;
      let x_2049 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2045 * vec4<f32>(x_2046.x, x_2046.x, x_2046.x, x_2046.x)) + x_2049);
      let x_2051 : i32 = u_xlati70;
      let x_2054 : i32 = u_xlati70;
      let x_2058 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2051 + 2i) / 4i)][((x_2054 + 2i) % 4i)];
      let x_2059 : vec3<f32> = vs_TEXCOORD1;
      let x_2062 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2058 * vec4<f32>(x_2059.z, x_2059.z, x_2059.z, x_2059.z)) + x_2062);
      let x_2064 : vec4<f32> = u_xlat7;
      let x_2065 : i32 = u_xlati70;
      let x_2068 : i32 = u_xlati70;
      let x_2072 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2065 + 3i) / 4i)][((x_2068 + 3i) % 4i)];
      u_xlat7 = (x_2064 + x_2072);
      let x_2074 : vec4<f32> = u_xlat7;
      let x_2076 : vec4<f32> = u_xlat7;
      let x_2078 : vec3<f32> = (vec3<f32>(x_2074.x, x_2074.y, x_2074.z) / vec3<f32>(x_2076.w, x_2076.w, x_2076.w));
      let x_2079 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
      let x_2082 : i32 = u_xlati68;
      let x_2084 : f32 = x_159.x_AdditionalShadowParams[x_2082].y;
      u_xlatb70 = (0.0f < x_2084);
      let x_2086 : bool = u_xlatb70;
      if (x_2086) {
        let x_2089 : i32 = u_xlati68;
        let x_2091 : f32 = x_159.x_AdditionalShadowParams[x_2089].y;
        u_xlatb70 = (1.0f == x_2091);
        let x_2093 : bool = u_xlatb70;
        if (x_2093) {
          let x_2096 : vec4<f32> = u_xlat7;
          let x_2100 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2096.x, x_2096.y, x_2096.x, x_2096.y) + x_2100);
          let x_2103 : vec4<f32> = u_xlat8;
          let x_2104 : vec2<f32> = vec2<f32>(x_2103.x, x_2103.y);
          let x_2106 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2104.x, x_2104.y, x_2106);
          let x_2114 : vec3<f32> = txVec30;
          let x_2116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2114.xy, x_2114.z);
          u_xlat9.x = x_2116;
          let x_2119 : vec4<f32> = u_xlat8;
          let x_2120 : vec2<f32> = vec2<f32>(x_2119.z, x_2119.w);
          let x_2122 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
          let x_2129 : vec3<f32> = txVec31;
          let x_2131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
          u_xlat9.y = x_2131;
          let x_2133 : vec4<f32> = u_xlat7;
          let x_2137 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2133.x, x_2133.y, x_2133.x, x_2133.y) + x_2137);
          let x_2140 : vec4<f32> = u_xlat8;
          let x_2141 : vec2<f32> = vec2<f32>(x_2140.x, x_2140.y);
          let x_2143 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2141.x, x_2141.y, x_2143);
          let x_2150 : vec3<f32> = txVec32;
          let x_2152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2150.xy, x_2150.z);
          u_xlat9.z = x_2152;
          let x_2155 : vec4<f32> = u_xlat8;
          let x_2156 : vec2<f32> = vec2<f32>(x_2155.z, x_2155.w);
          let x_2158 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
          let x_2165 : vec3<f32> = txVec33;
          let x_2167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
          u_xlat9.w = x_2167;
          let x_2169 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2169, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2172 : i32 = u_xlati68;
          let x_2174 : f32 = x_159.x_AdditionalShadowParams[x_2172].y;
          u_xlatb71 = (2.0f == x_2174);
          let x_2176 : bool = u_xlatb71;
          if (x_2176) {
            let x_2179 : vec4<f32> = u_xlat7;
            let x_2183 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2186 : vec2<f32> = ((vec2<f32>(x_2179.x, x_2179.y) * vec2<f32>(x_2183.z, x_2183.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2187 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
            let x_2189 : vec4<f32> = u_xlat8;
            let x_2191 : vec2<f32> = floor(vec2<f32>(x_2189.x, x_2189.y));
            let x_2192 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
            let x_2194 : vec4<f32> = u_xlat7;
            let x_2197 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2200 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(x_2197.z, x_2197.w)) + -(vec2<f32>(x_2200.x, x_2200.y)));
            let x_2204 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2204.x, x_2204.x, x_2204.y, x_2204.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2207 : vec4<f32> = u_xlat9;
            let x_2209 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2207.x, x_2207.x, x_2207.z, x_2207.z) * vec4<f32>(x_2209.x, x_2209.x, x_2209.z, x_2209.z));
            let x_2212 : vec4<f32> = u_xlat10;
            let x_2214 : vec2<f32> = (vec2<f32>(x_2212.y, x_2212.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2215 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2214.x, x_2215.y, x_2214.y, x_2215.w);
            let x_2217 : vec4<f32> = u_xlat10;
            let x_2220 : vec2<f32> = u_xlat52;
            let x_2222 : vec2<f32> = ((vec2<f32>(x_2217.x, x_2217.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2220));
            let x_2223 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2226 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2226) + vec2<f32>(1.0f, 1.0f));
            let x_2229 : vec2<f32> = u_xlat52;
            let x_2230 : vec2<f32> = min(x_2229, vec2<f32>(0.0f, 0.0f));
            let x_2231 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2230.x, x_2230.y, x_2231.z, x_2231.w);
            let x_2233 : vec4<f32> = u_xlat11;
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2239 : vec2<f32> = u_xlat54;
            let x_2240 : vec2<f32> = ((-(vec2<f32>(x_2233.x, x_2233.y)) * vec2<f32>(x_2236.x, x_2236.y)) + x_2239);
            let x_2241 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2240.x, x_2240.y, x_2241.z, x_2241.w);
            let x_2243 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2243, vec2<f32>(0.0f, 0.0f));
            let x_2245 : vec2<f32> = u_xlat52;
            let x_2247 : vec2<f32> = u_xlat52;
            let x_2249 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2245) * x_2247) + vec2<f32>(x_2249.y, x_2249.w));
            let x_2252 : vec4<f32> = u_xlat11;
            let x_2254 : vec2<f32> = (vec2<f32>(x_2252.x, x_2252.y) + vec2<f32>(1.0f, 1.0f));
            let x_2255 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
            let x_2257 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2257 + vec2<f32>(1.0f, 1.0f));
            let x_2259 : vec4<f32> = u_xlat10;
            let x_2261 : vec2<f32> = (vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2262 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2261.x, x_2261.y, x_2262.z, x_2262.w);
            let x_2264 : vec2<f32> = u_xlat54;
            let x_2265 : vec2<f32> = (x_2264 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2266 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2265.x, x_2265.y, x_2266.z, x_2266.w);
            let x_2268 : vec4<f32> = u_xlat11;
            let x_2270 : vec2<f32> = (vec2<f32>(x_2268.x, x_2268.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2271 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2273 : vec2<f32> = u_xlat52;
            let x_2274 : vec2<f32> = (x_2273 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2275 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2277.y, x_2277.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2281 : f32 = u_xlat11.x;
            u_xlat12.z = x_2281;
            let x_2284 : f32 = u_xlat52.x;
            u_xlat12.w = x_2284;
            let x_2287 : f32 = u_xlat13.x;
            u_xlat10.z = x_2287;
            let x_2290 : f32 = u_xlat9.x;
            u_xlat10.w = x_2290;
            let x_2292 : vec4<f32> = u_xlat10;
            let x_2294 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2292.z, x_2292.w, x_2292.x, x_2292.z) + vec4<f32>(x_2294.z, x_2294.w, x_2294.x, x_2294.z));
            let x_2298 : f32 = u_xlat12.y;
            u_xlat11.z = x_2298;
            let x_2301 : f32 = u_xlat52.y;
            u_xlat11.w = x_2301;
            let x_2304 : f32 = u_xlat10.y;
            u_xlat13.z = x_2304;
            let x_2307 : f32 = u_xlat9.z;
            u_xlat13.w = x_2307;
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2311 : vec4<f32> = u_xlat13;
            let x_2313 : vec3<f32> = (vec3<f32>(x_2309.z, x_2309.y, x_2309.w) + vec3<f32>(x_2311.z, x_2311.y, x_2311.w));
            let x_2314 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat10;
            let x_2318 : vec4<f32> = u_xlat14;
            let x_2320 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.z, x_2316.w) / vec3<f32>(x_2318.z, x_2318.w, x_2318.y));
            let x_2321 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
            let x_2323 : vec4<f32> = u_xlat10;
            let x_2325 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.y, x_2323.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2326 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
            let x_2328 : vec4<f32> = u_xlat13;
            let x_2330 : vec4<f32> = u_xlat9;
            let x_2332 : vec3<f32> = (vec3<f32>(x_2328.z, x_2328.y, x_2328.w) / vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
            let x_2333 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
            let x_2335 : vec4<f32> = u_xlat11;
            let x_2337 : vec3<f32> = (vec3<f32>(x_2335.x, x_2335.y, x_2335.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2338 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
            let x_2340 : vec4<f32> = u_xlat10;
            let x_2343 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2345 : vec3<f32> = (vec3<f32>(x_2340.y, x_2340.x, x_2340.z) * vec3<f32>(x_2343.x, x_2343.x, x_2343.x));
            let x_2346 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
            let x_2348 : vec4<f32> = u_xlat11;
            let x_2351 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2353 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * vec3<f32>(x_2351.y, x_2351.y, x_2351.y));
            let x_2354 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
            let x_2357 : f32 = u_xlat11.x;
            u_xlat10.w = x_2357;
            let x_2359 : vec4<f32> = u_xlat8;
            let x_2362 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2365 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y) * vec4<f32>(x_2362.x, x_2362.y, x_2362.x, x_2362.y)) + vec4<f32>(x_2365.y, x_2365.w, x_2365.x, x_2365.w));
            let x_2368 : vec4<f32> = u_xlat8;
            let x_2371 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2374 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2368.x, x_2368.y) * vec2<f32>(x_2371.x, x_2371.y)) + vec2<f32>(x_2374.z, x_2374.w));
            let x_2378 : f32 = u_xlat10.y;
            u_xlat11.w = x_2378;
            let x_2380 : vec4<f32> = u_xlat11;
            let x_2381 : vec2<f32> = vec2<f32>(x_2380.y, x_2380.z);
            let x_2382 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2382.x, x_2381.x, x_2382.z, x_2381.y);
            let x_2384 : vec4<f32> = u_xlat8;
            let x_2387 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2390 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2384.x, x_2384.y, x_2384.x, x_2384.y) * vec4<f32>(x_2387.x, x_2387.y, x_2387.x, x_2387.y)) + vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2390.y));
            let x_2393 : vec4<f32> = u_xlat8;
            let x_2396 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2393.x, x_2393.y, x_2393.x, x_2393.y) * vec4<f32>(x_2396.x, x_2396.y, x_2396.x, x_2396.y)) + vec4<f32>(x_2399.w, x_2399.y, x_2399.w, x_2399.z));
            let x_2402 : vec4<f32> = u_xlat8;
            let x_2405 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2408 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2402.x, x_2402.y, x_2402.x, x_2402.y) * vec4<f32>(x_2405.x, x_2405.y, x_2405.x, x_2405.y)) + vec4<f32>(x_2408.x, x_2408.w, x_2408.z, x_2408.w));
            let x_2411 : vec4<f32> = u_xlat9;
            let x_2413 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2411.x, x_2411.x, x_2411.x, x_2411.y) * vec4<f32>(x_2413.z, x_2413.w, x_2413.y, x_2413.z));
            let x_2416 : vec4<f32> = u_xlat9;
            let x_2418 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2416.y, x_2416.y, x_2416.z, x_2416.z) * x_2418);
            let x_2421 : f32 = u_xlat9.z;
            let x_2423 : f32 = u_xlat14.y;
            u_xlat71 = (x_2421 * x_2423);
            let x_2426 : vec4<f32> = u_xlat12;
            let x_2427 : vec2<f32> = vec2<f32>(x_2426.x, x_2426.y);
            let x_2429 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2427.x, x_2427.y, x_2429);
            let x_2436 : vec3<f32> = txVec34;
            let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
            u_xlat72 = x_2438;
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2441 : vec2<f32> = vec2<f32>(x_2440.z, x_2440.w);
            let x_2443 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
            let x_2451 : vec3<f32> = txVec35;
            let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
            u_xlat73 = x_2453;
            let x_2454 : f32 = u_xlat73;
            let x_2456 : f32 = u_xlat15.y;
            u_xlat73 = (x_2454 * x_2456);
            let x_2459 : f32 = u_xlat15.x;
            let x_2460 : f32 = u_xlat72;
            let x_2462 : f32 = u_xlat73;
            u_xlat72 = ((x_2459 * x_2460) + x_2462);
            let x_2465 : vec2<f32> = u_xlat52;
            let x_2467 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2465.x, x_2465.y, x_2467);
            let x_2474 : vec3<f32> = txVec36;
            let x_2476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2474.xy, x_2474.z);
            u_xlat73 = x_2476;
            let x_2478 : f32 = u_xlat15.z;
            let x_2479 : f32 = u_xlat73;
            let x_2481 : f32 = u_xlat72;
            u_xlat72 = ((x_2478 * x_2479) + x_2481);
            let x_2484 : vec4<f32> = u_xlat11;
            let x_2485 : vec2<f32> = vec2<f32>(x_2484.x, x_2484.y);
            let x_2487 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2485.x, x_2485.y, x_2487);
            let x_2494 : vec3<f32> = txVec37;
            let x_2496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2494.xy, x_2494.z);
            u_xlat73 = x_2496;
            let x_2498 : f32 = u_xlat15.w;
            let x_2499 : f32 = u_xlat73;
            let x_2501 : f32 = u_xlat72;
            u_xlat72 = ((x_2498 * x_2499) + x_2501);
            let x_2504 : vec4<f32> = u_xlat13;
            let x_2505 : vec2<f32> = vec2<f32>(x_2504.x, x_2504.y);
            let x_2507 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2505.x, x_2505.y, x_2507);
            let x_2514 : vec3<f32> = txVec38;
            let x_2516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2514.xy, x_2514.z);
            u_xlat73 = x_2516;
            let x_2518 : f32 = u_xlat16.x;
            let x_2519 : f32 = u_xlat73;
            let x_2521 : f32 = u_xlat72;
            u_xlat72 = ((x_2518 * x_2519) + x_2521);
            let x_2524 : vec4<f32> = u_xlat13;
            let x_2525 : vec2<f32> = vec2<f32>(x_2524.z, x_2524.w);
            let x_2527 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2525.x, x_2525.y, x_2527);
            let x_2534 : vec3<f32> = txVec39;
            let x_2536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2534.xy, x_2534.z);
            u_xlat73 = x_2536;
            let x_2538 : f32 = u_xlat16.y;
            let x_2539 : f32 = u_xlat73;
            let x_2541 : f32 = u_xlat72;
            u_xlat72 = ((x_2538 * x_2539) + x_2541);
            let x_2544 : vec4<f32> = u_xlat11;
            let x_2545 : vec2<f32> = vec2<f32>(x_2544.z, x_2544.w);
            let x_2547 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2545.x, x_2545.y, x_2547);
            let x_2554 : vec3<f32> = txVec40;
            let x_2556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2554.xy, x_2554.z);
            u_xlat73 = x_2556;
            let x_2558 : f32 = u_xlat16.z;
            let x_2559 : f32 = u_xlat73;
            let x_2561 : f32 = u_xlat72;
            u_xlat72 = ((x_2558 * x_2559) + x_2561);
            let x_2564 : vec4<f32> = u_xlat10;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.x, x_2564.y);
            let x_2567 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
            let x_2574 : vec3<f32> = txVec41;
            let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
            u_xlat73 = x_2576;
            let x_2578 : f32 = u_xlat16.w;
            let x_2579 : f32 = u_xlat73;
            let x_2581 : f32 = u_xlat72;
            u_xlat72 = ((x_2578 * x_2579) + x_2581);
            let x_2584 : vec4<f32> = u_xlat10;
            let x_2585 : vec2<f32> = vec2<f32>(x_2584.z, x_2584.w);
            let x_2587 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2585.x, x_2585.y, x_2587);
            let x_2594 : vec3<f32> = txVec42;
            let x_2596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2594.xy, x_2594.z);
            u_xlat73 = x_2596;
            let x_2597 : f32 = u_xlat71;
            let x_2598 : f32 = u_xlat73;
            let x_2600 : f32 = u_xlat72;
            u_xlat70 = ((x_2597 * x_2598) + x_2600);
          } else {
            let x_2603 : vec4<f32> = u_xlat7;
            let x_2606 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2609 : vec2<f32> = ((vec2<f32>(x_2603.x, x_2603.y) * vec2<f32>(x_2606.z, x_2606.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2610 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2609.x, x_2609.y, x_2610.z, x_2610.w);
            let x_2612 : vec4<f32> = u_xlat8;
            let x_2614 : vec2<f32> = floor(vec2<f32>(x_2612.x, x_2612.y));
            let x_2615 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
            let x_2617 : vec4<f32> = u_xlat7;
            let x_2620 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2617.x, x_2617.y) * vec2<f32>(x_2620.z, x_2620.w)) + -(vec2<f32>(x_2623.x, x_2623.y)));
            let x_2627 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2627.x, x_2627.x, x_2627.y, x_2627.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2630 : vec4<f32> = u_xlat9;
            let x_2632 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2630.x, x_2630.x, x_2630.z, x_2630.z) * vec4<f32>(x_2632.x, x_2632.x, x_2632.z, x_2632.z));
            let x_2635 : vec4<f32> = u_xlat10;
            let x_2637 : vec2<f32> = (vec2<f32>(x_2635.y, x_2635.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2638 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2638.x, x_2637.x, x_2638.z, x_2637.y);
            let x_2640 : vec4<f32> = u_xlat10;
            let x_2643 : vec2<f32> = u_xlat52;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2640.x, x_2640.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2643));
            let x_2646 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2645.x, x_2646.y, x_2645.y, x_2646.w);
            let x_2648 : vec2<f32> = u_xlat52;
            let x_2650 : vec2<f32> = (-(x_2648) + vec2<f32>(1.0f, 1.0f));
            let x_2651 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2650.x, x_2650.y, x_2651.z, x_2651.w);
            let x_2653 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2653, vec2<f32>(0.0f, 0.0f));
            let x_2655 : vec2<f32> = u_xlat54;
            let x_2657 : vec2<f32> = u_xlat54;
            let x_2659 : vec4<f32> = u_xlat10;
            let x_2661 : vec2<f32> = ((-(x_2655) * x_2657) + vec2<f32>(x_2659.x, x_2659.y));
            let x_2662 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
            let x_2664 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2664, vec2<f32>(0.0f, 0.0f));
            let x_2667 : vec2<f32> = u_xlat54;
            let x_2669 : vec2<f32> = u_xlat54;
            let x_2671 : vec4<f32> = u_xlat9;
            let x_2673 : vec2<f32> = ((-(x_2667) * x_2669) + vec2<f32>(x_2671.y, x_2671.w));
            let x_2674 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2673.x, x_2674.y, x_2673.y);
            let x_2676 : vec4<f32> = u_xlat10;
            let x_2678 : vec2<f32> = (vec2<f32>(x_2676.x, x_2676.y) + vec2<f32>(2.0f, 2.0f));
            let x_2679 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2678.x, x_2678.y, x_2679.z, x_2679.w);
            let x_2681 : vec3<f32> = u_xlat31;
            let x_2683 : vec2<f32> = (vec2<f32>(x_2681.x, x_2681.z) + vec2<f32>(2.0f, 2.0f));
            let x_2684 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2684.x, x_2683.x, x_2684.z, x_2683.y);
            let x_2687 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2687 * 0.08163200318813323975f);
            let x_2690 : vec4<f32> = u_xlat9;
            let x_2692 : vec3<f32> = (vec3<f32>(x_2690.z, x_2690.x, x_2690.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2693 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
            let x_2695 : vec4<f32> = u_xlat10;
            let x_2697 : vec2<f32> = (vec2<f32>(x_2695.x, x_2695.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2698 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2697.x, x_2697.y, x_2698.z, x_2698.w);
            let x_2701 : f32 = u_xlat13.y;
            u_xlat12.x = x_2701;
            let x_2703 : vec2<f32> = u_xlat52;
            let x_2706 : vec2<f32> = ((vec2<f32>(x_2703.x, x_2703.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2707 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2707.x, x_2706.x, x_2707.z, x_2706.y);
            let x_2709 : vec2<f32> = u_xlat52;
            let x_2712 : vec2<f32> = ((vec2<f32>(x_2709.x, x_2709.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2713 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2712.x, x_2713.y, x_2712.y, x_2713.w);
            let x_2716 : f32 = u_xlat9.x;
            u_xlat10.y = x_2716;
            let x_2719 : f32 = u_xlat11.y;
            u_xlat10.w = x_2719;
            let x_2721 : vec4<f32> = u_xlat10;
            let x_2722 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2721 + x_2722);
            let x_2724 : vec2<f32> = u_xlat52;
            let x_2727 : vec2<f32> = ((vec2<f32>(x_2724.y, x_2724.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2728 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2728.x, x_2727.x, x_2728.z, x_2727.y);
            let x_2730 : vec2<f32> = u_xlat52;
            let x_2733 : vec2<f32> = ((vec2<f32>(x_2730.y, x_2730.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2734 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2733.x, x_2734.y, x_2733.y, x_2734.w);
            let x_2737 : f32 = u_xlat9.y;
            u_xlat11.y = x_2737;
            let x_2739 : vec4<f32> = u_xlat11;
            let x_2740 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2739 + x_2740);
            let x_2742 : vec4<f32> = u_xlat10;
            let x_2743 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2742 / x_2743);
            let x_2745 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2745 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2747 : vec4<f32> = u_xlat11;
            let x_2748 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2747 / x_2748);
            let x_2750 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2750 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2752 : vec4<f32> = u_xlat10;
            let x_2755 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2752.w, x_2752.x, x_2752.y, x_2752.z) * vec4<f32>(x_2755.x, x_2755.x, x_2755.x, x_2755.x));
            let x_2758 : vec4<f32> = u_xlat11;
            let x_2761 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2758.x, x_2758.w, x_2758.y, x_2758.z) * vec4<f32>(x_2761.y, x_2761.y, x_2761.y, x_2761.y));
            let x_2764 : vec4<f32> = u_xlat10;
            let x_2765 : vec3<f32> = vec3<f32>(x_2764.y, x_2764.z, x_2764.w);
            let x_2766 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2765.x, x_2766.y, x_2765.y, x_2765.z);
            let x_2769 : f32 = u_xlat11.x;
            u_xlat13.y = x_2769;
            let x_2771 : vec4<f32> = u_xlat8;
            let x_2774 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2777 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) * vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y)) + vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2777.y));
            let x_2780 : vec4<f32> = u_xlat8;
            let x_2783 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2780.x, x_2780.y) * vec2<f32>(x_2783.x, x_2783.y)) + vec2<f32>(x_2786.w, x_2786.y));
            let x_2790 : f32 = u_xlat13.y;
            u_xlat10.y = x_2790;
            let x_2793 : f32 = u_xlat11.z;
            u_xlat13.y = x_2793;
            let x_2795 : vec4<f32> = u_xlat8;
            let x_2798 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2801 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.y) * vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y)) + vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2801.y));
            let x_2804 : vec4<f32> = u_xlat8;
            let x_2807 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2810 : vec4<f32> = u_xlat13;
            let x_2812 : vec2<f32> = ((vec2<f32>(x_2804.x, x_2804.y) * vec2<f32>(x_2807.x, x_2807.y)) + vec2<f32>(x_2810.w, x_2810.y));
            let x_2813 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2816 : f32 = u_xlat13.y;
            u_xlat10.z = x_2816;
            let x_2818 : vec4<f32> = u_xlat8;
            let x_2821 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2824 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y) * vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y)) + vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.z));
            let x_2828 : f32 = u_xlat11.w;
            u_xlat13.y = x_2828;
            let x_2830 : vec4<f32> = u_xlat8;
            let x_2833 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y) * vec4<f32>(x_2833.x, x_2833.y, x_2833.x, x_2833.y)) + vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2836.y));
            let x_2840 : vec4<f32> = u_xlat8;
            let x_2843 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2840.x, x_2840.y) * vec2<f32>(x_2843.x, x_2843.y)) + vec2<f32>(x_2846.w, x_2846.y));
            let x_2850 : f32 = u_xlat13.y;
            u_xlat10.w = x_2850;
            let x_2853 : vec4<f32> = u_xlat8;
            let x_2856 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2859 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2856.x, x_2856.y)) + vec2<f32>(x_2859.x, x_2859.w));
            let x_2862 : vec4<f32> = u_xlat13;
            let x_2863 : vec3<f32> = vec3<f32>(x_2862.x, x_2862.z, x_2862.w);
            let x_2864 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2863.x, x_2864.y, x_2863.y, x_2863.z);
            let x_2866 : vec4<f32> = u_xlat8;
            let x_2869 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2872 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2866.x, x_2866.y, x_2866.x, x_2866.y) * vec4<f32>(x_2869.x, x_2869.y, x_2869.x, x_2869.y)) + vec4<f32>(x_2872.x, x_2872.y, x_2872.z, x_2872.y));
            let x_2876 : vec4<f32> = u_xlat8;
            let x_2879 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2876.x, x_2876.y) * vec2<f32>(x_2879.x, x_2879.y)) + vec2<f32>(x_2882.w, x_2882.y));
            let x_2886 : f32 = u_xlat10.x;
            u_xlat11.x = x_2886;
            let x_2888 : vec4<f32> = u_xlat8;
            let x_2891 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2896 : vec2<f32> = ((vec2<f32>(x_2888.x, x_2888.y) * vec2<f32>(x_2891.x, x_2891.y)) + vec2<f32>(x_2894.x, x_2894.y));
            let x_2897 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2896.x, x_2896.y, x_2897.z, x_2897.w);
            let x_2900 : vec4<f32> = u_xlat9;
            let x_2902 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2900.x, x_2900.x, x_2900.x, x_2900.x) * x_2902);
            let x_2905 : vec4<f32> = u_xlat9;
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2905.y, x_2905.y, x_2905.y, x_2905.y) * x_2907);
            let x_2910 : vec4<f32> = u_xlat9;
            let x_2912 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2910.z, x_2910.z, x_2910.z, x_2910.z) * x_2912);
            let x_2914 : vec4<f32> = u_xlat9;
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2914.w, x_2914.w, x_2914.w, x_2914.w) * x_2916);
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec2<f32> = vec2<f32>(x_2919.x, x_2919.y);
            let x_2922 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2920.x, x_2920.y, x_2922);
            let x_2929 : vec3<f32> = txVec43;
            let x_2931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2929.xy, x_2929.z);
            u_xlat71 = x_2931;
            let x_2933 : vec4<f32> = u_xlat14;
            let x_2934 : vec2<f32> = vec2<f32>(x_2933.z, x_2933.w);
            let x_2936 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2934.x, x_2934.y, x_2936);
            let x_2943 : vec3<f32> = txVec44;
            let x_2945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2943.xy, x_2943.z);
            u_xlat72 = x_2945;
            let x_2946 : f32 = u_xlat72;
            let x_2948 : f32 = u_xlat19.y;
            u_xlat72 = (x_2946 * x_2948);
            let x_2951 : f32 = u_xlat19.x;
            let x_2952 : f32 = u_xlat71;
            let x_2954 : f32 = u_xlat72;
            u_xlat71 = ((x_2951 * x_2952) + x_2954);
            let x_2957 : vec2<f32> = u_xlat52;
            let x_2959 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2957.x, x_2957.y, x_2959);
            let x_2966 : vec3<f32> = txVec45;
            let x_2968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2966.xy, x_2966.z);
            u_xlat72 = x_2968;
            let x_2970 : f32 = u_xlat19.z;
            let x_2971 : f32 = u_xlat72;
            let x_2973 : f32 = u_xlat71;
            u_xlat71 = ((x_2970 * x_2971) + x_2973);
            let x_2976 : vec4<f32> = u_xlat17;
            let x_2977 : vec2<f32> = vec2<f32>(x_2976.x, x_2976.y);
            let x_2979 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2986 : vec3<f32> = txVec46;
            let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
            u_xlat72 = x_2988;
            let x_2990 : f32 = u_xlat19.w;
            let x_2991 : f32 = u_xlat72;
            let x_2993 : f32 = u_xlat71;
            u_xlat71 = ((x_2990 * x_2991) + x_2993);
            let x_2996 : vec4<f32> = u_xlat15;
            let x_2997 : vec2<f32> = vec2<f32>(x_2996.x, x_2996.y);
            let x_2999 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2997.x, x_2997.y, x_2999);
            let x_3006 : vec3<f32> = txVec47;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat72 = x_3008;
            let x_3010 : f32 = u_xlat20.x;
            let x_3011 : f32 = u_xlat72;
            let x_3013 : f32 = u_xlat71;
            u_xlat71 = ((x_3010 * x_3011) + x_3013);
            let x_3016 : vec4<f32> = u_xlat15;
            let x_3017 : vec2<f32> = vec2<f32>(x_3016.z, x_3016.w);
            let x_3019 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3017.x, x_3017.y, x_3019);
            let x_3026 : vec3<f32> = txVec48;
            let x_3028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3026.xy, x_3026.z);
            u_xlat72 = x_3028;
            let x_3030 : f32 = u_xlat20.y;
            let x_3031 : f32 = u_xlat72;
            let x_3033 : f32 = u_xlat71;
            u_xlat71 = ((x_3030 * x_3031) + x_3033);
            let x_3036 : vec4<f32> = u_xlat16;
            let x_3037 : vec2<f32> = vec2<f32>(x_3036.x, x_3036.y);
            let x_3039 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3037.x, x_3037.y, x_3039);
            let x_3046 : vec3<f32> = txVec49;
            let x_3048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3046.xy, x_3046.z);
            u_xlat72 = x_3048;
            let x_3050 : f32 = u_xlat20.z;
            let x_3051 : f32 = u_xlat72;
            let x_3053 : f32 = u_xlat71;
            u_xlat71 = ((x_3050 * x_3051) + x_3053);
            let x_3056 : vec4<f32> = u_xlat17;
            let x_3057 : vec2<f32> = vec2<f32>(x_3056.z, x_3056.w);
            let x_3059 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3066 : vec3<f32> = txVec50;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat72 = x_3068;
            let x_3070 : f32 = u_xlat20.w;
            let x_3071 : f32 = u_xlat72;
            let x_3073 : f32 = u_xlat71;
            u_xlat71 = ((x_3070 * x_3071) + x_3073);
            let x_3076 : vec4<f32> = u_xlat18;
            let x_3077 : vec2<f32> = vec2<f32>(x_3076.x, x_3076.y);
            let x_3079 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3086 : vec3<f32> = txVec51;
            let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
            u_xlat72 = x_3088;
            let x_3090 : f32 = u_xlat21.x;
            let x_3091 : f32 = u_xlat72;
            let x_3093 : f32 = u_xlat71;
            u_xlat71 = ((x_3090 * x_3091) + x_3093);
            let x_3096 : vec4<f32> = u_xlat18;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
            let x_3099 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec52;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat72 = x_3108;
            let x_3110 : f32 = u_xlat21.y;
            let x_3111 : f32 = u_xlat72;
            let x_3113 : f32 = u_xlat71;
            u_xlat71 = ((x_3110 * x_3111) + x_3113);
            let x_3116 : vec2<f32> = u_xlat32;
            let x_3118 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec53;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat72 = x_3127;
            let x_3129 : f32 = u_xlat21.z;
            let x_3130 : f32 = u_xlat72;
            let x_3132 : f32 = u_xlat71;
            u_xlat71 = ((x_3129 * x_3130) + x_3132);
            let x_3135 : vec2<f32> = u_xlat60;
            let x_3137 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec54;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat72 = x_3146;
            let x_3148 : f32 = u_xlat21.w;
            let x_3149 : f32 = u_xlat72;
            let x_3151 : f32 = u_xlat71;
            u_xlat71 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec4<f32> = u_xlat13;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.x, x_3154.y);
            let x_3157 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec55;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat72 = x_3166;
            let x_3168 : f32 = u_xlat9.x;
            let x_3169 : f32 = u_xlat72;
            let x_3171 : f32 = u_xlat71;
            u_xlat71 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec4<f32> = u_xlat13;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.z, x_3174.w);
            let x_3177 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec56;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat72 = x_3186;
            let x_3188 : f32 = u_xlat9.y;
            let x_3189 : f32 = u_xlat72;
            let x_3191 : f32 = u_xlat71;
            u_xlat71 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec2<f32> = u_xlat55;
            let x_3196 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec57;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat72 = x_3205;
            let x_3207 : f32 = u_xlat9.z;
            let x_3208 : f32 = u_xlat72;
            let x_3210 : f32 = u_xlat71;
            u_xlat71 = ((x_3207 * x_3208) + x_3210);
            let x_3213 : vec4<f32> = u_xlat8;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.x, x_3213.y);
            let x_3216 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec58;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat72 = x_3225;
            let x_3227 : f32 = u_xlat9.w;
            let x_3228 : f32 = u_xlat72;
            let x_3230 : f32 = u_xlat71;
            u_xlat70 = ((x_3227 * x_3228) + x_3230);
          }
        }
      } else {
        let x_3234 : vec4<f32> = u_xlat7;
        let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
        let x_3237 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
        let x_3244 : vec3<f32> = txVec59;
        let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
        u_xlat70 = x_3246;
      }
      let x_3247 : i32 = u_xlati68;
      let x_3249 : f32 = x_159.x_AdditionalShadowParams[x_3247].x;
      u_xlat71 = (1.0f + -(x_3249));
      let x_3252 : f32 = u_xlat70;
      let x_3253 : i32 = u_xlati68;
      let x_3255 : f32 = x_159.x_AdditionalShadowParams[x_3253].x;
      let x_3257 : f32 = u_xlat71;
      u_xlat70 = ((x_3252 * x_3255) + x_3257);
      let x_3260 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3260);
      let x_3264 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3264 >= 1.0f);
      let x_3266 : bool = u_xlatb71;
      let x_3267 : bool = u_xlatb72;
      u_xlatb71 = (x_3266 | x_3267);
      let x_3269 : bool = u_xlatb71;
      let x_3270 : f32 = u_xlat70;
      u_xlat70 = select(x_3270, 1.0f, x_3269);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3273 : f32 = u_xlat70;
    u_xlat71 = (-(x_3273) + 1.0f);
    let x_3276 : f32 = u_xlat66;
    let x_3277 : f32 = u_xlat71;
    let x_3279 : f32 = u_xlat70;
    u_xlat70 = ((x_3276 * x_3277) + x_3279);
    let x_3281 : f32 = u_xlat69;
    let x_3282 : f32 = u_xlat70;
    u_xlat69 = (x_3281 * x_3282);
    let x_3284 : f32 = u_xlat69;
    let x_3286 : i32 = u_xlati68;
    let x_3288 : vec4<f32> = x_1862.x_AdditionalLightsColor[x_3286];
    let x_3290 : vec3<f32> = (vec3<f32>(x_3284, x_3284, x_3284) * vec3<f32>(x_3288.x, x_3288.y, x_3288.z));
    let x_3291 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3290.x, x_3290.y, x_3290.z, x_3291.w);
    let x_3293 : vec4<f32> = u_xlat2;
    let x_3295 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3293.x, x_3293.y, x_3293.z), vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
    let x_3298 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3298, 0.0f, 1.0f);
    let x_3300 : f32 = u_xlat68;
    let x_3302 : vec4<f32> = u_xlat7;
    let x_3304 : vec3<f32> = (vec3<f32>(x_3300, x_3300, x_3300) * vec3<f32>(x_3302.x, x_3302.y, x_3302.z));
    let x_3305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3304.x, x_3304.y, x_3304.z, x_3305.w);
    let x_3307 : vec4<f32> = u_xlat1;
    let x_3309 : vec4<f32> = u_xlat6;
    let x_3311 : vec3<f32> = (vec3<f32>(x_3307.y, x_3307.z, x_3307.w) * vec3<f32>(x_3309.x, x_3309.y, x_3309.z));
    let x_3312 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
    let x_3314 : vec4<f32> = u_xlat6;
    let x_3316 : vec4<f32> = u_xlat0;
    let x_3319 : vec4<f32> = u_xlat5;
    let x_3321 : vec3<f32> = ((vec3<f32>(x_3314.x, x_3314.y, x_3314.z) * vec3<f32>(x_3316.x, x_3316.x, x_3316.x)) + vec3<f32>(x_3319.x, x_3319.y, x_3319.z));
    let x_3322 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3322.w);

    continuing {
      let x_3324 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3324 + bitcast<u32>(1i));
    }
  }
  let x_3326 : vec4<f32> = u_xlat4;
  let x_3328 : vec4<f32> = u_xlat1;
  let x_3331 : vec4<f32> = u_xlat3;
  let x_3333 : vec3<f32> = ((vec3<f32>(x_3326.x, x_3326.y, x_3326.z) * vec3<f32>(x_3328.y, x_3328.z, x_3328.w)) + vec3<f32>(x_3331.x, x_3331.y, x_3331.z));
  let x_3334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
  let x_3338 : vec4<f32> = u_xlat5;
  let x_3340 : vec4<f32> = u_xlat1;
  let x_3342 : vec3<f32> = (vec3<f32>(x_3338.x, x_3338.y, x_3338.z) + vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
  let x_3343 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3342.x, x_3342.y, x_3342.z, x_3343.w);
  let x_3346 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3346 == 1.0f);
  let x_3348 : bool = u_xlatb22;
  let x_3349 : bool = u_xlatb44;
  u_xlatb22 = (x_3348 | x_3349);
  let x_3351 : bool = u_xlatb22;
  if (x_3351) {
    let x_3356 : f32 = u_xlat0.x;
    x_3352 = x_3356;
  } else {
    x_3352 = 1.0f;
  }
  let x_3358 : f32 = x_3352;
  SV_Target0.w = x_3358;
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


