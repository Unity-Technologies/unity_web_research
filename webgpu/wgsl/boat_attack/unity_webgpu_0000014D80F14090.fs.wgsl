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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb66 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(2) var<uniform> x_1742 : UnityPerDraw;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1859 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1996 : f32;
  var x_2007 : f32;
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
  var x_3397 : f32;
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
  let x_144 : f32 = u_xlat22;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_150 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_187 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_224 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_224 < x_227);
  let x_230 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_278 : f32 = u_xlat22;
  u_xlat22 = (-(x_278) + 4.0f);
  let x_283 : f32 = u_xlat22;
  u_xlatu22 = u32(x_283);
  let x_287 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : i32 = u_xlati22;
  let x_295 : i32 = u_xlati22;
  let x_299 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_292 + 1i) / 4i)][((x_295 + 1i) % 4i)];
  let x_301 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati22;
  let x_306 : i32 = u_xlati22;
  let x_309 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : i32 = u_xlati22;
  let x_322 : i32 = u_xlati22;
  let x_326 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_319 + 2i) / 4i)][((x_322 + 2i) % 4i)];
  let x_328 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : i32 = u_xlati22;
  let x_341 : i32 = u_xlati22;
  let x_345 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_338 + 3i) / 4i)][((x_341 + 3i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : f32 = vs_TEXCOORD1.y;
  let x_355 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat22 = (x_352 * x_355);
  let x_358 : f32 = x_28.unity_MatrixV[0i].z;
  let x_360 : f32 = vs_TEXCOORD1.x;
  let x_362 : f32 = u_xlat22;
  u_xlat22 = ((x_358 * x_360) + x_362);
  let x_365 : f32 = x_28.unity_MatrixV[2i].z;
  let x_367 : f32 = vs_TEXCOORD1.z;
  let x_369 : f32 = u_xlat22;
  u_xlat22 = ((x_365 * x_367) + x_369);
  let x_371 : f32 = u_xlat22;
  let x_373 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat22 = (x_371 + x_373);
  let x_375 : f32 = u_xlat22;
  let x_379 : f32 = x_28.x_ProjectionParams.y;
  u_xlat22 = (-(x_375) + -(x_379));
  let x_382 : f32 = u_xlat22;
  u_xlat22 = max(x_382, 0.0f);
  let x_384 : f32 = u_xlat22;
  let x_387 : f32 = x_28.unity_FogParams.x;
  u_xlat22 = (x_384 * x_387);
  let x_395 : vec2<f32> = vs_TEXCOORD7;
  let x_397 : f32 = x_28.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_395, x_397);
  u_xlat4 = x_398;
  let x_403 : vec2<f32> = vs_TEXCOORD7;
  let x_405 : f32 = x_28.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_403, x_405);
  let x_407 : vec3<f32> = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec3<f32> = u_xlat2;
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(x_417, vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : f32 = u_xlat66;
  u_xlat66 = (x_421 + 0.5f);
  let x_423 : f32 = u_xlat66;
  let x_425 : vec4<f32> = u_xlat5;
  let x_427 : vec3<f32> = (vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat4.w;
  u_xlat66 = max(x_431, 0.00009999999747378752f);
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : f32 = u_xlat66;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) / vec3<f32>(x_435, x_435, x_435));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_443 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_443);
  let x_445 : bool = u_xlatb66;
  if (x_445) {
    let x_449 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb66 = (x_449 == 1.0f);
    let x_451 : bool = u_xlatb66;
    if (x_451) {
      let x_454 : vec4<f32> = u_xlat3;
      let x_457 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + x_457);
      let x_461 : vec4<f32> = u_xlat5;
      let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
      let x_464 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
      let x_476 : vec3<f32> = txVec0;
      let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
      u_xlat6.x = x_478;
      let x_481 : vec4<f32> = u_xlat5;
      let x_482 : vec2<f32> = vec2<f32>(x_481.z, x_481.w);
      let x_484 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_491 : vec3<f32> = txVec1;
      let x_493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_491.xy, x_491.z);
      u_xlat6.y = x_493;
      let x_495 : vec4<f32> = u_xlat3;
      let x_498 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_495.x, x_495.y, x_495.x, x_495.y) + x_498);
      let x_501 : vec4<f32> = u_xlat5;
      let x_502 : vec2<f32> = vec2<f32>(x_501.x, x_501.y);
      let x_504 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec2;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_511.xy, x_511.z);
      u_xlat6.z = x_513;
      let x_516 : vec4<f32> = u_xlat5;
      let x_517 : vec2<f32> = vec2<f32>(x_516.z, x_516.w);
      let x_519 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_517.x, x_517.y, x_519);
      let x_526 : vec3<f32> = txVec3;
      let x_528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_526.xy, x_526.z);
      u_xlat6.w = x_528;
      let x_530 : vec4<f32> = u_xlat6;
      u_xlat66 = dot(x_530, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_537 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb1 = (x_537 == 2.0f);
      let x_539 : bool = u_xlatb1;
      if (x_539) {
        let x_542 : vec4<f32> = u_xlat3;
        let x_545 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_549 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(0.5f, 0.5f));
        let x_550 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat5;
        let x_554 : vec2<f32> = floor(vec2<f32>(x_552.x, x_552.y));
        let x_555 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_559 : vec4<f32> = u_xlat3;
        let x_562 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_562.z, x_562.w)) + -(vec2<f32>(x_565.x, x_565.y)));
        let x_569 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_569.x, x_569.x, x_569.y, x_569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_574 : vec4<f32> = u_xlat6;
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_574.x, x_574.x, x_574.z, x_574.z) * vec4<f32>(x_576.x, x_576.x, x_576.z, x_576.z));
        let x_579 : vec4<f32> = u_xlat7;
        let x_583 : vec2<f32> = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_583.x, x_584.y, x_583.y, x_584.w);
        let x_586 : vec4<f32> = u_xlat7;
        let x_589 : vec2<f32> = u_xlat49;
        let x_591 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.z) * vec2<f32>(0.5f, 0.5f)) + -(x_589));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_595) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec2<f32> = u_xlat49;
        let x_602 : vec2<f32> = min(x_600, vec2<f32>(0.0f, 0.0f));
        let x_603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat8;
        let x_608 : vec4<f32> = u_xlat8;
        let x_611 : vec2<f32> = u_xlat51;
        let x_612 : vec2<f32> = ((-(vec2<f32>(x_605.x, x_605.y)) * vec2<f32>(x_608.x, x_608.y)) + x_611);
        let x_613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_615 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_615, vec2<f32>(0.0f, 0.0f));
        let x_617 : vec2<f32> = u_xlat49;
        let x_619 : vec2<f32> = u_xlat49;
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_617) * x_619) + vec2<f32>(x_621.y, x_621.w));
        let x_624 : vec4<f32> = u_xlat8;
        let x_626 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) + vec2<f32>(1.0f, 1.0f));
        let x_627 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_629 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_629 + vec2<f32>(1.0f, 1.0f));
        let x_632 : vec4<f32> = u_xlat7;
        let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec2<f32> = u_xlat51;
        let x_640 : vec2<f32> = (x_639 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat8;
        let x_645 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : vec2<f32> = u_xlat49;
        let x_650 : vec2<f32> = (x_649 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_651 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_653.y, x_653.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_657 : f32 = u_xlat8.x;
        u_xlat9.z = x_657;
        let x_660 : f32 = u_xlat49.x;
        u_xlat9.w = x_660;
        let x_663 : f32 = u_xlat10.x;
        u_xlat7.z = x_663;
        let x_666 : f32 = u_xlat6.x;
        u_xlat7.w = x_666;
        let x_669 : vec4<f32> = u_xlat7;
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_669.z, x_669.w, x_669.x, x_669.z) + vec4<f32>(x_671.z, x_671.w, x_671.x, x_671.z));
        let x_675 : f32 = u_xlat9.y;
        u_xlat8.z = x_675;
        let x_678 : f32 = u_xlat49.y;
        u_xlat8.w = x_678;
        let x_681 : f32 = u_xlat7.y;
        u_xlat10.z = x_681;
        let x_684 : f32 = u_xlat6.z;
        u_xlat10.w = x_684;
        let x_686 : vec4<f32> = u_xlat8;
        let x_688 : vec4<f32> = u_xlat10;
        let x_690 : vec3<f32> = (vec3<f32>(x_686.z, x_686.y, x_686.w) + vec3<f32>(x_688.z, x_688.y, x_688.w));
        let x_691 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat7;
        let x_695 : vec4<f32> = u_xlat11;
        let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.z, x_693.w) / vec3<f32>(x_695.z, x_695.w, x_695.y));
        let x_698 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat7;
        let x_705 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat10;
        let x_710 : vec4<f32> = u_xlat6;
        let x_712 : vec3<f32> = (vec3<f32>(x_708.z, x_708.y, x_708.w) / vec3<f32>(x_710.x, x_710.y, x_710.z));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat8;
        let x_717 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat7;
        let x_723 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_725 : vec3<f32> = (vec3<f32>(x_720.y, x_720.x, x_720.z) * vec3<f32>(x_723.x, x_723.x, x_723.x));
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_731 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_733 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_731.y, x_731.y, x_731.y));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_737 : f32 = u_xlat8.x;
        u_xlat7.w = x_737;
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.y, x_745.w, x_745.x, x_745.w));
        let x_748 : vec4<f32> = u_xlat5;
        let x_751 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_751.x, x_751.y)) + vec2<f32>(x_754.z, x_754.w));
        let x_758 : f32 = u_xlat7.y;
        u_xlat8.w = x_758;
        let x_760 : vec4<f32> = u_xlat8;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_764 : vec4<f32> = u_xlat5;
        let x_767 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.y));
        let x_773 : vec4<f32> = u_xlat5;
        let x_776 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.w, x_779.y, x_779.w, x_779.z));
        let x_782 : vec4<f32> = u_xlat5;
        let x_785 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) * vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y)) + vec4<f32>(x_788.x, x_788.w, x_788.z, x_788.w));
        let x_792 : vec4<f32> = u_xlat6;
        let x_794 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_792.x, x_792.x, x_792.x, x_792.y) * vec4<f32>(x_794.z, x_794.w, x_794.y, x_794.z));
        let x_798 : vec4<f32> = u_xlat6;
        let x_800 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_798.y, x_798.y, x_798.z, x_798.z) * x_800);
        let x_803 : f32 = u_xlat6.z;
        let x_805 : f32 = u_xlat11.y;
        u_xlat1.x = (x_803 * x_805);
        let x_809 : vec4<f32> = u_xlat9;
        let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
        let x_812 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_810.x, x_810.y, x_812);
        let x_820 : vec3<f32> = txVec4;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat68 = x_822;
        let x_824 : vec4<f32> = u_xlat9;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_835 : vec3<f32> = txVec5;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat69 = x_837;
        let x_838 : f32 = u_xlat69;
        let x_840 : f32 = u_xlat12.y;
        u_xlat69 = (x_838 * x_840);
        let x_843 : f32 = u_xlat12.x;
        let x_844 : f32 = u_xlat68;
        let x_846 : f32 = u_xlat69;
        u_xlat68 = ((x_843 * x_844) + x_846);
        let x_849 : vec2<f32> = u_xlat49;
        let x_851 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec6;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat69 = x_860;
        let x_862 : f32 = u_xlat12.z;
        let x_863 : f32 = u_xlat69;
        let x_865 : f32 = u_xlat68;
        u_xlat68 = ((x_862 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec7;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat69 = x_880;
        let x_882 : f32 = u_xlat12.w;
        let x_883 : f32 = u_xlat69;
        let x_885 : f32 = u_xlat68;
        u_xlat68 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat10;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec8;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat69 = x_900;
        let x_902 : f32 = u_xlat13.x;
        let x_903 : f32 = u_xlat69;
        let x_905 : f32 = u_xlat68;
        u_xlat68 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat10;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec9;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat69 = x_920;
        let x_922 : f32 = u_xlat13.y;
        let x_923 : f32 = u_xlat69;
        let x_925 : f32 = u_xlat68;
        u_xlat68 = ((x_922 * x_923) + x_925);
        let x_928 : vec4<f32> = u_xlat8;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec10;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_938.xy, x_938.z);
        u_xlat69 = x_940;
        let x_942 : f32 = u_xlat13.z;
        let x_943 : f32 = u_xlat69;
        let x_945 : f32 = u_xlat68;
        u_xlat68 = ((x_942 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.y);
        let x_951 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec11;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
        u_xlat69 = x_960;
        let x_962 : f32 = u_xlat13.w;
        let x_963 : f32 = u_xlat69;
        let x_965 : f32 = u_xlat68;
        u_xlat68 = ((x_962 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat7;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec12;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_978.xy, x_978.z);
        u_xlat69 = x_980;
        let x_982 : f32 = u_xlat1.x;
        let x_983 : f32 = u_xlat69;
        let x_985 : f32 = u_xlat68;
        u_xlat66 = ((x_982 * x_983) + x_985);
      } else {
        let x_988 : vec4<f32> = u_xlat3;
        let x_991 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_994 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_991.z, x_991.w)) + vec2<f32>(0.5f, 0.5f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat5;
        let x_999 : vec2<f32> = floor(vec2<f32>(x_997.x, x_997.y));
        let x_1000 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_999.x, x_999.y, x_1000.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat3;
        let x_1005 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.z, x_1005.w)) + -(vec2<f32>(x_1008.x, x_1008.y)));
        let x_1012 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1012.x, x_1012.x, x_1012.y, x_1012.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1017 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z) * vec4<f32>(x_1017.x, x_1017.x, x_1017.z, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1020.y, x_1020.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1030 : vec2<f32> = u_xlat49;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1030));
        let x_1033 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1032.x, x_1033.y, x_1032.y, x_1033.w);
        let x_1035 : vec2<f32> = u_xlat49;
        let x_1037 : vec2<f32> = (-(x_1035) + vec2<f32>(1.0f, 1.0f));
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1040 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1040, vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec2<f32> = u_xlat51;
        let x_1044 : vec2<f32> = u_xlat51;
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1048 : vec2<f32> = ((-(x_1042) * x_1044) + vec2<f32>(x_1046.x, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1051, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat51;
        let x_1056 : vec2<f32> = u_xlat51;
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.y, x_1058.w));
        let x_1061 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1060.x, x_1061.y, x_1060.y);
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1063.x, x_1063.y) + vec2<f32>(2.0f, 2.0f));
        let x_1067 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec3<f32> = u_xlat28;
        let x_1071 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.z) + vec2<f32>(2.0f, 2.0f));
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1072.x, x_1071.x, x_1072.z, x_1071.y);
        let x_1075 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1075 * 0.08163200318813323975f);
        let x_1079 : vec4<f32> = u_xlat6;
        let x_1082 : vec3<f32> = (vec3<f32>(x_1079.z, x_1079.x, x_1079.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1089 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1092 : f32 = u_xlat10.y;
        u_xlat9.x = x_1092;
        let x_1094 : vec2<f32> = u_xlat49;
        let x_1101 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1101.x, x_1102.z, x_1101.y);
        let x_1104 : vec2<f32> = u_xlat49;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1109.y, x_1108.y, x_1109.w);
        let x_1112 : f32 = u_xlat6.x;
        u_xlat7.y = x_1112;
        let x_1115 : f32 = u_xlat8.y;
        u_xlat7.w = x_1115;
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1117 + x_1118);
        let x_1120 : vec2<f32> = u_xlat49;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1120.y, x_1120.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1124 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1124.x, x_1123.x, x_1124.z, x_1123.y);
        let x_1126 : vec2<f32> = u_xlat49;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.y, x_1126.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1130.y, x_1129.y, x_1130.w);
        let x_1133 : f32 = u_xlat6.y;
        u_xlat8.y = x_1133;
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1136 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1135 + x_1136);
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1138 / x_1139);
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1141 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1148 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1147 / x_1148);
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1150 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1155 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1152.w, x_1152.x, x_1152.y, x_1152.z) * vec4<f32>(x_1155.x, x_1155.x, x_1155.x, x_1155.x));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1161 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1158.x, x_1158.w, x_1158.y, x_1158.z) * vec4<f32>(x_1161.y, x_1161.y, x_1161.y, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1165 : vec3<f32> = vec3<f32>(x_1164.y, x_1164.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1165.z);
        let x_1169 : f32 = u_xlat8.x;
        u_xlat10.y = x_1169;
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1174 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1190 : f32 = u_xlat10.y;
        u_xlat7.y = x_1190;
        let x_1193 : f32 = u_xlat8.z;
        u_xlat10.y = x_1193;
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1216 : f32 = u_xlat10.y;
        u_xlat7.z = x_1216;
        let x_1219 : vec4<f32> = u_xlat5;
        let x_1222 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) * vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y)) + vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.z));
        let x_1229 : f32 = u_xlat8.w;
        u_xlat10.y = x_1229;
        let x_1232 : vec4<f32> = u_xlat5;
        let x_1235 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.y));
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(x_1245.x, x_1245.y)) + vec2<f32>(x_1248.w, x_1248.y));
        let x_1252 : f32 = u_xlat10.y;
        u_xlat7.w = x_1252;
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.x, x_1261.w));
        let x_1264 : vec4<f32> = u_xlat10;
        let x_1265 : vec3<f32> = vec3<f32>(x_1264.x, x_1264.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1265.x, x_1266.y, x_1265.y, x_1265.z);
        let x_1268 : vec4<f32> = u_xlat5;
        let x_1271 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1274.y));
        let x_1278 : vec4<f32> = u_xlat5;
        let x_1281 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.w, x_1284.y));
        let x_1288 : f32 = u_xlat7.x;
        u_xlat8.x = x_1288;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1298 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.x, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1302.x, x_1302.x, x_1302.x, x_1302.x) * x_1304);
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y) * x_1309);
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1314 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1312.z, x_1312.z, x_1312.z, x_1312.z) * x_1314);
        let x_1316 : vec4<f32> = u_xlat6;
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1316.w, x_1316.w, x_1316.w, x_1316.w) * x_1318);
        let x_1321 : vec4<f32> = u_xlat11;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.x, x_1321.y);
        let x_1324 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec13;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat1.x = x_1333;
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec14;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat68 = x_1348;
        let x_1349 : f32 = u_xlat68;
        let x_1351 : f32 = u_xlat16.y;
        u_xlat68 = (x_1349 * x_1351);
        let x_1354 : f32 = u_xlat16.x;
        let x_1356 : f32 = u_xlat1.x;
        let x_1358 : f32 = u_xlat68;
        u_xlat1.x = ((x_1354 * x_1356) + x_1358);
        let x_1362 : vec2<f32> = u_xlat49;
        let x_1364 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec15;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat68 = x_1373;
        let x_1375 : f32 = u_xlat16.z;
        let x_1376 : f32 = u_xlat68;
        let x_1379 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1375 * x_1376) + x_1379);
        let x_1383 : vec4<f32> = u_xlat14;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec16;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat68 = x_1395;
        let x_1397 : f32 = u_xlat16.w;
        let x_1398 : f32 = u_xlat68;
        let x_1401 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1397 * x_1398) + x_1401);
        let x_1405 : vec4<f32> = u_xlat12;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec17;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat68 = x_1417;
        let x_1419 : f32 = u_xlat17.x;
        let x_1420 : f32 = u_xlat68;
        let x_1423 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1419 * x_1420) + x_1423);
        let x_1427 : vec4<f32> = u_xlat12;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec18;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat68 = x_1439;
        let x_1441 : f32 = u_xlat17.y;
        let x_1442 : f32 = u_xlat68;
        let x_1445 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1441 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat13;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec19;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat68 = x_1461;
        let x_1463 : f32 = u_xlat17.z;
        let x_1464 : f32 = u_xlat68;
        let x_1467 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1463 * x_1464) + x_1467);
        let x_1471 : vec4<f32> = u_xlat14;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec20;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat68 = x_1483;
        let x_1485 : f32 = u_xlat17.w;
        let x_1486 : f32 = u_xlat68;
        let x_1489 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1485 * x_1486) + x_1489);
        let x_1493 : vec4<f32> = u_xlat15;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec21;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat68 = x_1505;
        let x_1507 : f32 = u_xlat18.x;
        let x_1508 : f32 = u_xlat68;
        let x_1511 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1507 * x_1508) + x_1511);
        let x_1515 : vec4<f32> = u_xlat15;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec22;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat68 = x_1527;
        let x_1529 : f32 = u_xlat18.y;
        let x_1530 : f32 = u_xlat68;
        let x_1533 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1529 * x_1530) + x_1533);
        let x_1537 : vec2<f32> = u_xlat29;
        let x_1539 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec23;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1546.xy, x_1546.z);
        u_xlat68 = x_1548;
        let x_1550 : f32 = u_xlat18.z;
        let x_1551 : f32 = u_xlat68;
        let x_1554 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec2<f32> = u_xlat57;
        let x_1560 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec24;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat68 = x_1569;
        let x_1571 : f32 = u_xlat18.w;
        let x_1572 : f32 = u_xlat68;
        let x_1575 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1571 * x_1572) + x_1575);
        let x_1579 : vec4<f32> = u_xlat10;
        let x_1580 : vec2<f32> = vec2<f32>(x_1579.x, x_1579.y);
        let x_1582 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec25;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1589.xy, x_1589.z);
        u_xlat68 = x_1591;
        let x_1593 : f32 = u_xlat6.x;
        let x_1594 : f32 = u_xlat68;
        let x_1597 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1593 * x_1594) + x_1597);
        let x_1601 : vec4<f32> = u_xlat10;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.z, x_1601.w);
        let x_1604 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec26;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1611.xy, x_1611.z);
        u_xlat68 = x_1613;
        let x_1615 : f32 = u_xlat6.y;
        let x_1616 : f32 = u_xlat68;
        let x_1619 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1615 * x_1616) + x_1619);
        let x_1623 : vec2<f32> = u_xlat52;
        let x_1625 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec27;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
        u_xlat68 = x_1634;
        let x_1636 : f32 = u_xlat6.z;
        let x_1637 : f32 = u_xlat68;
        let x_1640 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1636 * x_1637) + x_1640);
        let x_1644 : vec4<f32> = u_xlat5;
        let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
        let x_1647 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec28;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
        u_xlat68 = x_1656;
        let x_1658 : f32 = u_xlat6.w;
        let x_1659 : f32 = u_xlat68;
        let x_1662 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1658 * x_1659) + x_1662);
      }
    }
  } else {
    let x_1666 : vec4<f32> = u_xlat3;
    let x_1667 : vec2<f32> = vec2<f32>(x_1666.x, x_1666.y);
    let x_1669 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
    let x_1676 : vec3<f32> = txVec29;
    let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1676.xy, x_1676.z);
    u_xlat66 = x_1678;
  }
  let x_1680 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1680) + 1.0f);
  let x_1684 : f32 = u_xlat66;
  let x_1686 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1689 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1684 * x_1686) + x_1689);
  let x_1692 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_1692);
  let x_1696 : f32 = u_xlat3.z;
  u_xlatb68 = (x_1696 >= 1.0f);
  let x_1698 : bool = u_xlatb1;
  let x_1699 : bool = u_xlatb68;
  u_xlatb1 = (x_1698 | x_1699);
  let x_1701 : bool = u_xlatb1;
  let x_1702 : f32 = u_xlat66;
  u_xlat66 = select(x_1702, 1.0f, x_1701);
  let x_1704 : vec3<f32> = vs_TEXCOORD1;
  let x_1707 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1709 : vec3<f32> = (x_1704 + -(x_1707));
  let x_1710 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1712 : vec4<f32> = u_xlat3;
  let x_1714 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_1712.x, x_1712.y, x_1712.z), vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
  let x_1719 : f32 = u_xlat1.x;
  let x_1721 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1724 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1719 * x_1721) + x_1724);
  let x_1726 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1726, 0.0f, 1.0f);
  let x_1728 : f32 = u_xlat66;
  u_xlat3.x = (-(x_1728) + 1.0f);
  let x_1732 : f32 = u_xlat68;
  let x_1734 : f32 = u_xlat3.x;
  let x_1736 : f32 = u_xlat66;
  u_xlat66 = ((x_1732 * x_1734) + x_1736);
  let x_1738 : f32 = u_xlat66;
  let x_1744 : f32 = x_1742.unity_LightData.z;
  u_xlat66 = (x_1738 * x_1744);
  let x_1746 : f32 = u_xlat66;
  let x_1749 : vec4<f32> = x_28.x_MainLightColor;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1746, x_1746, x_1746) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : vec3<f32> = u_xlat2;
  let x_1756 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat66 = dot(x_1754, vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1759, 0.0f, 1.0f);
  let x_1761 : f32 = u_xlat66;
  let x_1763 : vec4<f32> = u_xlat3;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1761, x_1761, x_1761) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec4<f32> = u_xlat1;
  let x_1770 : vec4<f32> = u_xlat3;
  let x_1772 : vec3<f32> = (vec3<f32>(x_1768.y, x_1768.z, x_1768.w) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1775 : vec4<f32> = u_xlat0;
  let x_1777 : vec4<f32> = u_xlat3;
  let x_1779 : vec3<f32> = (vec3<f32>(x_1775.x, x_1775.x, x_1775.x) * vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
  let x_1783 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1785 : f32 = x_1742.unity_LightData.y;
  u_xlat66 = min(x_1783, x_1785);
  let x_1788 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1788));
  let x_1792 : f32 = u_xlat1.x;
  let x_1795 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_1798 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1792 * x_1795) + x_1798);
  let x_1802 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1802, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1815 : u32 = u_xlatu_loop_1;
    let x_1816 : u32 = u_xlatu66;
    if ((x_1815 < x_1816)) {
    } else {
      break;
    }
    let x_1819 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1819 >> 2u);
    let x_1822 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1822 & 3u));
    let x_1825 : u32 = u_xlatu69;
    let x_1828 : vec4<f32> = x_1742.unity_LightIndices[bitcast<i32>(x_1825)];
    let x_1838 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1843 : vec4<u32> = indexable[x_1838];
    u_xlat69 = dot(x_1828, bitcast<vec4<f32>>(x_1843));
    let x_1847 : f32 = u_xlat69;
    u_xlati69 = i32(x_1847);
    let x_1849 : vec3<f32> = vs_TEXCOORD1;
    let x_1860 : i32 = u_xlati69;
    let x_1862 : vec4<f32> = x_1859.x_AdditionalLightsPosition[x_1860];
    let x_1865 : i32 = u_xlati69;
    let x_1867 : vec4<f32> = x_1859.x_AdditionalLightsPosition[x_1865];
    let x_1869 : vec3<f32> = ((-(x_1849) * vec3<f32>(x_1862.w, x_1862.w, x_1862.w)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
    let x_1873 : vec4<f32> = u_xlat6;
    let x_1875 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
    let x_1878 : f32 = u_xlat70;
    u_xlat70 = max(x_1878, 0.00006103515625f);
    let x_1882 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1882);
    let x_1884 : f32 = u_xlat71;
    let x_1886 : vec4<f32> = u_xlat6;
    let x_1888 : vec3<f32> = (vec3<f32>(x_1884, x_1884, x_1884) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
    let x_1889 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
    let x_1891 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1891);
    let x_1893 : f32 = u_xlat70;
    let x_1894 : i32 = u_xlati69;
    let x_1896 : f32 = x_1859.x_AdditionalLightsAttenuation[x_1894].x;
    u_xlat70 = (x_1893 * x_1896);
    let x_1898 : f32 = u_xlat70;
    let x_1900 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1898) * x_1900) + 1.0f);
    let x_1903 : f32 = u_xlat70;
    u_xlat70 = max(x_1903, 0.0f);
    let x_1905 : f32 = u_xlat70;
    let x_1906 : f32 = u_xlat70;
    u_xlat70 = (x_1905 * x_1906);
    let x_1908 : f32 = u_xlat70;
    let x_1909 : f32 = u_xlat71;
    u_xlat70 = (x_1908 * x_1909);
    let x_1911 : i32 = u_xlati69;
    let x_1913 : vec4<f32> = x_1859.x_AdditionalLightsSpotDir[x_1911];
    let x_1915 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1913.x, x_1913.y, x_1913.z), vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : f32 = u_xlat71;
    let x_1919 : i32 = u_xlati69;
    let x_1921 : f32 = x_1859.x_AdditionalLightsAttenuation[x_1919].z;
    let x_1923 : i32 = u_xlati69;
    let x_1925 : f32 = x_1859.x_AdditionalLightsAttenuation[x_1923].w;
    u_xlat71 = ((x_1918 * x_1921) + x_1925);
    let x_1927 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1927, 0.0f, 1.0f);
    let x_1929 : f32 = u_xlat71;
    let x_1930 : f32 = u_xlat71;
    u_xlat71 = (x_1929 * x_1930);
    let x_1932 : f32 = u_xlat70;
    let x_1933 : f32 = u_xlat71;
    u_xlat70 = (x_1932 * x_1933);
    let x_1937 : i32 = u_xlati69;
    let x_1939 : f32 = x_158.x_AdditionalShadowParams[x_1937].w;
    u_xlati71 = i32(x_1939);
    let x_1942 : i32 = u_xlati71;
    u_xlatb72 = (x_1942 >= 0i);
    let x_1944 : bool = u_xlatb72;
    if (x_1944) {
      let x_1948 : i32 = u_xlati69;
      let x_1950 : f32 = x_158.x_AdditionalShadowParams[x_1948].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1950, x_1950, x_1950, x_1950))));
      let x_1954 : bool = u_xlatb72;
      if (x_1954) {
        let x_1958 : vec4<f32> = u_xlat6;
        let x_1961 : vec4<f32> = u_xlat6;
        let x_1964 : vec4<bool> = (abs(vec4<f32>(x_1958.z, x_1958.z, x_1958.y, x_1958.z)) >= abs(vec4<f32>(x_1961.x, x_1961.y, x_1961.x, x_1961.x)));
        let x_1966 : vec3<bool> = vec3<bool>(x_1964.x, x_1964.y, x_1964.z);
        let x_1967 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
        let x_1970 : bool = u_xlatb7.y;
        let x_1972 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1970 & x_1972);
        let x_1974 : vec4<f32> = u_xlat6;
        let x_1977 : vec4<bool> = (-(vec4<f32>(x_1974.z, x_1974.y, x_1974.z, x_1974.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1978 : vec3<bool> = vec3<bool>(x_1977.x, x_1977.y, x_1977.w);
        let x_1979 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1978.x, x_1978.y, x_1979.z, x_1978.z);
        let x_1982 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1982);
        let x_1987 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1987);
        let x_1992 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1992);
        let x_1995 : bool = u_xlatb7.z;
        if (x_1995) {
          let x_2000 : f32 = u_xlat7.y;
          x_1996 = x_2000;
        } else {
          let x_2002 : f32 = u_xlat73;
          x_1996 = x_2002;
        }
        let x_2003 : f32 = x_1996;
        u_xlat29.x = x_2003;
        let x_2006 : bool = u_xlatb72;
        if (x_2006) {
          let x_2011 : f32 = u_xlat7.x;
          x_2007 = x_2011;
        } else {
          let x_2014 : f32 = u_xlat29.x;
          x_2007 = x_2014;
        }
        let x_2015 : f32 = x_2007;
        u_xlat72 = x_2015;
        let x_2016 : i32 = u_xlati69;
        let x_2018 : f32 = x_158.x_AdditionalShadowParams[x_2016].w;
        u_xlat7.x = trunc(x_2018);
        let x_2021 : f32 = u_xlat72;
        let x_2023 : f32 = u_xlat7.x;
        u_xlat72 = (x_2021 + x_2023);
        let x_2025 : f32 = u_xlat72;
        u_xlati71 = i32(x_2025);
      }
      let x_2027 : i32 = u_xlati71;
      u_xlati71 = (x_2027 << bitcast<u32>(2i));
      let x_2029 : vec3<f32> = vs_TEXCOORD1;
      let x_2032 : i32 = u_xlati71;
      let x_2035 : i32 = u_xlati71;
      let x_2039 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2032 + 1i) / 4i)][((x_2035 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2029.y, x_2029.y, x_2029.y, x_2029.y) * x_2039);
      let x_2041 : i32 = u_xlati71;
      let x_2043 : i32 = u_xlati71;
      let x_2046 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_2041 / 4i)][(x_2043 % 4i)];
      let x_2047 : vec3<f32> = vs_TEXCOORD1;
      let x_2050 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2046 * vec4<f32>(x_2047.x, x_2047.x, x_2047.x, x_2047.x)) + x_2050);
      let x_2052 : i32 = u_xlati71;
      let x_2055 : i32 = u_xlati71;
      let x_2059 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2052 + 2i) / 4i)][((x_2055 + 2i) % 4i)];
      let x_2060 : vec3<f32> = vs_TEXCOORD1;
      let x_2063 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2059 * vec4<f32>(x_2060.z, x_2060.z, x_2060.z, x_2060.z)) + x_2063);
      let x_2065 : vec4<f32> = u_xlat7;
      let x_2066 : i32 = u_xlati71;
      let x_2069 : i32 = u_xlati71;
      let x_2073 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2066 + 3i) / 4i)][((x_2069 + 3i) % 4i)];
      u_xlat7 = (x_2065 + x_2073);
      let x_2075 : vec4<f32> = u_xlat7;
      let x_2077 : vec4<f32> = u_xlat7;
      let x_2079 : vec3<f32> = (vec3<f32>(x_2075.x, x_2075.y, x_2075.z) / vec3<f32>(x_2077.w, x_2077.w, x_2077.w));
      let x_2080 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
      let x_2083 : i32 = u_xlati69;
      let x_2085 : f32 = x_158.x_AdditionalShadowParams[x_2083].y;
      u_xlatb71 = (0.0f < x_2085);
      let x_2087 : bool = u_xlatb71;
      if (x_2087) {
        let x_2090 : i32 = u_xlati69;
        let x_2092 : f32 = x_158.x_AdditionalShadowParams[x_2090].y;
        u_xlatb71 = (1.0f == x_2092);
        let x_2094 : bool = u_xlatb71;
        if (x_2094) {
          let x_2097 : vec4<f32> = u_xlat7;
          let x_2101 : vec4<f32> = x_158.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2097.x, x_2097.y, x_2097.x, x_2097.y) + x_2101);
          let x_2104 : vec4<f32> = u_xlat8;
          let x_2105 : vec2<f32> = vec2<f32>(x_2104.x, x_2104.y);
          let x_2107 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
          let x_2115 : vec3<f32> = txVec30;
          let x_2117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2115.xy, x_2115.z);
          u_xlat9.x = x_2117;
          let x_2120 : vec4<f32> = u_xlat8;
          let x_2121 : vec2<f32> = vec2<f32>(x_2120.z, x_2120.w);
          let x_2123 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
          let x_2130 : vec3<f32> = txVec31;
          let x_2132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
          u_xlat9.y = x_2132;
          let x_2134 : vec4<f32> = u_xlat7;
          let x_2138 : vec4<f32> = x_158.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2134.x, x_2134.y, x_2134.x, x_2134.y) + x_2138);
          let x_2141 : vec4<f32> = u_xlat8;
          let x_2142 : vec2<f32> = vec2<f32>(x_2141.x, x_2141.y);
          let x_2144 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
          let x_2151 : vec3<f32> = txVec32;
          let x_2153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2151.xy, x_2151.z);
          u_xlat9.z = x_2153;
          let x_2156 : vec4<f32> = u_xlat8;
          let x_2157 : vec2<f32> = vec2<f32>(x_2156.z, x_2156.w);
          let x_2159 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
          let x_2166 : vec3<f32> = txVec33;
          let x_2168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2166.xy, x_2166.z);
          u_xlat9.w = x_2168;
          let x_2170 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2170, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2173 : i32 = u_xlati69;
          let x_2175 : f32 = x_158.x_AdditionalShadowParams[x_2173].y;
          u_xlatb72 = (2.0f == x_2175);
          let x_2177 : bool = u_xlatb72;
          if (x_2177) {
            let x_2180 : vec4<f32> = u_xlat7;
            let x_2184 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2187 : vec2<f32> = ((vec2<f32>(x_2180.x, x_2180.y) * vec2<f32>(x_2184.z, x_2184.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2188 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
            let x_2190 : vec4<f32> = u_xlat8;
            let x_2192 : vec2<f32> = floor(vec2<f32>(x_2190.x, x_2190.y));
            let x_2193 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2192.x, x_2192.y, x_2193.z, x_2193.w);
            let x_2195 : vec4<f32> = u_xlat7;
            let x_2198 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2201 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2195.x, x_2195.y) * vec2<f32>(x_2198.z, x_2198.w)) + -(vec2<f32>(x_2201.x, x_2201.y)));
            let x_2205 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2205.x, x_2205.x, x_2205.y, x_2205.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2208 : vec4<f32> = u_xlat9;
            let x_2210 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2208.x, x_2208.x, x_2208.z, x_2208.z) * vec4<f32>(x_2210.x, x_2210.x, x_2210.z, x_2210.z));
            let x_2213 : vec4<f32> = u_xlat10;
            let x_2215 : vec2<f32> = (vec2<f32>(x_2213.y, x_2213.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2216 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2215.x, x_2216.y, x_2215.y, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat10;
            let x_2221 : vec2<f32> = u_xlat52;
            let x_2223 : vec2<f32> = ((vec2<f32>(x_2218.x, x_2218.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2221));
            let x_2224 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2223.x, x_2223.y, x_2224.z, x_2224.w);
            let x_2227 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2227) + vec2<f32>(1.0f, 1.0f));
            let x_2230 : vec2<f32> = u_xlat52;
            let x_2231 : vec2<f32> = min(x_2230, vec2<f32>(0.0f, 0.0f));
            let x_2232 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
            let x_2234 : vec4<f32> = u_xlat11;
            let x_2237 : vec4<f32> = u_xlat11;
            let x_2240 : vec2<f32> = u_xlat54;
            let x_2241 : vec2<f32> = ((-(vec2<f32>(x_2234.x, x_2234.y)) * vec2<f32>(x_2237.x, x_2237.y)) + x_2240);
            let x_2242 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
            let x_2244 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2244, vec2<f32>(0.0f, 0.0f));
            let x_2246 : vec2<f32> = u_xlat52;
            let x_2248 : vec2<f32> = u_xlat52;
            let x_2250 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2246) * x_2248) + vec2<f32>(x_2250.y, x_2250.w));
            let x_2253 : vec4<f32> = u_xlat11;
            let x_2255 : vec2<f32> = (vec2<f32>(x_2253.x, x_2253.y) + vec2<f32>(1.0f, 1.0f));
            let x_2256 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2258 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2258 + vec2<f32>(1.0f, 1.0f));
            let x_2260 : vec4<f32> = u_xlat10;
            let x_2262 : vec2<f32> = (vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2263 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
            let x_2265 : vec2<f32> = u_xlat54;
            let x_2266 : vec2<f32> = (x_2265 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2267 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2266.x, x_2266.y, x_2267.z, x_2267.w);
            let x_2269 : vec4<f32> = u_xlat11;
            let x_2271 : vec2<f32> = (vec2<f32>(x_2269.x, x_2269.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2272 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2271.x, x_2271.y, x_2272.z, x_2272.w);
            let x_2274 : vec2<f32> = u_xlat52;
            let x_2275 : vec2<f32> = (x_2274 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2276 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
            let x_2278 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2278.y, x_2278.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2282 : f32 = u_xlat11.x;
            u_xlat12.z = x_2282;
            let x_2285 : f32 = u_xlat52.x;
            u_xlat12.w = x_2285;
            let x_2288 : f32 = u_xlat13.x;
            u_xlat10.z = x_2288;
            let x_2291 : f32 = u_xlat9.x;
            u_xlat10.w = x_2291;
            let x_2293 : vec4<f32> = u_xlat10;
            let x_2295 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2293.z, x_2293.w, x_2293.x, x_2293.z) + vec4<f32>(x_2295.z, x_2295.w, x_2295.x, x_2295.z));
            let x_2299 : f32 = u_xlat12.y;
            u_xlat11.z = x_2299;
            let x_2302 : f32 = u_xlat52.y;
            u_xlat11.w = x_2302;
            let x_2305 : f32 = u_xlat10.y;
            u_xlat13.z = x_2305;
            let x_2308 : f32 = u_xlat9.z;
            u_xlat13.w = x_2308;
            let x_2310 : vec4<f32> = u_xlat11;
            let x_2312 : vec4<f32> = u_xlat13;
            let x_2314 : vec3<f32> = (vec3<f32>(x_2310.z, x_2310.y, x_2310.w) + vec3<f32>(x_2312.z, x_2312.y, x_2312.w));
            let x_2315 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
            let x_2317 : vec4<f32> = u_xlat10;
            let x_2319 : vec4<f32> = u_xlat14;
            let x_2321 : vec3<f32> = (vec3<f32>(x_2317.x, x_2317.z, x_2317.w) / vec3<f32>(x_2319.z, x_2319.w, x_2319.y));
            let x_2322 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
            let x_2324 : vec4<f32> = u_xlat10;
            let x_2326 : vec3<f32> = (vec3<f32>(x_2324.x, x_2324.y, x_2324.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
            let x_2329 : vec4<f32> = u_xlat13;
            let x_2331 : vec4<f32> = u_xlat9;
            let x_2333 : vec3<f32> = (vec3<f32>(x_2329.z, x_2329.y, x_2329.w) / vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
            let x_2334 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
            let x_2336 : vec4<f32> = u_xlat11;
            let x_2338 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2339 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat10;
            let x_2344 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2341.y, x_2341.x, x_2341.z) * vec3<f32>(x_2344.x, x_2344.x, x_2344.x));
            let x_2347 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2349 : vec4<f32> = u_xlat11;
            let x_2352 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2354 : vec3<f32> = (vec3<f32>(x_2349.x, x_2349.y, x_2349.z) * vec3<f32>(x_2352.y, x_2352.y, x_2352.y));
            let x_2355 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
            let x_2358 : f32 = u_xlat11.x;
            u_xlat10.w = x_2358;
            let x_2360 : vec4<f32> = u_xlat8;
            let x_2363 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2366 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2360.x, x_2360.y, x_2360.x, x_2360.y) * vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y)) + vec4<f32>(x_2366.y, x_2366.w, x_2366.x, x_2366.w));
            let x_2369 : vec4<f32> = u_xlat8;
            let x_2372 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2375 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2372.x, x_2372.y)) + vec2<f32>(x_2375.z, x_2375.w));
            let x_2379 : f32 = u_xlat10.y;
            u_xlat11.w = x_2379;
            let x_2381 : vec4<f32> = u_xlat11;
            let x_2382 : vec2<f32> = vec2<f32>(x_2381.y, x_2381.z);
            let x_2383 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2383.x, x_2382.x, x_2383.z, x_2382.y);
            let x_2385 : vec4<f32> = u_xlat8;
            let x_2388 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2391 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2385.x, x_2385.y, x_2385.x, x_2385.y) * vec4<f32>(x_2388.x, x_2388.y, x_2388.x, x_2388.y)) + vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2391.y));
            let x_2394 : vec4<f32> = u_xlat8;
            let x_2397 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2400 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y) * vec4<f32>(x_2397.x, x_2397.y, x_2397.x, x_2397.y)) + vec4<f32>(x_2400.w, x_2400.y, x_2400.w, x_2400.z));
            let x_2403 : vec4<f32> = u_xlat8;
            let x_2406 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2409 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2403.x, x_2403.y, x_2403.x, x_2403.y) * vec4<f32>(x_2406.x, x_2406.y, x_2406.x, x_2406.y)) + vec4<f32>(x_2409.x, x_2409.w, x_2409.z, x_2409.w));
            let x_2412 : vec4<f32> = u_xlat9;
            let x_2414 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2412.x, x_2412.x, x_2412.x, x_2412.y) * vec4<f32>(x_2414.z, x_2414.w, x_2414.y, x_2414.z));
            let x_2417 : vec4<f32> = u_xlat9;
            let x_2419 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2417.y, x_2417.y, x_2417.z, x_2417.z) * x_2419);
            let x_2422 : f32 = u_xlat9.z;
            let x_2424 : f32 = u_xlat14.y;
            u_xlat72 = (x_2422 * x_2424);
            let x_2427 : vec4<f32> = u_xlat12;
            let x_2428 : vec2<f32> = vec2<f32>(x_2427.x, x_2427.y);
            let x_2430 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2428.x, x_2428.y, x_2430);
            let x_2437 : vec3<f32> = txVec34;
            let x_2439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2437.xy, x_2437.z);
            u_xlat73 = x_2439;
            let x_2441 : vec4<f32> = u_xlat12;
            let x_2442 : vec2<f32> = vec2<f32>(x_2441.z, x_2441.w);
            let x_2444 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2442.x, x_2442.y, x_2444);
            let x_2451 : vec3<f32> = txVec35;
            let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
            u_xlat8.x = x_2453;
            let x_2456 : f32 = u_xlat8.x;
            let x_2458 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2456 * x_2458);
            let x_2462 : f32 = u_xlat15.x;
            let x_2463 : f32 = u_xlat73;
            let x_2466 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2462 * x_2463) + x_2466);
            let x_2469 : vec2<f32> = u_xlat52;
            let x_2471 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
            let x_2478 : vec3<f32> = txVec36;
            let x_2480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
            u_xlat8.x = x_2480;
            let x_2483 : f32 = u_xlat15.z;
            let x_2485 : f32 = u_xlat8.x;
            let x_2487 : f32 = u_xlat73;
            u_xlat73 = ((x_2483 * x_2485) + x_2487);
            let x_2490 : vec4<f32> = u_xlat11;
            let x_2491 : vec2<f32> = vec2<f32>(x_2490.x, x_2490.y);
            let x_2493 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
            let x_2500 : vec3<f32> = txVec37;
            let x_2502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
            u_xlat8.x = x_2502;
            let x_2505 : f32 = u_xlat15.w;
            let x_2507 : f32 = u_xlat8.x;
            let x_2509 : f32 = u_xlat73;
            u_xlat73 = ((x_2505 * x_2507) + x_2509);
            let x_2512 : vec4<f32> = u_xlat13;
            let x_2513 : vec2<f32> = vec2<f32>(x_2512.x, x_2512.y);
            let x_2515 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
            let x_2522 : vec3<f32> = txVec38;
            let x_2524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
            u_xlat8.x = x_2524;
            let x_2527 : f32 = u_xlat16.x;
            let x_2529 : f32 = u_xlat8.x;
            let x_2531 : f32 = u_xlat73;
            u_xlat73 = ((x_2527 * x_2529) + x_2531);
            let x_2534 : vec4<f32> = u_xlat13;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.z, x_2534.w);
            let x_2537 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2544 : vec3<f32> = txVec39;
            let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
            u_xlat8.x = x_2546;
            let x_2549 : f32 = u_xlat16.y;
            let x_2551 : f32 = u_xlat8.x;
            let x_2553 : f32 = u_xlat73;
            u_xlat73 = ((x_2549 * x_2551) + x_2553);
            let x_2556 : vec4<f32> = u_xlat11;
            let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
            let x_2559 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
            let x_2566 : vec3<f32> = txVec40;
            let x_2568 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
            u_xlat8.x = x_2568;
            let x_2571 : f32 = u_xlat16.z;
            let x_2573 : f32 = u_xlat8.x;
            let x_2575 : f32 = u_xlat73;
            u_xlat73 = ((x_2571 * x_2573) + x_2575);
            let x_2578 : vec4<f32> = u_xlat10;
            let x_2579 : vec2<f32> = vec2<f32>(x_2578.x, x_2578.y);
            let x_2581 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2579.x, x_2579.y, x_2581);
            let x_2588 : vec3<f32> = txVec41;
            let x_2590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2588.xy, x_2588.z);
            u_xlat8.x = x_2590;
            let x_2593 : f32 = u_xlat16.w;
            let x_2595 : f32 = u_xlat8.x;
            let x_2597 : f32 = u_xlat73;
            u_xlat73 = ((x_2593 * x_2595) + x_2597);
            let x_2600 : vec4<f32> = u_xlat10;
            let x_2601 : vec2<f32> = vec2<f32>(x_2600.z, x_2600.w);
            let x_2603 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2601.x, x_2601.y, x_2603);
            let x_2610 : vec3<f32> = txVec42;
            let x_2612 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2610.xy, x_2610.z);
            u_xlat8.x = x_2612;
            let x_2614 : f32 = u_xlat72;
            let x_2616 : f32 = u_xlat8.x;
            let x_2618 : f32 = u_xlat73;
            u_xlat71 = ((x_2614 * x_2616) + x_2618);
          } else {
            let x_2621 : vec4<f32> = u_xlat7;
            let x_2624 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2627 : vec2<f32> = ((vec2<f32>(x_2621.x, x_2621.y) * vec2<f32>(x_2624.z, x_2624.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2628 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
            let x_2630 : vec4<f32> = u_xlat8;
            let x_2632 : vec2<f32> = floor(vec2<f32>(x_2630.x, x_2630.y));
            let x_2633 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
            let x_2635 : vec4<f32> = u_xlat7;
            let x_2638 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2641 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2635.x, x_2635.y) * vec2<f32>(x_2638.z, x_2638.w)) + -(vec2<f32>(x_2641.x, x_2641.y)));
            let x_2645 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2645.x, x_2645.x, x_2645.y, x_2645.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2648 : vec4<f32> = u_xlat9;
            let x_2650 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2648.x, x_2648.x, x_2648.z, x_2648.z) * vec4<f32>(x_2650.x, x_2650.x, x_2650.z, x_2650.z));
            let x_2653 : vec4<f32> = u_xlat10;
            let x_2655 : vec2<f32> = (vec2<f32>(x_2653.y, x_2653.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2656 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2656.x, x_2655.x, x_2656.z, x_2655.y);
            let x_2658 : vec4<f32> = u_xlat10;
            let x_2661 : vec2<f32> = u_xlat52;
            let x_2663 : vec2<f32> = ((vec2<f32>(x_2658.x, x_2658.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2661));
            let x_2664 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2663.x, x_2664.y, x_2663.y, x_2664.w);
            let x_2666 : vec2<f32> = u_xlat52;
            let x_2668 : vec2<f32> = (-(x_2666) + vec2<f32>(1.0f, 1.0f));
            let x_2669 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2668.x, x_2668.y, x_2669.z, x_2669.w);
            let x_2671 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2671, vec2<f32>(0.0f, 0.0f));
            let x_2673 : vec2<f32> = u_xlat54;
            let x_2675 : vec2<f32> = u_xlat54;
            let x_2677 : vec4<f32> = u_xlat10;
            let x_2679 : vec2<f32> = ((-(x_2673) * x_2675) + vec2<f32>(x_2677.x, x_2677.y));
            let x_2680 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2682 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2682, vec2<f32>(0.0f, 0.0f));
            let x_2685 : vec2<f32> = u_xlat54;
            let x_2687 : vec2<f32> = u_xlat54;
            let x_2689 : vec4<f32> = u_xlat9;
            let x_2691 : vec2<f32> = ((-(x_2685) * x_2687) + vec2<f32>(x_2689.y, x_2689.w));
            let x_2692 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2691.x, x_2692.y, x_2691.y);
            let x_2694 : vec4<f32> = u_xlat10;
            let x_2696 : vec2<f32> = (vec2<f32>(x_2694.x, x_2694.y) + vec2<f32>(2.0f, 2.0f));
            let x_2697 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2696.x, x_2696.y, x_2697.z, x_2697.w);
            let x_2699 : vec3<f32> = u_xlat31;
            let x_2701 : vec2<f32> = (vec2<f32>(x_2699.x, x_2699.z) + vec2<f32>(2.0f, 2.0f));
            let x_2702 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2702.x, x_2701.x, x_2702.z, x_2701.y);
            let x_2705 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2705 * 0.08163200318813323975f);
            let x_2708 : vec4<f32> = u_xlat9;
            let x_2710 : vec3<f32> = (vec3<f32>(x_2708.z, x_2708.x, x_2708.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2711 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
            let x_2713 : vec4<f32> = u_xlat10;
            let x_2715 : vec2<f32> = (vec2<f32>(x_2713.x, x_2713.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2716 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2715.x, x_2715.y, x_2716.z, x_2716.w);
            let x_2719 : f32 = u_xlat13.y;
            u_xlat12.x = x_2719;
            let x_2721 : vec2<f32> = u_xlat52;
            let x_2724 : vec2<f32> = ((vec2<f32>(x_2721.x, x_2721.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2725 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2725.x, x_2724.x, x_2725.z, x_2724.y);
            let x_2727 : vec2<f32> = u_xlat52;
            let x_2730 : vec2<f32> = ((vec2<f32>(x_2727.x, x_2727.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2731 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2730.x, x_2731.y, x_2730.y, x_2731.w);
            let x_2734 : f32 = u_xlat9.x;
            u_xlat10.y = x_2734;
            let x_2737 : f32 = u_xlat11.y;
            u_xlat10.w = x_2737;
            let x_2739 : vec4<f32> = u_xlat10;
            let x_2740 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2739 + x_2740);
            let x_2742 : vec2<f32> = u_xlat52;
            let x_2745 : vec2<f32> = ((vec2<f32>(x_2742.y, x_2742.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2746 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2746.x, x_2745.x, x_2746.z, x_2745.y);
            let x_2748 : vec2<f32> = u_xlat52;
            let x_2751 : vec2<f32> = ((vec2<f32>(x_2748.y, x_2748.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2752 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2751.x, x_2752.y, x_2751.y, x_2752.w);
            let x_2755 : f32 = u_xlat9.y;
            u_xlat11.y = x_2755;
            let x_2757 : vec4<f32> = u_xlat11;
            let x_2758 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2757 + x_2758);
            let x_2760 : vec4<f32> = u_xlat10;
            let x_2761 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2760 / x_2761);
            let x_2763 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2763 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2765 : vec4<f32> = u_xlat11;
            let x_2766 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2765 / x_2766);
            let x_2768 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2768 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2770 : vec4<f32> = u_xlat10;
            let x_2773 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2770.w, x_2770.x, x_2770.y, x_2770.z) * vec4<f32>(x_2773.x, x_2773.x, x_2773.x, x_2773.x));
            let x_2776 : vec4<f32> = u_xlat11;
            let x_2779 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2776.x, x_2776.w, x_2776.y, x_2776.z) * vec4<f32>(x_2779.y, x_2779.y, x_2779.y, x_2779.y));
            let x_2782 : vec4<f32> = u_xlat10;
            let x_2783 : vec3<f32> = vec3<f32>(x_2782.y, x_2782.z, x_2782.w);
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2783.x, x_2784.y, x_2783.y, x_2783.z);
            let x_2787 : f32 = u_xlat11.x;
            u_xlat13.y = x_2787;
            let x_2789 : vec4<f32> = u_xlat8;
            let x_2792 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2795 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.y) * vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y)) + vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2795.y));
            let x_2798 : vec4<f32> = u_xlat8;
            let x_2801 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2798.x, x_2798.y) * vec2<f32>(x_2801.x, x_2801.y)) + vec2<f32>(x_2804.w, x_2804.y));
            let x_2808 : f32 = u_xlat13.y;
            u_xlat10.y = x_2808;
            let x_2811 : f32 = u_xlat11.z;
            u_xlat13.y = x_2811;
            let x_2813 : vec4<f32> = u_xlat8;
            let x_2816 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2819 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y) * vec4<f32>(x_2816.x, x_2816.y, x_2816.x, x_2816.y)) + vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2819.y));
            let x_2822 : vec4<f32> = u_xlat8;
            let x_2825 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2828 : vec4<f32> = u_xlat13;
            let x_2830 : vec2<f32> = ((vec2<f32>(x_2822.x, x_2822.y) * vec2<f32>(x_2825.x, x_2825.y)) + vec2<f32>(x_2828.w, x_2828.y));
            let x_2831 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2834 : f32 = u_xlat13.y;
            u_xlat10.z = x_2834;
            let x_2836 : vec4<f32> = u_xlat8;
            let x_2839 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2842 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2836.x, x_2836.y, x_2836.x, x_2836.y) * vec4<f32>(x_2839.x, x_2839.y, x_2839.x, x_2839.y)) + vec4<f32>(x_2842.x, x_2842.y, x_2842.x, x_2842.z));
            let x_2846 : f32 = u_xlat11.w;
            u_xlat13.y = x_2846;
            let x_2848 : vec4<f32> = u_xlat8;
            let x_2851 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) * vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y)) + vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2854.y));
            let x_2858 : vec4<f32> = u_xlat8;
            let x_2861 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2864 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2858.x, x_2858.y) * vec2<f32>(x_2861.x, x_2861.y)) + vec2<f32>(x_2864.w, x_2864.y));
            let x_2868 : f32 = u_xlat13.y;
            u_xlat10.w = x_2868;
            let x_2871 : vec4<f32> = u_xlat8;
            let x_2874 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2877 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2871.x, x_2871.y) * vec2<f32>(x_2874.x, x_2874.y)) + vec2<f32>(x_2877.x, x_2877.w));
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2881 : vec3<f32> = vec3<f32>(x_2880.x, x_2880.z, x_2880.w);
            let x_2882 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2881.x, x_2882.y, x_2881.y, x_2881.z);
            let x_2884 : vec4<f32> = u_xlat8;
            let x_2887 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2890 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.y) * vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y)) + vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2890.y));
            let x_2894 : vec4<f32> = u_xlat8;
            let x_2897 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2894.x, x_2894.y) * vec2<f32>(x_2897.x, x_2897.y)) + vec2<f32>(x_2900.w, x_2900.y));
            let x_2904 : f32 = u_xlat10.x;
            u_xlat11.x = x_2904;
            let x_2906 : vec4<f32> = u_xlat8;
            let x_2909 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2914 : vec2<f32> = ((vec2<f32>(x_2906.x, x_2906.y) * vec2<f32>(x_2909.x, x_2909.y)) + vec2<f32>(x_2912.x, x_2912.y));
            let x_2915 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2918 : vec4<f32> = u_xlat9;
            let x_2920 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2918.x, x_2918.x, x_2918.x, x_2918.x) * x_2920);
            let x_2923 : vec4<f32> = u_xlat9;
            let x_2925 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2923.y, x_2923.y, x_2923.y, x_2923.y) * x_2925);
            let x_2928 : vec4<f32> = u_xlat9;
            let x_2930 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2928.z, x_2928.z, x_2928.z, x_2928.z) * x_2930);
            let x_2932 : vec4<f32> = u_xlat9;
            let x_2934 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2932.w, x_2932.w, x_2932.w, x_2932.w) * x_2934);
            let x_2937 : vec4<f32> = u_xlat14;
            let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
            let x_2940 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2947 : vec3<f32> = txVec43;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat72 = x_2949;
            let x_2951 : vec4<f32> = u_xlat14;
            let x_2952 : vec2<f32> = vec2<f32>(x_2951.z, x_2951.w);
            let x_2954 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec44;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat73 = x_2963;
            let x_2964 : f32 = u_xlat73;
            let x_2966 : f32 = u_xlat19.y;
            u_xlat73 = (x_2964 * x_2966);
            let x_2969 : f32 = u_xlat19.x;
            let x_2970 : f32 = u_xlat72;
            let x_2972 : f32 = u_xlat73;
            u_xlat72 = ((x_2969 * x_2970) + x_2972);
            let x_2975 : vec2<f32> = u_xlat52;
            let x_2977 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
            let x_2984 : vec3<f32> = txVec45;
            let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
            u_xlat73 = x_2986;
            let x_2988 : f32 = u_xlat19.z;
            let x_2989 : f32 = u_xlat73;
            let x_2991 : f32 = u_xlat72;
            u_xlat72 = ((x_2988 * x_2989) + x_2991);
            let x_2994 : vec4<f32> = u_xlat17;
            let x_2995 : vec2<f32> = vec2<f32>(x_2994.x, x_2994.y);
            let x_2997 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
            let x_3004 : vec3<f32> = txVec46;
            let x_3006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3004.xy, x_3004.z);
            u_xlat73 = x_3006;
            let x_3008 : f32 = u_xlat19.w;
            let x_3009 : f32 = u_xlat73;
            let x_3011 : f32 = u_xlat72;
            u_xlat72 = ((x_3008 * x_3009) + x_3011);
            let x_3014 : vec4<f32> = u_xlat15;
            let x_3015 : vec2<f32> = vec2<f32>(x_3014.x, x_3014.y);
            let x_3017 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
            let x_3024 : vec3<f32> = txVec47;
            let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
            u_xlat73 = x_3026;
            let x_3028 : f32 = u_xlat20.x;
            let x_3029 : f32 = u_xlat73;
            let x_3031 : f32 = u_xlat72;
            u_xlat72 = ((x_3028 * x_3029) + x_3031);
            let x_3034 : vec4<f32> = u_xlat15;
            let x_3035 : vec2<f32> = vec2<f32>(x_3034.z, x_3034.w);
            let x_3037 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
            let x_3044 : vec3<f32> = txVec48;
            let x_3046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
            u_xlat73 = x_3046;
            let x_3048 : f32 = u_xlat20.y;
            let x_3049 : f32 = u_xlat73;
            let x_3051 : f32 = u_xlat72;
            u_xlat72 = ((x_3048 * x_3049) + x_3051);
            let x_3054 : vec4<f32> = u_xlat16;
            let x_3055 : vec2<f32> = vec2<f32>(x_3054.x, x_3054.y);
            let x_3057 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3055.x, x_3055.y, x_3057);
            let x_3064 : vec3<f32> = txVec49;
            let x_3066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3064.xy, x_3064.z);
            u_xlat73 = x_3066;
            let x_3068 : f32 = u_xlat20.z;
            let x_3069 : f32 = u_xlat73;
            let x_3071 : f32 = u_xlat72;
            u_xlat72 = ((x_3068 * x_3069) + x_3071);
            let x_3074 : vec4<f32> = u_xlat17;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.z, x_3074.w);
            let x_3077 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec50;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat73 = x_3086;
            let x_3088 : f32 = u_xlat20.w;
            let x_3089 : f32 = u_xlat73;
            let x_3091 : f32 = u_xlat72;
            u_xlat72 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat18;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec51;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat73 = x_3106;
            let x_3108 : f32 = u_xlat21.x;
            let x_3109 : f32 = u_xlat73;
            let x_3111 : f32 = u_xlat72;
            u_xlat72 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat18;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec52;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat73 = x_3126;
            let x_3128 : f32 = u_xlat21.y;
            let x_3129 : f32 = u_xlat73;
            let x_3131 : f32 = u_xlat72;
            u_xlat72 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec2<f32> = u_xlat32;
            let x_3136 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
            let x_3143 : vec3<f32> = txVec53;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat73 = x_3145;
            let x_3147 : f32 = u_xlat21.z;
            let x_3148 : f32 = u_xlat73;
            let x_3150 : f32 = u_xlat72;
            u_xlat72 = ((x_3147 * x_3148) + x_3150);
            let x_3153 : vec2<f32> = u_xlat60;
            let x_3155 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec54;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat73 = x_3164;
            let x_3166 : f32 = u_xlat21.w;
            let x_3167 : f32 = u_xlat73;
            let x_3169 : f32 = u_xlat72;
            u_xlat72 = ((x_3166 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
            let x_3175 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec55;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat73 = x_3184;
            let x_3186 : f32 = u_xlat9.x;
            let x_3187 : f32 = u_xlat73;
            let x_3189 : f32 = u_xlat72;
            u_xlat72 = ((x_3186 * x_3187) + x_3189);
            let x_3192 : vec4<f32> = u_xlat13;
            let x_3193 : vec2<f32> = vec2<f32>(x_3192.z, x_3192.w);
            let x_3195 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3193.x, x_3193.y, x_3195);
            let x_3202 : vec3<f32> = txVec56;
            let x_3204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3202.xy, x_3202.z);
            u_xlat73 = x_3204;
            let x_3206 : f32 = u_xlat9.y;
            let x_3207 : f32 = u_xlat73;
            let x_3209 : f32 = u_xlat72;
            u_xlat72 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec2<f32> = u_xlat55;
            let x_3214 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec57;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat73 = x_3223;
            let x_3225 : f32 = u_xlat9.z;
            let x_3226 : f32 = u_xlat73;
            let x_3228 : f32 = u_xlat72;
            u_xlat72 = ((x_3225 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat8;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec58;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat73 = x_3243;
            let x_3245 : f32 = u_xlat9.w;
            let x_3246 : f32 = u_xlat73;
            let x_3248 : f32 = u_xlat72;
            u_xlat71 = ((x_3245 * x_3246) + x_3248);
          }
        }
      } else {
        let x_3252 : vec4<f32> = u_xlat7;
        let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
        let x_3255 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
        let x_3262 : vec3<f32> = txVec59;
        let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
        u_xlat71 = x_3264;
      }
      let x_3265 : i32 = u_xlati69;
      let x_3267 : f32 = x_158.x_AdditionalShadowParams[x_3265].x;
      u_xlat72 = (1.0f + -(x_3267));
      let x_3270 : f32 = u_xlat71;
      let x_3271 : i32 = u_xlati69;
      let x_3273 : f32 = x_158.x_AdditionalShadowParams[x_3271].x;
      let x_3275 : f32 = u_xlat72;
      u_xlat71 = ((x_3270 * x_3273) + x_3275);
      let x_3278 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3278);
      let x_3281 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3281 >= 1.0f);
      let x_3284 : bool = u_xlatb72;
      let x_3286 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3284 | x_3286);
      let x_3288 : bool = u_xlatb72;
      let x_3289 : f32 = u_xlat71;
      u_xlat71 = select(x_3289, 1.0f, x_3288);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3292 : f32 = u_xlat71;
    u_xlat72 = (-(x_3292) + 1.0f);
    let x_3296 : f32 = u_xlat1.x;
    let x_3297 : f32 = u_xlat72;
    let x_3299 : f32 = u_xlat71;
    u_xlat71 = ((x_3296 * x_3297) + x_3299);
    let x_3301 : f32 = u_xlat70;
    let x_3302 : f32 = u_xlat71;
    u_xlat70 = (x_3301 * x_3302);
    let x_3304 : f32 = u_xlat70;
    let x_3306 : i32 = u_xlati69;
    let x_3308 : vec4<f32> = x_1859.x_AdditionalLightsColor[x_3306];
    let x_3310 : vec3<f32> = (vec3<f32>(x_3304, x_3304, x_3304) * vec3<f32>(x_3308.x, x_3308.y, x_3308.z));
    let x_3311 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3310.x, x_3310.y, x_3310.z, x_3311.w);
    let x_3313 : vec3<f32> = u_xlat2;
    let x_3314 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(x_3313, vec3<f32>(x_3314.x, x_3314.y, x_3314.z));
    let x_3317 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3317, 0.0f, 1.0f);
    let x_3319 : f32 = u_xlat69;
    let x_3321 : vec4<f32> = u_xlat7;
    let x_3323 : vec3<f32> = (vec3<f32>(x_3319, x_3319, x_3319) * vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
    let x_3324 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
    let x_3326 : vec4<f32> = u_xlat1;
    let x_3328 : vec4<f32> = u_xlat6;
    let x_3330 : vec3<f32> = (vec3<f32>(x_3326.y, x_3326.z, x_3326.w) * vec3<f32>(x_3328.x, x_3328.y, x_3328.z));
    let x_3331 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3330.x, x_3330.y, x_3330.z, x_3331.w);
    let x_3333 : vec4<f32> = u_xlat6;
    let x_3335 : vec4<f32> = u_xlat0;
    let x_3338 : vec4<f32> = u_xlat5;
    let x_3340 : vec3<f32> = ((vec3<f32>(x_3333.x, x_3333.y, x_3333.z) * vec3<f32>(x_3335.x, x_3335.x, x_3335.x)) + vec3<f32>(x_3338.x, x_3338.y, x_3338.z));
    let x_3341 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3341.w);

    continuing {
      let x_3343 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3343 + bitcast<u32>(1i));
    }
  }
  let x_3345 : vec4<f32> = u_xlat4;
  let x_3347 : vec4<f32> = u_xlat1;
  let x_3350 : vec4<f32> = u_xlat3;
  let x_3352 : vec3<f32> = ((vec3<f32>(x_3345.x, x_3345.y, x_3345.z) * vec3<f32>(x_3347.y, x_3347.z, x_3347.w)) + vec3<f32>(x_3350.x, x_3350.y, x_3350.z));
  let x_3353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3352.x, x_3352.y, x_3352.z, x_3353.w);
  let x_3355 : vec4<f32> = u_xlat5;
  let x_3357 : vec4<f32> = u_xlat1;
  let x_3359 : vec3<f32> = (vec3<f32>(x_3355.x, x_3355.y, x_3355.z) + vec3<f32>(x_3357.x, x_3357.y, x_3357.z));
  let x_3360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3360.w);
  let x_3362 : f32 = u_xlat22;
  let x_3363 : f32 = u_xlat22;
  u_xlat22 = (x_3362 * -(x_3363));
  let x_3366 : f32 = u_xlat22;
  u_xlat22 = exp2(x_3366);
  let x_3368 : vec4<f32> = u_xlat1;
  let x_3371 : vec4<f32> = x_28.unity_FogColor;
  let x_3374 : vec3<f32> = (vec3<f32>(x_3368.x, x_3368.y, x_3368.z) + -(vec3<f32>(x_3371.x, x_3371.y, x_3371.z)));
  let x_3375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3374.x, x_3374.y, x_3374.z, x_3375.w);
  let x_3379 : f32 = u_xlat22;
  let x_3381 : vec4<f32> = u_xlat1;
  let x_3385 : vec4<f32> = x_28.unity_FogColor;
  let x_3387 : vec3<f32> = ((vec3<f32>(x_3379, x_3379, x_3379) * vec3<f32>(x_3381.x, x_3381.y, x_3381.z)) + vec3<f32>(x_3385.x, x_3385.y, x_3385.z));
  let x_3388 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3387.x, x_3387.y, x_3387.z, x_3388.w);
  let x_3391 : f32 = x_42.x_Surface;
  u_xlatb22 = (x_3391 == 1.0f);
  let x_3393 : bool = u_xlatb22;
  let x_3394 : bool = u_xlatb44;
  u_xlatb22 = (x_3393 | x_3394);
  let x_3396 : bool = u_xlatb22;
  if (x_3396) {
    let x_3401 : f32 = u_xlat0.x;
    x_3397 = x_3401;
  } else {
    x_3397 = 1.0f;
  }
  let x_3403 : f32 = x_3397;
  SV_Target0.w = x_3403;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


