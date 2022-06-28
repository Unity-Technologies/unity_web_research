struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_30 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_21 : vec3<f32> = ((x_13 * vec3<f32>(0.01f, 0.01f, 0.01f)) + vec3<f32>(x_19.x, x_19.y, x_19.z));
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_21.x, x_21.y, x_21.z, x_22.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_36);
  let x_40 : vec4<f32> = x_30.unity_ObjectToWorld[0i];
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_40 * vec4<f32>(x_41.x, x_41.x, x_41.x, x_41.x)) + x_44);
  let x_48 : vec4<f32> = x_30.unity_ObjectToWorld[2i];
  let x_49 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.z, x_49.z, x_49.z, x_49.z)) + x_52);
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  u_xlat1 = (x_54 + x_57);
  let x_60 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_62 : vec4<f32> = in_POSITION0;
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_62.w, x_62.w, x_62.w)) + vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_71 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_71.y, x_71.y, x_71.y, x_71.y) * x_75);
  let x_78 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_78 * vec4<f32>(x_79.x, x_79.x, x_79.x, x_79.x)) + x_82);
  let x_85 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_85 * vec4<f32>(x_86.z, x_86.z, x_86.z, x_86.z)) + x_89);
  let x_98 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_99 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = u_xlat2;
  gl_Position = ((x_98 * vec4<f32>(x_99.w, x_99.w, x_99.w, x_99.w)) + x_102);
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_106, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_115, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_134);
  let x_136 : f32 = u_xlat9;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_136, x_136, x_136) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_145 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_145.x, x_145.y, x_145.z);
  let x_148 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_148.x, x_148.y, x_148.z);
  let x_151 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = x_30.x_WorldSpaceCameraPos;
  vs_TEXCOORD2 = (-(vec3<f32>(x_151.x, x_151.y, x_151.z)) + x_156);
  vs_TEXCOORD3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_162 : f32 = u_xlat1.y;
  let x_164 : f32 = u_xlat1.y;
  u_xlat0.x = (x_162 * x_164);
  let x_168 : f32 = u_xlat1.x;
  let x_170 : f32 = u_xlat1.x;
  let x_173 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_168 * x_170) + -(x_173));
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_183 : vec4<f32> = x_30.unity_SHBr;
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_183, x_184);
  let x_188 : vec4<f32> = x_30.unity_SHBg;
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_188, x_189);
  let x_193 : vec4<f32> = x_30.unity_SHBb;
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_193, x_194);
  let x_200 : vec4<f32> = x_30.unity_SHC;
  let x_202 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4);
}

