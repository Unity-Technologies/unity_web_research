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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

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

@group(1) @binding(2) var<uniform> x_394 : UnityPerDraw;

var<private> u_xlatb66 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

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

var<private> u_xlat69 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1891 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2028 : f32;
  var x_2039 : f32;
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
  var x_3430 : f32;
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
  u_xlat22 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat66;
  let x_91 : f32 = u_xlat44;
  u_xlat44 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat44;
  u_xlat44 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat22;
  let x_98 : f32 = u_xlat44;
  u_xlat22 = (x_97 / x_98);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat22;
  u_xlat22 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb44;
  if (x_110) {
    let x_114 : f32 = u_xlat22;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat22 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat22;
  u_xlatb22 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb22;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat22;
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
  let x_353 : f32 = vs_TEXCOORD1.y;
  let x_356 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat22 = (x_353 * x_356);
  let x_359 : f32 = x_28.unity_MatrixV[0i].z;
  let x_361 : f32 = vs_TEXCOORD1.x;
  let x_363 : f32 = u_xlat22;
  u_xlat22 = ((x_359 * x_361) + x_363);
  let x_366 : f32 = x_28.unity_MatrixV[2i].z;
  let x_368 : f32 = vs_TEXCOORD1.z;
  let x_370 : f32 = u_xlat22;
  u_xlat22 = ((x_366 * x_368) + x_370);
  let x_372 : f32 = u_xlat22;
  let x_374 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat22 = (x_372 + x_374);
  let x_376 : f32 = u_xlat22;
  let x_380 : f32 = x_28.x_ProjectionParams.y;
  u_xlat22 = (-(x_376) + -(x_380));
  let x_383 : f32 = u_xlat22;
  u_xlat22 = max(x_383, 0.0f);
  let x_385 : f32 = u_xlat22;
  let x_388 : f32 = x_28.unity_FogParams.x;
  u_xlat22 = (x_385 * x_388);
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
  u_xlat66 = (x_437 * x_439);
  let x_442 : f32 = u_xlat2.x;
  let x_444 : f32 = u_xlat2.x;
  let x_446 : f32 = u_xlat66;
  u_xlat66 = ((x_442 * x_444) + -(x_446));
  let x_451 : vec4<f32> = x_394.unity_SHC;
  let x_453 : f32 = u_xlat66;
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
  u_xlatb66 = (0.0f < x_476);
  let x_478 : bool = u_xlatb66;
  if (x_478) {
    let x_482 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb66 = (x_482 == 1.0f);
    let x_484 : bool = u_xlatb66;
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
      u_xlat66 = dot(x_563, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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
        u_xlat49 = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.z, x_595.w)) + -(vec2<f32>(x_598.x, x_598.y)));
        let x_602 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_602.x, x_602.x, x_602.y, x_602.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_607 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_607.x, x_607.x, x_607.z, x_607.z) * vec4<f32>(x_609.x, x_609.x, x_609.z, x_609.z));
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (vec2<f32>(x_612.y, x_612.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_617.y, x_616.y, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_622 : vec2<f32> = u_xlat49;
        let x_624 : vec2<f32> = ((vec2<f32>(x_619.x, x_619.z) * vec2<f32>(0.5f, 0.5f)) + -(x_622));
        let x_625 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_628 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_628) + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec2<f32> = u_xlat49;
        let x_635 : vec2<f32> = min(x_633, vec2<f32>(0.0f, 0.0f));
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec4<f32> = u_xlat8;
        let x_641 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = u_xlat51;
        let x_645 : vec2<f32> = ((-(vec2<f32>(x_638.x, x_638.y)) * vec2<f32>(x_641.x, x_641.y)) + x_644);
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_648 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_648, vec2<f32>(0.0f, 0.0f));
        let x_650 : vec2<f32> = u_xlat49;
        let x_652 : vec2<f32> = u_xlat49;
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_650) * x_652) + vec2<f32>(x_654.y, x_654.w));
        let x_657 : vec4<f32> = u_xlat8;
        let x_659 : vec2<f32> = (vec2<f32>(x_657.x, x_657.y) + vec2<f32>(1.0f, 1.0f));
        let x_660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_662 + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat51;
        let x_673 : vec2<f32> = (x_672 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat8;
        let x_678 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_682 : vec2<f32> = u_xlat49;
        let x_683 : vec2<f32> = (x_682 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_686.y, x_686.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : f32 = u_xlat8.x;
        u_xlat9.z = x_690;
        let x_693 : f32 = u_xlat49.x;
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
        let x_711 : f32 = u_xlat49.y;
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
        u_xlat49 = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(x_788.z, x_788.w));
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
        u_xlat68 = x_856;
        let x_858 : vec4<f32> = u_xlat9;
        let x_859 : vec2<f32> = vec2<f32>(x_858.z, x_858.w);
        let x_861 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_869 : vec3<f32> = txVec5;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat69 = x_871;
        let x_872 : f32 = u_xlat69;
        let x_874 : f32 = u_xlat12.y;
        u_xlat69 = (x_872 * x_874);
        let x_877 : f32 = u_xlat12.x;
        let x_878 : f32 = u_xlat68;
        let x_880 : f32 = u_xlat69;
        u_xlat68 = ((x_877 * x_878) + x_880);
        let x_883 : vec2<f32> = u_xlat49;
        let x_885 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec6;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat69 = x_894;
        let x_896 : f32 = u_xlat12.z;
        let x_897 : f32 = u_xlat69;
        let x_899 : f32 = u_xlat68;
        u_xlat68 = ((x_896 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec7;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_912.xy, x_912.z);
        u_xlat69 = x_914;
        let x_916 : f32 = u_xlat12.w;
        let x_917 : f32 = u_xlat69;
        let x_919 : f32 = u_xlat68;
        u_xlat68 = ((x_916 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat10;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec8;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat69 = x_934;
        let x_936 : f32 = u_xlat13.x;
        let x_937 : f32 = u_xlat69;
        let x_939 : f32 = u_xlat68;
        u_xlat68 = ((x_936 * x_937) + x_939);
        let x_942 : vec4<f32> = u_xlat10;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec9;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat69 = x_954;
        let x_956 : f32 = u_xlat13.y;
        let x_957 : f32 = u_xlat69;
        let x_959 : f32 = u_xlat68;
        u_xlat68 = ((x_956 * x_957) + x_959);
        let x_962 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = vec2<f32>(x_962.z, x_962.w);
        let x_965 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_963.x, x_963.y, x_965);
        let x_972 : vec3<f32> = txVec10;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
        u_xlat69 = x_974;
        let x_976 : f32 = u_xlat13.z;
        let x_977 : f32 = u_xlat69;
        let x_979 : f32 = u_xlat68;
        u_xlat68 = ((x_976 * x_977) + x_979);
        let x_982 : vec4<f32> = u_xlat7;
        let x_983 : vec2<f32> = vec2<f32>(x_982.x, x_982.y);
        let x_985 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec11;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_992.xy, x_992.z);
        u_xlat69 = x_994;
        let x_996 : f32 = u_xlat13.w;
        let x_997 : f32 = u_xlat69;
        let x_999 : f32 = u_xlat68;
        u_xlat68 = ((x_996 * x_997) + x_999);
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1012 : vec3<f32> = txVec12;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
        u_xlat69 = x_1014;
        let x_1016 : f32 = u_xlat1.x;
        let x_1017 : f32 = u_xlat69;
        let x_1019 : f32 = u_xlat68;
        u_xlat66 = ((x_1016 * x_1017) + x_1019);
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
        u_xlat49 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.z, x_1039.w)) + -(vec2<f32>(x_1042.x, x_1042.y)));
        let x_1046 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.y, x_1046.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.z, x_1049.z) * vec4<f32>(x_1051.x, x_1051.x, x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1054.y, x_1054.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1058.x, x_1059.z, x_1058.y);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = u_xlat49;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1064));
        let x_1067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1069 : vec2<f32> = u_xlat49;
        let x_1071 : vec2<f32> = (-(x_1069) + vec2<f32>(1.0f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat51;
        let x_1078 : vec2<f32> = u_xlat51;
        let x_1080 : vec4<f32> = u_xlat7;
        let x_1082 : vec2<f32> = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1089 : vec2<f32> = u_xlat51;
        let x_1091 : vec2<f32> = u_xlat51;
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1095 : vec2<f32> = ((-(x_1089) * x_1091) + vec2<f32>(x_1093.y, x_1093.w));
        let x_1096 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1095.x, x_1096.y, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) + vec2<f32>(2.0f, 2.0f));
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec3<f32> = u_xlat28;
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
        let x_1129 : vec2<f32> = u_xlat49;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec2<f32> = u_xlat49;
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
        let x_1155 : vec2<f32> = u_xlat49;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1155.y, x_1155.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1159.x, x_1158.x, x_1159.z, x_1158.y);
        let x_1161 : vec2<f32> = u_xlat49;
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
        u_xlat49 = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
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
        u_xlat29 = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1287 : f32 = u_xlat10.y;
        u_xlat7.w = x_1287;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.x, x_1296.w));
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
        u_xlat52 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
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
        u_xlat68 = x_1383;
        let x_1384 : f32 = u_xlat68;
        let x_1386 : f32 = u_xlat16.y;
        u_xlat68 = (x_1384 * x_1386);
        let x_1389 : f32 = u_xlat16.x;
        let x_1391 : f32 = u_xlat1.x;
        let x_1393 : f32 = u_xlat68;
        u_xlat1.x = ((x_1389 * x_1391) + x_1393);
        let x_1397 : vec2<f32> = u_xlat49;
        let x_1399 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec15;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat68 = x_1408;
        let x_1410 : f32 = u_xlat16.z;
        let x_1411 : f32 = u_xlat68;
        let x_1414 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat14;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec16;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat68 = x_1430;
        let x_1432 : f32 = u_xlat16.w;
        let x_1433 : f32 = u_xlat68;
        let x_1436 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat12;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec17;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat68 = x_1452;
        let x_1454 : f32 = u_xlat17.x;
        let x_1455 : f32 = u_xlat68;
        let x_1458 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat12;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec18;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat68 = x_1474;
        let x_1476 : f32 = u_xlat17.y;
        let x_1477 : f32 = u_xlat68;
        let x_1480 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat13;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec19;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat68 = x_1496;
        let x_1498 : f32 = u_xlat17.z;
        let x_1499 : f32 = u_xlat68;
        let x_1502 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec4<f32> = u_xlat14;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec20;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat68 = x_1518;
        let x_1520 : f32 = u_xlat17.w;
        let x_1521 : f32 = u_xlat68;
        let x_1524 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1520 * x_1521) + x_1524);
        let x_1528 : vec4<f32> = u_xlat15;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec21;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat68 = x_1540;
        let x_1542 : f32 = u_xlat18.x;
        let x_1543 : f32 = u_xlat68;
        let x_1546 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat15;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec22;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat68 = x_1562;
        let x_1564 : f32 = u_xlat18.y;
        let x_1565 : f32 = u_xlat68;
        let x_1568 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec2<f32> = u_xlat29;
        let x_1574 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec23;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat68 = x_1583;
        let x_1585 : f32 = u_xlat18.z;
        let x_1586 : f32 = u_xlat68;
        let x_1589 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1585 * x_1586) + x_1589);
        let x_1593 : vec2<f32> = u_xlat57;
        let x_1595 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec24;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1602.xy, x_1602.z);
        u_xlat68 = x_1604;
        let x_1606 : f32 = u_xlat18.w;
        let x_1607 : f32 = u_xlat68;
        let x_1610 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec25;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1624.xy, x_1624.z);
        u_xlat68 = x_1626;
        let x_1628 : f32 = u_xlat6.x;
        let x_1629 : f32 = u_xlat68;
        let x_1632 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec26;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1646.xy, x_1646.z);
        u_xlat68 = x_1648;
        let x_1650 : f32 = u_xlat6.y;
        let x_1651 : f32 = u_xlat68;
        let x_1654 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1650 * x_1651) + x_1654);
        let x_1658 : vec2<f32> = u_xlat52;
        let x_1660 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec27;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1667.xy, x_1667.z);
        u_xlat68 = x_1669;
        let x_1671 : f32 = u_xlat6.z;
        let x_1672 : f32 = u_xlat68;
        let x_1675 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec4<f32> = u_xlat5;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
        let x_1682 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec28;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
        u_xlat68 = x_1691;
        let x_1693 : f32 = u_xlat6.w;
        let x_1694 : f32 = u_xlat68;
        let x_1697 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1693 * x_1694) + x_1697);
      }
    }
  } else {
    let x_1701 : vec4<f32> = u_xlat3;
    let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
    let x_1704 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
    let x_1711 : vec3<f32> = txVec29;
    let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1711.xy, x_1711.z);
    u_xlat66 = x_1713;
  }
  let x_1715 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1715) + 1.0f);
  let x_1719 : f32 = u_xlat66;
  let x_1721 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1724 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1719 * x_1721) + x_1724);
  let x_1727 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_1727);
  let x_1731 : f32 = u_xlat3.z;
  u_xlatb68 = (x_1731 >= 1.0f);
  let x_1733 : bool = u_xlatb1;
  let x_1734 : bool = u_xlatb68;
  u_xlatb1 = (x_1733 | x_1734);
  let x_1736 : bool = u_xlatb1;
  let x_1737 : f32 = u_xlat66;
  u_xlat66 = select(x_1737, 1.0f, x_1736);
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
  u_xlat68 = ((x_1754 * x_1756) + x_1759);
  let x_1761 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1761, 0.0f, 1.0f);
  let x_1763 : f32 = u_xlat66;
  u_xlat3.x = (-(x_1763) + 1.0f);
  let x_1767 : f32 = u_xlat68;
  let x_1769 : f32 = u_xlat3.x;
  let x_1771 : f32 = u_xlat66;
  u_xlat66 = ((x_1767 * x_1769) + x_1771);
  let x_1773 : f32 = u_xlat66;
  let x_1775 : f32 = x_394.unity_LightData.z;
  u_xlat66 = (x_1773 * x_1775);
  let x_1777 : f32 = u_xlat66;
  let x_1780 : vec4<f32> = x_28.x_MainLightColor;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1777, x_1777, x_1777) * vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1785 : vec4<f32> = u_xlat2;
  let x_1788 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_1785.x, x_1785.y, x_1785.z), vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1791, 0.0f, 1.0f);
  let x_1793 : f32 = u_xlat66;
  let x_1795 : vec4<f32> = u_xlat3;
  let x_1797 : vec3<f32> = (vec3<f32>(x_1793, x_1793, x_1793) * vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1798 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);
  let x_1800 : vec4<f32> = u_xlat1;
  let x_1802 : vec4<f32> = u_xlat3;
  let x_1804 : vec3<f32> = (vec3<f32>(x_1800.y, x_1800.z, x_1800.w) * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec4<f32> = u_xlat0;
  let x_1809 : vec4<f32> = u_xlat3;
  let x_1811 : vec3<f32> = (vec3<f32>(x_1807.x, x_1807.x, x_1807.x) * vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  let x_1815 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1817 : f32 = x_394.unity_LightData.y;
  u_xlat66 = min(x_1815, x_1817);
  let x_1820 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1820));
  let x_1824 : f32 = u_xlat1.x;
  let x_1827 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1830 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1824 * x_1827) + x_1830);
  let x_1834 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1834, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1847 : u32 = u_xlatu_loop_1;
    let x_1848 : u32 = u_xlatu66;
    if ((x_1847 < x_1848)) {
    } else {
      break;
    }
    let x_1851 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1851 >> 2u);
    let x_1854 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1854 & 3u));
    let x_1857 : u32 = u_xlatu69;
    let x_1860 : vec4<f32> = x_394.unity_LightIndices[bitcast<i32>(x_1857)];
    let x_1870 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1875 : vec4<u32> = indexable[x_1870];
    u_xlat69 = dot(x_1860, bitcast<vec4<f32>>(x_1875));
    let x_1879 : f32 = u_xlat69;
    u_xlati69 = i32(x_1879);
    let x_1881 : vec3<f32> = vs_TEXCOORD1;
    let x_1892 : i32 = u_xlati69;
    let x_1894 : vec4<f32> = x_1891.x_AdditionalLightsPosition[x_1892];
    let x_1897 : i32 = u_xlati69;
    let x_1899 : vec4<f32> = x_1891.x_AdditionalLightsPosition[x_1897];
    let x_1901 : vec3<f32> = ((-(x_1881) * vec3<f32>(x_1894.w, x_1894.w, x_1894.w)) + vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
    let x_1902 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
    let x_1905 : vec4<f32> = u_xlat6;
    let x_1907 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1905.x, x_1905.y, x_1905.z), vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
    let x_1910 : f32 = u_xlat70;
    u_xlat70 = max(x_1910, 0.00006103515625f);
    let x_1914 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1914);
    let x_1916 : f32 = u_xlat71;
    let x_1918 : vec4<f32> = u_xlat6;
    let x_1920 : vec3<f32> = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
    let x_1923 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1923);
    let x_1925 : f32 = u_xlat70;
    let x_1926 : i32 = u_xlati69;
    let x_1928 : f32 = x_1891.x_AdditionalLightsAttenuation[x_1926].x;
    u_xlat70 = (x_1925 * x_1928);
    let x_1930 : f32 = u_xlat70;
    let x_1932 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1930) * x_1932) + 1.0f);
    let x_1935 : f32 = u_xlat70;
    u_xlat70 = max(x_1935, 0.0f);
    let x_1937 : f32 = u_xlat70;
    let x_1938 : f32 = u_xlat70;
    u_xlat70 = (x_1937 * x_1938);
    let x_1940 : f32 = u_xlat70;
    let x_1941 : f32 = u_xlat71;
    u_xlat70 = (x_1940 * x_1941);
    let x_1943 : i32 = u_xlati69;
    let x_1945 : vec4<f32> = x_1891.x_AdditionalLightsSpotDir[x_1943];
    let x_1947 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1945.x, x_1945.y, x_1945.z), vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : f32 = u_xlat71;
    let x_1951 : i32 = u_xlati69;
    let x_1953 : f32 = x_1891.x_AdditionalLightsAttenuation[x_1951].z;
    let x_1955 : i32 = u_xlati69;
    let x_1957 : f32 = x_1891.x_AdditionalLightsAttenuation[x_1955].w;
    u_xlat71 = ((x_1950 * x_1953) + x_1957);
    let x_1959 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1959, 0.0f, 1.0f);
    let x_1961 : f32 = u_xlat71;
    let x_1962 : f32 = u_xlat71;
    u_xlat71 = (x_1961 * x_1962);
    let x_1964 : f32 = u_xlat70;
    let x_1965 : f32 = u_xlat71;
    u_xlat70 = (x_1964 * x_1965);
    let x_1969 : i32 = u_xlati69;
    let x_1971 : f32 = x_159.x_AdditionalShadowParams[x_1969].w;
    u_xlati71 = i32(x_1971);
    let x_1974 : i32 = u_xlati71;
    u_xlatb72 = (x_1974 >= 0i);
    let x_1976 : bool = u_xlatb72;
    if (x_1976) {
      let x_1980 : i32 = u_xlati69;
      let x_1982 : f32 = x_159.x_AdditionalShadowParams[x_1980].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1982, x_1982, x_1982, x_1982))));
      let x_1986 : bool = u_xlatb72;
      if (x_1986) {
        let x_1990 : vec4<f32> = u_xlat6;
        let x_1993 : vec4<f32> = u_xlat6;
        let x_1996 : vec4<bool> = (abs(vec4<f32>(x_1990.z, x_1990.z, x_1990.y, x_1990.z)) >= abs(vec4<f32>(x_1993.x, x_1993.y, x_1993.x, x_1993.x)));
        let x_1998 : vec3<bool> = vec3<bool>(x_1996.x, x_1996.y, x_1996.z);
        let x_1999 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
        let x_2002 : bool = u_xlatb7.y;
        let x_2004 : bool = u_xlatb7.x;
        u_xlatb72 = (x_2002 & x_2004);
        let x_2006 : vec4<f32> = u_xlat6;
        let x_2009 : vec4<bool> = (-(vec4<f32>(x_2006.z, x_2006.y, x_2006.z, x_2006.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2010 : vec3<bool> = vec3<bool>(x_2009.x, x_2009.y, x_2009.w);
        let x_2011 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_2010.x, x_2010.y, x_2011.z, x_2010.z);
        let x_2014 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_2014);
        let x_2019 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_2019);
        let x_2024 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_2024);
        let x_2027 : bool = u_xlatb7.z;
        if (x_2027) {
          let x_2032 : f32 = u_xlat7.y;
          x_2028 = x_2032;
        } else {
          let x_2034 : f32 = u_xlat73;
          x_2028 = x_2034;
        }
        let x_2035 : f32 = x_2028;
        u_xlat29.x = x_2035;
        let x_2038 : bool = u_xlatb72;
        if (x_2038) {
          let x_2043 : f32 = u_xlat7.x;
          x_2039 = x_2043;
        } else {
          let x_2046 : f32 = u_xlat29.x;
          x_2039 = x_2046;
        }
        let x_2047 : f32 = x_2039;
        u_xlat72 = x_2047;
        let x_2048 : i32 = u_xlati69;
        let x_2050 : f32 = x_159.x_AdditionalShadowParams[x_2048].w;
        u_xlat7.x = trunc(x_2050);
        let x_2053 : f32 = u_xlat72;
        let x_2055 : f32 = u_xlat7.x;
        u_xlat72 = (x_2053 + x_2055);
        let x_2057 : f32 = u_xlat72;
        u_xlati71 = i32(x_2057);
      }
      let x_2059 : i32 = u_xlati71;
      u_xlati71 = (x_2059 << bitcast<u32>(2i));
      let x_2061 : vec3<f32> = vs_TEXCOORD1;
      let x_2064 : i32 = u_xlati71;
      let x_2067 : i32 = u_xlati71;
      let x_2071 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2064 + 1i) / 4i)][((x_2067 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2061.y, x_2061.y, x_2061.y, x_2061.y) * x_2071);
      let x_2073 : i32 = u_xlati71;
      let x_2075 : i32 = u_xlati71;
      let x_2078 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2073 / 4i)][(x_2075 % 4i)];
      let x_2079 : vec3<f32> = vs_TEXCOORD1;
      let x_2082 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2078 * vec4<f32>(x_2079.x, x_2079.x, x_2079.x, x_2079.x)) + x_2082);
      let x_2084 : i32 = u_xlati71;
      let x_2087 : i32 = u_xlati71;
      let x_2091 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2084 + 2i) / 4i)][((x_2087 + 2i) % 4i)];
      let x_2092 : vec3<f32> = vs_TEXCOORD1;
      let x_2095 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2091 * vec4<f32>(x_2092.z, x_2092.z, x_2092.z, x_2092.z)) + x_2095);
      let x_2097 : vec4<f32> = u_xlat7;
      let x_2098 : i32 = u_xlati71;
      let x_2101 : i32 = u_xlati71;
      let x_2105 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2098 + 3i) / 4i)][((x_2101 + 3i) % 4i)];
      u_xlat7 = (x_2097 + x_2105);
      let x_2107 : vec4<f32> = u_xlat7;
      let x_2109 : vec4<f32> = u_xlat7;
      let x_2111 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) / vec3<f32>(x_2109.w, x_2109.w, x_2109.w));
      let x_2112 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
      let x_2115 : i32 = u_xlati69;
      let x_2117 : f32 = x_159.x_AdditionalShadowParams[x_2115].y;
      u_xlatb71 = (0.0f < x_2117);
      let x_2119 : bool = u_xlatb71;
      if (x_2119) {
        let x_2122 : i32 = u_xlati69;
        let x_2124 : f32 = x_159.x_AdditionalShadowParams[x_2122].y;
        u_xlatb71 = (1.0f == x_2124);
        let x_2126 : bool = u_xlatb71;
        if (x_2126) {
          let x_2129 : vec4<f32> = u_xlat7;
          let x_2133 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2129.x, x_2129.y, x_2129.x, x_2129.y) + x_2133);
          let x_2136 : vec4<f32> = u_xlat8;
          let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
          let x_2139 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
          let x_2147 : vec3<f32> = txVec30;
          let x_2149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2147.xy, x_2147.z);
          u_xlat9.x = x_2149;
          let x_2152 : vec4<f32> = u_xlat8;
          let x_2153 : vec2<f32> = vec2<f32>(x_2152.z, x_2152.w);
          let x_2155 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
          let x_2162 : vec3<f32> = txVec31;
          let x_2164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
          u_xlat9.y = x_2164;
          let x_2166 : vec4<f32> = u_xlat7;
          let x_2170 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2166.x, x_2166.y, x_2166.x, x_2166.y) + x_2170);
          let x_2173 : vec4<f32> = u_xlat8;
          let x_2174 : vec2<f32> = vec2<f32>(x_2173.x, x_2173.y);
          let x_2176 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2174.x, x_2174.y, x_2176);
          let x_2183 : vec3<f32> = txVec32;
          let x_2185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2183.xy, x_2183.z);
          u_xlat9.z = x_2185;
          let x_2188 : vec4<f32> = u_xlat8;
          let x_2189 : vec2<f32> = vec2<f32>(x_2188.z, x_2188.w);
          let x_2191 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
          let x_2198 : vec3<f32> = txVec33;
          let x_2200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2198.xy, x_2198.z);
          u_xlat9.w = x_2200;
          let x_2202 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2202, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2205 : i32 = u_xlati69;
          let x_2207 : f32 = x_159.x_AdditionalShadowParams[x_2205].y;
          u_xlatb72 = (2.0f == x_2207);
          let x_2209 : bool = u_xlatb72;
          if (x_2209) {
            let x_2212 : vec4<f32> = u_xlat7;
            let x_2216 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2219 : vec2<f32> = ((vec2<f32>(x_2212.x, x_2212.y) * vec2<f32>(x_2216.z, x_2216.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2220 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
            let x_2222 : vec4<f32> = u_xlat8;
            let x_2224 : vec2<f32> = floor(vec2<f32>(x_2222.x, x_2222.y));
            let x_2225 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
            let x_2227 : vec4<f32> = u_xlat7;
            let x_2230 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2233 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2227.x, x_2227.y) * vec2<f32>(x_2230.z, x_2230.w)) + -(vec2<f32>(x_2233.x, x_2233.y)));
            let x_2237 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2237.x, x_2237.x, x_2237.y, x_2237.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2240 : vec4<f32> = u_xlat9;
            let x_2242 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2240.x, x_2240.x, x_2240.z, x_2240.z) * vec4<f32>(x_2242.x, x_2242.x, x_2242.z, x_2242.z));
            let x_2245 : vec4<f32> = u_xlat10;
            let x_2247 : vec2<f32> = (vec2<f32>(x_2245.y, x_2245.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2248 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2247.x, x_2248.y, x_2247.y, x_2248.w);
            let x_2250 : vec4<f32> = u_xlat10;
            let x_2253 : vec2<f32> = u_xlat52;
            let x_2255 : vec2<f32> = ((vec2<f32>(x_2250.x, x_2250.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2253));
            let x_2256 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2259 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2259) + vec2<f32>(1.0f, 1.0f));
            let x_2262 : vec2<f32> = u_xlat52;
            let x_2263 : vec2<f32> = min(x_2262, vec2<f32>(0.0f, 0.0f));
            let x_2264 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat11;
            let x_2269 : vec4<f32> = u_xlat11;
            let x_2272 : vec2<f32> = u_xlat54;
            let x_2273 : vec2<f32> = ((-(vec2<f32>(x_2266.x, x_2266.y)) * vec2<f32>(x_2269.x, x_2269.y)) + x_2272);
            let x_2274 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2273.x, x_2273.y, x_2274.z, x_2274.w);
            let x_2276 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2276, vec2<f32>(0.0f, 0.0f));
            let x_2278 : vec2<f32> = u_xlat52;
            let x_2280 : vec2<f32> = u_xlat52;
            let x_2282 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2278) * x_2280) + vec2<f32>(x_2282.y, x_2282.w));
            let x_2285 : vec4<f32> = u_xlat11;
            let x_2287 : vec2<f32> = (vec2<f32>(x_2285.x, x_2285.y) + vec2<f32>(1.0f, 1.0f));
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
            let x_2290 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2290 + vec2<f32>(1.0f, 1.0f));
            let x_2292 : vec4<f32> = u_xlat10;
            let x_2294 : vec2<f32> = (vec2<f32>(x_2292.x, x_2292.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2294.x, x_2294.y, x_2295.z, x_2295.w);
            let x_2297 : vec2<f32> = u_xlat54;
            let x_2298 : vec2<f32> = (x_2297 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2299 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat11;
            let x_2303 : vec2<f32> = (vec2<f32>(x_2301.x, x_2301.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2304 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2303.x, x_2303.y, x_2304.z, x_2304.w);
            let x_2306 : vec2<f32> = u_xlat52;
            let x_2307 : vec2<f32> = (x_2306 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2308 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
            let x_2310 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2310.y, x_2310.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2314 : f32 = u_xlat11.x;
            u_xlat12.z = x_2314;
            let x_2317 : f32 = u_xlat52.x;
            u_xlat12.w = x_2317;
            let x_2320 : f32 = u_xlat13.x;
            u_xlat10.z = x_2320;
            let x_2323 : f32 = u_xlat9.x;
            u_xlat10.w = x_2323;
            let x_2325 : vec4<f32> = u_xlat10;
            let x_2327 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2325.z, x_2325.w, x_2325.x, x_2325.z) + vec4<f32>(x_2327.z, x_2327.w, x_2327.x, x_2327.z));
            let x_2331 : f32 = u_xlat12.y;
            u_xlat11.z = x_2331;
            let x_2334 : f32 = u_xlat52.y;
            u_xlat11.w = x_2334;
            let x_2337 : f32 = u_xlat10.y;
            u_xlat13.z = x_2337;
            let x_2340 : f32 = u_xlat9.z;
            u_xlat13.w = x_2340;
            let x_2342 : vec4<f32> = u_xlat11;
            let x_2344 : vec4<f32> = u_xlat13;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2342.z, x_2342.y, x_2342.w) + vec3<f32>(x_2344.z, x_2344.y, x_2344.w));
            let x_2347 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2349 : vec4<f32> = u_xlat10;
            let x_2351 : vec4<f32> = u_xlat14;
            let x_2353 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.z, x_2349.w) / vec3<f32>(x_2351.z, x_2351.w, x_2351.y));
            let x_2354 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
            let x_2356 : vec4<f32> = u_xlat10;
            let x_2358 : vec3<f32> = (vec3<f32>(x_2356.x, x_2356.y, x_2356.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2359 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
            let x_2361 : vec4<f32> = u_xlat13;
            let x_2363 : vec4<f32> = u_xlat9;
            let x_2365 : vec3<f32> = (vec3<f32>(x_2361.z, x_2361.y, x_2361.w) / vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
            let x_2368 : vec4<f32> = u_xlat11;
            let x_2370 : vec3<f32> = (vec3<f32>(x_2368.x, x_2368.y, x_2368.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2371 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
            let x_2373 : vec4<f32> = u_xlat10;
            let x_2376 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2378 : vec3<f32> = (vec3<f32>(x_2373.y, x_2373.x, x_2373.z) * vec3<f32>(x_2376.x, x_2376.x, x_2376.x));
            let x_2379 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
            let x_2381 : vec4<f32> = u_xlat11;
            let x_2384 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2386 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.y, x_2381.z) * vec3<f32>(x_2384.y, x_2384.y, x_2384.y));
            let x_2387 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
            let x_2390 : f32 = u_xlat11.x;
            u_xlat10.w = x_2390;
            let x_2392 : vec4<f32> = u_xlat8;
            let x_2395 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2398 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2392.x, x_2392.y, x_2392.x, x_2392.y) * vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y)) + vec4<f32>(x_2398.y, x_2398.w, x_2398.x, x_2398.w));
            let x_2401 : vec4<f32> = u_xlat8;
            let x_2404 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2407 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2401.x, x_2401.y) * vec2<f32>(x_2404.x, x_2404.y)) + vec2<f32>(x_2407.z, x_2407.w));
            let x_2411 : f32 = u_xlat10.y;
            u_xlat11.w = x_2411;
            let x_2413 : vec4<f32> = u_xlat11;
            let x_2414 : vec2<f32> = vec2<f32>(x_2413.y, x_2413.z);
            let x_2415 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2415.x, x_2414.x, x_2415.z, x_2414.y);
            let x_2417 : vec4<f32> = u_xlat8;
            let x_2420 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2423 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2417.x, x_2417.y, x_2417.x, x_2417.y) * vec4<f32>(x_2420.x, x_2420.y, x_2420.x, x_2420.y)) + vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2423.y));
            let x_2426 : vec4<f32> = u_xlat8;
            let x_2429 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2432 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2426.x, x_2426.y, x_2426.x, x_2426.y) * vec4<f32>(x_2429.x, x_2429.y, x_2429.x, x_2429.y)) + vec4<f32>(x_2432.w, x_2432.y, x_2432.w, x_2432.z));
            let x_2435 : vec4<f32> = u_xlat8;
            let x_2438 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2441 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2435.x, x_2435.y, x_2435.x, x_2435.y) * vec4<f32>(x_2438.x, x_2438.y, x_2438.x, x_2438.y)) + vec4<f32>(x_2441.x, x_2441.w, x_2441.z, x_2441.w));
            let x_2444 : vec4<f32> = u_xlat9;
            let x_2446 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2444.x, x_2444.x, x_2444.x, x_2444.y) * vec4<f32>(x_2446.z, x_2446.w, x_2446.y, x_2446.z));
            let x_2449 : vec4<f32> = u_xlat9;
            let x_2451 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2449.y, x_2449.y, x_2449.z, x_2449.z) * x_2451);
            let x_2454 : f32 = u_xlat9.z;
            let x_2456 : f32 = u_xlat14.y;
            u_xlat72 = (x_2454 * x_2456);
            let x_2459 : vec4<f32> = u_xlat12;
            let x_2460 : vec2<f32> = vec2<f32>(x_2459.x, x_2459.y);
            let x_2462 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
            let x_2469 : vec3<f32> = txVec34;
            let x_2471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2469.xy, x_2469.z);
            u_xlat73 = x_2471;
            let x_2473 : vec4<f32> = u_xlat12;
            let x_2474 : vec2<f32> = vec2<f32>(x_2473.z, x_2473.w);
            let x_2476 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
            let x_2483 : vec3<f32> = txVec35;
            let x_2485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2483.xy, x_2483.z);
            u_xlat8.x = x_2485;
            let x_2488 : f32 = u_xlat8.x;
            let x_2490 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2488 * x_2490);
            let x_2494 : f32 = u_xlat15.x;
            let x_2495 : f32 = u_xlat73;
            let x_2498 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2494 * x_2495) + x_2498);
            let x_2501 : vec2<f32> = u_xlat52;
            let x_2503 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
            let x_2510 : vec3<f32> = txVec36;
            let x_2512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
            u_xlat8.x = x_2512;
            let x_2515 : f32 = u_xlat15.z;
            let x_2517 : f32 = u_xlat8.x;
            let x_2519 : f32 = u_xlat73;
            u_xlat73 = ((x_2515 * x_2517) + x_2519);
            let x_2522 : vec4<f32> = u_xlat11;
            let x_2523 : vec2<f32> = vec2<f32>(x_2522.x, x_2522.y);
            let x_2525 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2523.x, x_2523.y, x_2525);
            let x_2532 : vec3<f32> = txVec37;
            let x_2534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2532.xy, x_2532.z);
            u_xlat8.x = x_2534;
            let x_2537 : f32 = u_xlat15.w;
            let x_2539 : f32 = u_xlat8.x;
            let x_2541 : f32 = u_xlat73;
            u_xlat73 = ((x_2537 * x_2539) + x_2541);
            let x_2544 : vec4<f32> = u_xlat13;
            let x_2545 : vec2<f32> = vec2<f32>(x_2544.x, x_2544.y);
            let x_2547 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2545.x, x_2545.y, x_2547);
            let x_2554 : vec3<f32> = txVec38;
            let x_2556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2554.xy, x_2554.z);
            u_xlat8.x = x_2556;
            let x_2559 : f32 = u_xlat16.x;
            let x_2561 : f32 = u_xlat8.x;
            let x_2563 : f32 = u_xlat73;
            u_xlat73 = ((x_2559 * x_2561) + x_2563);
            let x_2566 : vec4<f32> = u_xlat13;
            let x_2567 : vec2<f32> = vec2<f32>(x_2566.z, x_2566.w);
            let x_2569 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2567.x, x_2567.y, x_2569);
            let x_2576 : vec3<f32> = txVec39;
            let x_2578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2576.xy, x_2576.z);
            u_xlat8.x = x_2578;
            let x_2581 : f32 = u_xlat16.y;
            let x_2583 : f32 = u_xlat8.x;
            let x_2585 : f32 = u_xlat73;
            u_xlat73 = ((x_2581 * x_2583) + x_2585);
            let x_2588 : vec4<f32> = u_xlat11;
            let x_2589 : vec2<f32> = vec2<f32>(x_2588.z, x_2588.w);
            let x_2591 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2589.x, x_2589.y, x_2591);
            let x_2598 : vec3<f32> = txVec40;
            let x_2600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2598.xy, x_2598.z);
            u_xlat8.x = x_2600;
            let x_2603 : f32 = u_xlat16.z;
            let x_2605 : f32 = u_xlat8.x;
            let x_2607 : f32 = u_xlat73;
            u_xlat73 = ((x_2603 * x_2605) + x_2607);
            let x_2610 : vec4<f32> = u_xlat10;
            let x_2611 : vec2<f32> = vec2<f32>(x_2610.x, x_2610.y);
            let x_2613 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2611.x, x_2611.y, x_2613);
            let x_2620 : vec3<f32> = txVec41;
            let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
            u_xlat8.x = x_2622;
            let x_2625 : f32 = u_xlat16.w;
            let x_2627 : f32 = u_xlat8.x;
            let x_2629 : f32 = u_xlat73;
            u_xlat73 = ((x_2625 * x_2627) + x_2629);
            let x_2632 : vec4<f32> = u_xlat10;
            let x_2633 : vec2<f32> = vec2<f32>(x_2632.z, x_2632.w);
            let x_2635 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2633.x, x_2633.y, x_2635);
            let x_2642 : vec3<f32> = txVec42;
            let x_2644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2642.xy, x_2642.z);
            u_xlat8.x = x_2644;
            let x_2646 : f32 = u_xlat72;
            let x_2648 : f32 = u_xlat8.x;
            let x_2650 : f32 = u_xlat73;
            u_xlat71 = ((x_2646 * x_2648) + x_2650);
          } else {
            let x_2653 : vec4<f32> = u_xlat7;
            let x_2656 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2659 : vec2<f32> = ((vec2<f32>(x_2653.x, x_2653.y) * vec2<f32>(x_2656.z, x_2656.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2660 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2659.x, x_2659.y, x_2660.z, x_2660.w);
            let x_2662 : vec4<f32> = u_xlat8;
            let x_2664 : vec2<f32> = floor(vec2<f32>(x_2662.x, x_2662.y));
            let x_2665 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2664.x, x_2664.y, x_2665.z, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat7;
            let x_2670 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2673 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2667.x, x_2667.y) * vec2<f32>(x_2670.z, x_2670.w)) + -(vec2<f32>(x_2673.x, x_2673.y)));
            let x_2677 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2677.x, x_2677.x, x_2677.y, x_2677.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2680 : vec4<f32> = u_xlat9;
            let x_2682 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2680.x, x_2680.x, x_2680.z, x_2680.z) * vec4<f32>(x_2682.x, x_2682.x, x_2682.z, x_2682.z));
            let x_2685 : vec4<f32> = u_xlat10;
            let x_2687 : vec2<f32> = (vec2<f32>(x_2685.y, x_2685.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2688.x, x_2687.x, x_2688.z, x_2687.y);
            let x_2690 : vec4<f32> = u_xlat10;
            let x_2693 : vec2<f32> = u_xlat52;
            let x_2695 : vec2<f32> = ((vec2<f32>(x_2690.x, x_2690.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2693));
            let x_2696 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2695.x, x_2696.y, x_2695.y, x_2696.w);
            let x_2698 : vec2<f32> = u_xlat52;
            let x_2700 : vec2<f32> = (-(x_2698) + vec2<f32>(1.0f, 1.0f));
            let x_2701 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
            let x_2703 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2703, vec2<f32>(0.0f, 0.0f));
            let x_2705 : vec2<f32> = u_xlat54;
            let x_2707 : vec2<f32> = u_xlat54;
            let x_2709 : vec4<f32> = u_xlat10;
            let x_2711 : vec2<f32> = ((-(x_2705) * x_2707) + vec2<f32>(x_2709.x, x_2709.y));
            let x_2712 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2714, vec2<f32>(0.0f, 0.0f));
            let x_2717 : vec2<f32> = u_xlat54;
            let x_2719 : vec2<f32> = u_xlat54;
            let x_2721 : vec4<f32> = u_xlat9;
            let x_2723 : vec2<f32> = ((-(x_2717) * x_2719) + vec2<f32>(x_2721.y, x_2721.w));
            let x_2724 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2723.x, x_2724.y, x_2723.y);
            let x_2726 : vec4<f32> = u_xlat10;
            let x_2728 : vec2<f32> = (vec2<f32>(x_2726.x, x_2726.y) + vec2<f32>(2.0f, 2.0f));
            let x_2729 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
            let x_2731 : vec3<f32> = u_xlat31;
            let x_2733 : vec2<f32> = (vec2<f32>(x_2731.x, x_2731.z) + vec2<f32>(2.0f, 2.0f));
            let x_2734 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2734.x, x_2733.x, x_2734.z, x_2733.y);
            let x_2737 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2737 * 0.08163200318813323975f);
            let x_2740 : vec4<f32> = u_xlat9;
            let x_2742 : vec3<f32> = (vec3<f32>(x_2740.z, x_2740.x, x_2740.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
            let x_2745 : vec4<f32> = u_xlat10;
            let x_2747 : vec2<f32> = (vec2<f32>(x_2745.x, x_2745.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2748 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
            let x_2751 : f32 = u_xlat13.y;
            u_xlat12.x = x_2751;
            let x_2753 : vec2<f32> = u_xlat52;
            let x_2756 : vec2<f32> = ((vec2<f32>(x_2753.x, x_2753.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2757 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2757.x, x_2756.x, x_2757.z, x_2756.y);
            let x_2759 : vec2<f32> = u_xlat52;
            let x_2762 : vec2<f32> = ((vec2<f32>(x_2759.x, x_2759.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2763 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2762.x, x_2763.y, x_2762.y, x_2763.w);
            let x_2766 : f32 = u_xlat9.x;
            u_xlat10.y = x_2766;
            let x_2769 : f32 = u_xlat11.y;
            u_xlat10.w = x_2769;
            let x_2771 : vec4<f32> = u_xlat10;
            let x_2772 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2771 + x_2772);
            let x_2774 : vec2<f32> = u_xlat52;
            let x_2777 : vec2<f32> = ((vec2<f32>(x_2774.y, x_2774.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2778 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2778.x, x_2777.x, x_2778.z, x_2777.y);
            let x_2780 : vec2<f32> = u_xlat52;
            let x_2783 : vec2<f32> = ((vec2<f32>(x_2780.y, x_2780.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2784 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2783.x, x_2784.y, x_2783.y, x_2784.w);
            let x_2787 : f32 = u_xlat9.y;
            u_xlat11.y = x_2787;
            let x_2789 : vec4<f32> = u_xlat11;
            let x_2790 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2789 + x_2790);
            let x_2792 : vec4<f32> = u_xlat10;
            let x_2793 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2792 / x_2793);
            let x_2795 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2795 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2798 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2797 / x_2798);
            let x_2800 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2800 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2802 : vec4<f32> = u_xlat10;
            let x_2805 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2802.w, x_2802.x, x_2802.y, x_2802.z) * vec4<f32>(x_2805.x, x_2805.x, x_2805.x, x_2805.x));
            let x_2808 : vec4<f32> = u_xlat11;
            let x_2811 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2808.x, x_2808.w, x_2808.y, x_2808.z) * vec4<f32>(x_2811.y, x_2811.y, x_2811.y, x_2811.y));
            let x_2814 : vec4<f32> = u_xlat10;
            let x_2815 : vec3<f32> = vec3<f32>(x_2814.y, x_2814.z, x_2814.w);
            let x_2816 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2815.x, x_2816.y, x_2815.y, x_2815.z);
            let x_2819 : f32 = u_xlat11.x;
            u_xlat13.y = x_2819;
            let x_2821 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) * vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y)) + vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat8;
            let x_2833 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2830.x, x_2830.y) * vec2<f32>(x_2833.x, x_2833.y)) + vec2<f32>(x_2836.w, x_2836.y));
            let x_2840 : f32 = u_xlat13.y;
            u_xlat10.y = x_2840;
            let x_2843 : f32 = u_xlat11.z;
            u_xlat13.y = x_2843;
            let x_2845 : vec4<f32> = u_xlat8;
            let x_2848 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y) * vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y)) + vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2851.y));
            let x_2854 : vec4<f32> = u_xlat8;
            let x_2857 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2860 : vec4<f32> = u_xlat13;
            let x_2862 : vec2<f32> = ((vec2<f32>(x_2854.x, x_2854.y) * vec2<f32>(x_2857.x, x_2857.y)) + vec2<f32>(x_2860.w, x_2860.y));
            let x_2863 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2866 : f32 = u_xlat13.y;
            u_xlat10.z = x_2866;
            let x_2868 : vec4<f32> = u_xlat8;
            let x_2871 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2874 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y) * vec4<f32>(x_2871.x, x_2871.y, x_2871.x, x_2871.y)) + vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.z));
            let x_2878 : f32 = u_xlat11.w;
            u_xlat13.y = x_2878;
            let x_2880 : vec4<f32> = u_xlat8;
            let x_2883 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) * vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y)) + vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2886.y));
            let x_2890 : vec4<f32> = u_xlat8;
            let x_2893 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2896 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.w, x_2896.y));
            let x_2900 : f32 = u_xlat13.y;
            u_xlat10.w = x_2900;
            let x_2903 : vec4<f32> = u_xlat8;
            let x_2906 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2909 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2903.x, x_2903.y) * vec2<f32>(x_2906.x, x_2906.y)) + vec2<f32>(x_2909.x, x_2909.w));
            let x_2912 : vec4<f32> = u_xlat13;
            let x_2913 : vec3<f32> = vec3<f32>(x_2912.x, x_2912.z, x_2912.w);
            let x_2914 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2913.x, x_2914.y, x_2913.y, x_2913.z);
            let x_2916 : vec4<f32> = u_xlat8;
            let x_2919 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.y) * vec4<f32>(x_2919.x, x_2919.y, x_2919.x, x_2919.y)) + vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2922.y));
            let x_2926 : vec4<f32> = u_xlat8;
            let x_2929 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2932 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2926.x, x_2926.y) * vec2<f32>(x_2929.x, x_2929.y)) + vec2<f32>(x_2932.w, x_2932.y));
            let x_2936 : f32 = u_xlat10.x;
            u_xlat11.x = x_2936;
            let x_2938 : vec4<f32> = u_xlat8;
            let x_2941 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat11;
            let x_2946 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(x_2941.x, x_2941.y)) + vec2<f32>(x_2944.x, x_2944.y));
            let x_2947 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2946.x, x_2946.y, x_2947.z, x_2947.w);
            let x_2950 : vec4<f32> = u_xlat9;
            let x_2952 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2950.x, x_2950.x, x_2950.x, x_2950.x) * x_2952);
            let x_2955 : vec4<f32> = u_xlat9;
            let x_2957 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2955.y, x_2955.y, x_2955.y, x_2955.y) * x_2957);
            let x_2960 : vec4<f32> = u_xlat9;
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2960.z, x_2960.z, x_2960.z, x_2960.z) * x_2962);
            let x_2964 : vec4<f32> = u_xlat9;
            let x_2966 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2964.w, x_2964.w, x_2964.w, x_2964.w) * x_2966);
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2970 : vec2<f32> = vec2<f32>(x_2969.x, x_2969.y);
            let x_2972 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2970.x, x_2970.y, x_2972);
            let x_2979 : vec3<f32> = txVec43;
            let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
            u_xlat72 = x_2981;
            let x_2983 : vec4<f32> = u_xlat14;
            let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
            let x_2986 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec44;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat73 = x_2995;
            let x_2996 : f32 = u_xlat73;
            let x_2998 : f32 = u_xlat19.y;
            u_xlat73 = (x_2996 * x_2998);
            let x_3001 : f32 = u_xlat19.x;
            let x_3002 : f32 = u_xlat72;
            let x_3004 : f32 = u_xlat73;
            u_xlat72 = ((x_3001 * x_3002) + x_3004);
            let x_3007 : vec2<f32> = u_xlat52;
            let x_3009 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec45;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat73 = x_3018;
            let x_3020 : f32 = u_xlat19.z;
            let x_3021 : f32 = u_xlat73;
            let x_3023 : f32 = u_xlat72;
            u_xlat72 = ((x_3020 * x_3021) + x_3023);
            let x_3026 : vec4<f32> = u_xlat17;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.x, x_3026.y);
            let x_3029 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec46;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat73 = x_3038;
            let x_3040 : f32 = u_xlat19.w;
            let x_3041 : f32 = u_xlat73;
            let x_3043 : f32 = u_xlat72;
            u_xlat72 = ((x_3040 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat15;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.x, x_3046.y);
            let x_3049 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec47;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat73 = x_3058;
            let x_3060 : f32 = u_xlat20.x;
            let x_3061 : f32 = u_xlat73;
            let x_3063 : f32 = u_xlat72;
            u_xlat72 = ((x_3060 * x_3061) + x_3063);
            let x_3066 : vec4<f32> = u_xlat15;
            let x_3067 : vec2<f32> = vec2<f32>(x_3066.z, x_3066.w);
            let x_3069 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec48;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat73 = x_3078;
            let x_3080 : f32 = u_xlat20.y;
            let x_3081 : f32 = u_xlat73;
            let x_3083 : f32 = u_xlat72;
            u_xlat72 = ((x_3080 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat16;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec49;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat73 = x_3098;
            let x_3100 : f32 = u_xlat20.z;
            let x_3101 : f32 = u_xlat73;
            let x_3103 : f32 = u_xlat72;
            u_xlat72 = ((x_3100 * x_3101) + x_3103);
            let x_3106 : vec4<f32> = u_xlat17;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.z, x_3106.w);
            let x_3109 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec50;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat73 = x_3118;
            let x_3120 : f32 = u_xlat20.w;
            let x_3121 : f32 = u_xlat73;
            let x_3123 : f32 = u_xlat72;
            u_xlat72 = ((x_3120 * x_3121) + x_3123);
            let x_3126 : vec4<f32> = u_xlat18;
            let x_3127 : vec2<f32> = vec2<f32>(x_3126.x, x_3126.y);
            let x_3129 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
            let x_3136 : vec3<f32> = txVec51;
            let x_3138 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
            u_xlat73 = x_3138;
            let x_3140 : f32 = u_xlat21.x;
            let x_3141 : f32 = u_xlat73;
            let x_3143 : f32 = u_xlat72;
            u_xlat72 = ((x_3140 * x_3141) + x_3143);
            let x_3146 : vec4<f32> = u_xlat18;
            let x_3147 : vec2<f32> = vec2<f32>(x_3146.z, x_3146.w);
            let x_3149 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3147.x, x_3147.y, x_3149);
            let x_3156 : vec3<f32> = txVec52;
            let x_3158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3156.xy, x_3156.z);
            u_xlat73 = x_3158;
            let x_3160 : f32 = u_xlat21.y;
            let x_3161 : f32 = u_xlat73;
            let x_3163 : f32 = u_xlat72;
            u_xlat72 = ((x_3160 * x_3161) + x_3163);
            let x_3166 : vec2<f32> = u_xlat32;
            let x_3168 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec53;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat73 = x_3177;
            let x_3179 : f32 = u_xlat21.z;
            let x_3180 : f32 = u_xlat73;
            let x_3182 : f32 = u_xlat72;
            u_xlat72 = ((x_3179 * x_3180) + x_3182);
            let x_3185 : vec2<f32> = u_xlat60;
            let x_3187 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
            let x_3194 : vec3<f32> = txVec54;
            let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
            u_xlat73 = x_3196;
            let x_3198 : f32 = u_xlat21.w;
            let x_3199 : f32 = u_xlat73;
            let x_3201 : f32 = u_xlat72;
            u_xlat72 = ((x_3198 * x_3199) + x_3201);
            let x_3204 : vec4<f32> = u_xlat13;
            let x_3205 : vec2<f32> = vec2<f32>(x_3204.x, x_3204.y);
            let x_3207 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
            let x_3214 : vec3<f32> = txVec55;
            let x_3216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
            u_xlat73 = x_3216;
            let x_3218 : f32 = u_xlat9.x;
            let x_3219 : f32 = u_xlat73;
            let x_3221 : f32 = u_xlat72;
            u_xlat72 = ((x_3218 * x_3219) + x_3221);
            let x_3224 : vec4<f32> = u_xlat13;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.z, x_3224.w);
            let x_3227 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec56;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat73 = x_3236;
            let x_3238 : f32 = u_xlat9.y;
            let x_3239 : f32 = u_xlat73;
            let x_3241 : f32 = u_xlat72;
            u_xlat72 = ((x_3238 * x_3239) + x_3241);
            let x_3244 : vec2<f32> = u_xlat55;
            let x_3246 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec57;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat73 = x_3255;
            let x_3257 : f32 = u_xlat9.z;
            let x_3258 : f32 = u_xlat73;
            let x_3260 : f32 = u_xlat72;
            u_xlat72 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec4<f32> = u_xlat8;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.x, x_3263.y);
            let x_3266 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec58;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat73 = x_3275;
            let x_3277 : f32 = u_xlat9.w;
            let x_3278 : f32 = u_xlat73;
            let x_3280 : f32 = u_xlat72;
            u_xlat71 = ((x_3277 * x_3278) + x_3280);
          }
        }
      } else {
        let x_3284 : vec4<f32> = u_xlat7;
        let x_3285 : vec2<f32> = vec2<f32>(x_3284.x, x_3284.y);
        let x_3287 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
        let x_3294 : vec3<f32> = txVec59;
        let x_3296 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3294.xy, x_3294.z);
        u_xlat71 = x_3296;
      }
      let x_3297 : i32 = u_xlati69;
      let x_3299 : f32 = x_159.x_AdditionalShadowParams[x_3297].x;
      u_xlat72 = (1.0f + -(x_3299));
      let x_3302 : f32 = u_xlat71;
      let x_3303 : i32 = u_xlati69;
      let x_3305 : f32 = x_159.x_AdditionalShadowParams[x_3303].x;
      let x_3307 : f32 = u_xlat72;
      u_xlat71 = ((x_3302 * x_3305) + x_3307);
      let x_3310 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3310);
      let x_3313 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3313 >= 1.0f);
      let x_3316 : bool = u_xlatb72;
      let x_3318 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3316 | x_3318);
      let x_3320 : bool = u_xlatb72;
      let x_3321 : f32 = u_xlat71;
      u_xlat71 = select(x_3321, 1.0f, x_3320);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3324 : f32 = u_xlat71;
    u_xlat72 = (-(x_3324) + 1.0f);
    let x_3328 : f32 = u_xlat1.x;
    let x_3329 : f32 = u_xlat72;
    let x_3331 : f32 = u_xlat71;
    u_xlat71 = ((x_3328 * x_3329) + x_3331);
    let x_3333 : f32 = u_xlat70;
    let x_3334 : f32 = u_xlat71;
    u_xlat70 = (x_3333 * x_3334);
    let x_3336 : f32 = u_xlat70;
    let x_3338 : i32 = u_xlati69;
    let x_3340 : vec4<f32> = x_1891.x_AdditionalLightsColor[x_3338];
    let x_3342 : vec3<f32> = (vec3<f32>(x_3336, x_3336, x_3336) * vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3342.x, x_3342.y, x_3342.z, x_3343.w);
    let x_3345 : vec4<f32> = u_xlat2;
    let x_3347 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_3345.x, x_3345.y, x_3345.z), vec3<f32>(x_3347.x, x_3347.y, x_3347.z));
    let x_3350 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3350, 0.0f, 1.0f);
    let x_3352 : f32 = u_xlat69;
    let x_3354 : vec4<f32> = u_xlat7;
    let x_3356 : vec3<f32> = (vec3<f32>(x_3352, x_3352, x_3352) * vec3<f32>(x_3354.x, x_3354.y, x_3354.z));
    let x_3357 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3356.x, x_3356.y, x_3356.z, x_3357.w);
    let x_3359 : vec4<f32> = u_xlat1;
    let x_3361 : vec4<f32> = u_xlat6;
    let x_3363 : vec3<f32> = (vec3<f32>(x_3359.y, x_3359.z, x_3359.w) * vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
    let x_3364 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);
    let x_3366 : vec4<f32> = u_xlat6;
    let x_3368 : vec4<f32> = u_xlat0;
    let x_3371 : vec4<f32> = u_xlat5;
    let x_3373 : vec3<f32> = ((vec3<f32>(x_3366.x, x_3366.y, x_3366.z) * vec3<f32>(x_3368.x, x_3368.x, x_3368.x)) + vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
    let x_3374 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3374.w);

    continuing {
      let x_3376 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3376 + bitcast<u32>(1i));
    }
  }
  let x_3378 : vec4<f32> = u_xlat4;
  let x_3380 : vec4<f32> = u_xlat1;
  let x_3383 : vec4<f32> = u_xlat3;
  let x_3385 : vec3<f32> = ((vec3<f32>(x_3378.x, x_3378.y, x_3378.z) * vec3<f32>(x_3380.y, x_3380.z, x_3380.w)) + vec3<f32>(x_3383.x, x_3383.y, x_3383.z));
  let x_3386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3385.x, x_3385.y, x_3385.z, x_3386.w);
  let x_3388 : vec4<f32> = u_xlat5;
  let x_3390 : vec4<f32> = u_xlat1;
  let x_3392 : vec3<f32> = (vec3<f32>(x_3388.x, x_3388.y, x_3388.z) + vec3<f32>(x_3390.x, x_3390.y, x_3390.z));
  let x_3393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3392.x, x_3392.y, x_3392.z, x_3393.w);
  let x_3395 : f32 = u_xlat22;
  let x_3396 : f32 = u_xlat22;
  u_xlat22 = (x_3395 * -(x_3396));
  let x_3399 : f32 = u_xlat22;
  u_xlat22 = exp2(x_3399);
  let x_3401 : vec4<f32> = u_xlat1;
  let x_3404 : vec4<f32> = x_28.unity_FogColor;
  let x_3407 : vec3<f32> = (vec3<f32>(x_3401.x, x_3401.y, x_3401.z) + -(vec3<f32>(x_3404.x, x_3404.y, x_3404.z)));
  let x_3408 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3407.x, x_3407.y, x_3407.z, x_3408.w);
  let x_3412 : f32 = u_xlat22;
  let x_3414 : vec4<f32> = u_xlat1;
  let x_3418 : vec4<f32> = x_28.unity_FogColor;
  let x_3420 : vec3<f32> = ((vec3<f32>(x_3412, x_3412, x_3412) * vec3<f32>(x_3414.x, x_3414.y, x_3414.z)) + vec3<f32>(x_3418.x, x_3418.y, x_3418.z));
  let x_3421 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3421.w);
  let x_3424 : f32 = x_42.x_Surface;
  u_xlatb22 = (x_3424 == 1.0f);
  let x_3426 : bool = u_xlatb22;
  let x_3427 : bool = u_xlatb44;
  u_xlatb22 = (x_3426 | x_3427);
  let x_3429 : bool = u_xlatb22;
  if (x_3429) {
    let x_3434 : f32 = u_xlat0.x;
    x_3430 = x_3434;
  } else {
    x_3430 = 1.0f;
  }
  let x_3436 : f32 = x_3430;
  SV_Target0.w = x_3436;
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


