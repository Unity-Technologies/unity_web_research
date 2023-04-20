diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightDirection : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_16 : UnityPerMaterial;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_83 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  let x_33 : vec4<f32> = in_POSITION0;
  let x_44 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  let x_46 : vec3<f32> = (vec3<f32>(x_33.y, x_33.y, x_33.y) * vec3<f32>(x_44.x, x_44.y, x_44.z));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  let x_57 : vec3<f32> = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.x, x_52.x, x_52.x)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_57.x, x_57.y, x_57.z, x_58.w);
  let x_62 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.z, x_64.z, x_64.z)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  let x_78 : vec3<f32> = (vec3<f32>(x_72.x, x_72.y, x_72.z) + vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_86 : vec3<f32> = x_83.x_LightDirection;
  let x_88 : vec4<f32> = x_83.x_ShadowBias;
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = ((x_86 * vec3<f32>(x_88.x, x_88.x, x_88.x)) + vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_41.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_41.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_41.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_121.x, x_121.y, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat6;
  u_xlat6 = max(x_126, 1.17549435e-38f);
  let x_129 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_129);
  let x_131 : f32 = u_xlat6;
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = (vec3<f32>(x_131, x_131, x_131) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = x_83.x_LightDirection;
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_139, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : f32 = u_xlat6;
  u_xlat6 = clamp(x_143, 0.0f, 1.0f);
  let x_147 : f32 = u_xlat6;
  u_xlat6 = (-(x_147) + 1.0f);
  let x_150 : f32 = u_xlat6;
  let x_153 : f32 = x_83.x_ShadowBias.y;
  u_xlat6 = (x_150 * x_153);
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : f32 = u_xlat6;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157, x_157, x_157)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = x_83.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_165.y, x_165.y, x_165.y, x_165.y) * x_168);
  let x_171 : vec4<f32> = x_83.unity_MatrixVP[0i];
  let x_172 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_171 * vec4<f32>(x_172.x, x_172.x, x_172.x, x_172.x)) + x_175);
  let x_178 : vec4<f32> = x_83.unity_MatrixVP[2i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_178 * vec4<f32>(x_179.z, x_179.z, x_179.z, x_179.z)) + x_182);
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = x_83.unity_MatrixVP[3i];
  u_xlat0 = (x_184 + x_186);
  let x_193 : f32 = u_xlat0.z;
  gl_Position.z = min(x_193, 1.0f);
  let x_197 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = vec3<f32>(x_197.x, x_197.y, x_197.w);
  let x_201 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_198.x, x_198.y, x_201.z, x_198.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}


