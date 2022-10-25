type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_66 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_69 : vec3<f32> = x_66.x_LightDirection;
  let x_71 : vec4<f32> = x_66.x_ShadowBias;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((x_69 * vec3<f32>(x_71.x, x_71.x, x_71.x)) + vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_81 : vec3<f32> = in_NORMAL0;
  let x_83 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_81, vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_89 : vec3<f32> = in_NORMAL0;
  let x_91 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_89, vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_96 : vec3<f32> = in_NORMAL0;
  let x_98 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_96, vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_103.x, x_103.y, x_103.z), vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : f32 = u_xlat6;
  u_xlat6 = max(x_108, 1.17549435e-37f);
  let x_111 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_111);
  let x_113 : f32 = u_xlat6;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec3<f32> = (vec3<f32>(x_113, x_113, x_113) * vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : vec3<f32> = x_66.x_LightDirection;
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_121, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : f32 = u_xlat6;
  u_xlat6 = clamp(x_125, 0.0f, 1.0f);
  let x_129 : f32 = u_xlat6;
  u_xlat6 = (-(x_129) + 1.0f);
  let x_132 : f32 = u_xlat6;
  let x_135 : f32 = x_66.x_ShadowBias.y;
  u_xlat6 = (x_132 * x_135);
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : f32 = u_xlat6;
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139, x_139, x_139)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_149 : vec4<f32> = u_xlat1;
  vs_INTERP0 = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_66.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_151.y, x_151.y, x_151.y, x_151.y) * x_154);
  let x_157 : vec4<f32> = x_66.unity_MatrixVP[0i];
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_157 * vec4<f32>(x_158.x, x_158.x, x_158.x, x_158.x)) + x_161);
  let x_164 : vec4<f32> = x_66.unity_MatrixVP[2i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_164 * vec4<f32>(x_165.z, x_165.z, x_165.z, x_165.z)) + x_168);
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = x_66.unity_MatrixVP[3i];
  u_xlat0 = (x_170 + x_172);
  let x_179 : f32 = u_xlat0.z;
  gl_Position.z = min(x_179, 1.0f);
  let x_183 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = vec3<f32>(x_183.x, x_183.y, x_183.w);
  let x_187 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_184.x, x_184.y, x_187.z, x_184.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}

