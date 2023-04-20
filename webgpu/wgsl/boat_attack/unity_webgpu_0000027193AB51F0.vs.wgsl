diagnostic(off, derivative_uniformity);

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
  x_LightPosition : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_70 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec3<f32> = x_70.x_LightPosition;
  let x_74 : vec3<f32> = (-(vec3<f32>(x_65.x, x_65.y, x_65.z)) + x_73);
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_79.x, x_79.y, x_79.z), vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_84);
  let x_86 : f32 = u_xlat9;
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec3<f32> = (vec3<f32>(x_86, x_86, x_86) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_96 : vec4<f32> = x_70.x_ShadowBias;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_108.y, x_108.y, x_108.y) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_115 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_120 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + x_120);
  let x_123 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_128 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.z, x_125.z, x_125.z)) + x_128);
  let x_130 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_130, x_131);
  let x_133 : f32 = u_xlat9;
  u_xlat9 = max(x_133, 1.17549435e-38f);
  let x_136 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_136);
  let x_138 : f32 = u_xlat9;
  let x_140 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_138, x_138, x_138) * x_140);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_142.x, x_142.y, x_142.z), x_144);
  let x_146 : f32 = u_xlat9;
  u_xlat9 = clamp(x_146, 0.0f, 1.0f);
  let x_150 : f32 = u_xlat9;
  u_xlat9 = (-(x_150) + 1.0f);
  let x_153 : f32 = u_xlat9;
  let x_157 : f32 = x_70.x_ShadowBias.y;
  u_xlat9 = (x_153 * x_157);
  let x_159 : vec3<f32> = u_xlat2;
  let x_160 : f32 = u_xlat9;
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = ((x_159 * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_70.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_168.y, x_168.y, x_168.y, x_168.y) * x_171);
  let x_174 : vec4<f32> = x_70.unity_MatrixVP[0i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_174 * vec4<f32>(x_175.x, x_175.x, x_175.x, x_175.x)) + x_178);
  let x_181 : vec4<f32> = x_70.unity_MatrixVP[2i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_181 * vec4<f32>(x_182.z, x_182.z, x_182.z, x_182.z)) + x_185);
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = x_70.unity_MatrixVP[3i];
  u_xlat0 = (x_187 + x_189);
  let x_196 : f32 = u_xlat0.z;
  gl_Position.z = min(x_196, 1.0f);
  let x_200 : vec4<f32> = u_xlat0;
  let x_201 : vec3<f32> = vec3<f32>(x_200.x, x_200.y, x_200.w);
  let x_204 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_201.x, x_201.y, x_204.z, x_201.z);
  let x_211 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_211;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position);
}


