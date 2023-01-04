struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_faceIndex : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati4 : i32;
  var indexable : array<vec4<u32>, 10u>;
  var indexable_1 : array<vec4<u32>, 10u>;
  var u_xlat2 : vec3<f32>;
  var indexable_2 : array<vec4<u32>, 10u>;
  var indexable_3 : array<vec4<u32>, 10u>;
  var indexable_4 : array<vec4<u32>, 10u>;
  var indexable_5 : array<vec4<u32>, 10u>;
  var u_xlat3 : vec3<f32>;
  var indexable_6 : array<vec4<u32>, 10u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat1;
  gl_Position = ((x_72 * vec4<f32>(x_73.w, x_73.w, x_73.w, x_73.w)) + x_76);
  u_xlat0.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_90 : f32 = x_17.x_faceIndex;
  u_xlati4 = i32(x_90);
  let x_104 : i32 = u_xlati4;
  indexable = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_110 : vec4<u32> = indexable[x_104];
  let x_114 : i32 = u_xlati4;
  indexable_1 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_119 : vec4<u32> = indexable_1[(x_114 + 4i)];
  let x_122 : vec2<f32> = (bitcast<vec2<f32>>(vec2<u32>(x_110.z, x_110.x)) * bitcast<vec2<f32>>(vec2<u32>(x_119.w, x_119.z)));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_128 : i32 = u_xlati4;
  indexable_2 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_132 : vec4<u32> = indexable_2[(x_128 + 4i)];
  let x_134 : vec2<f32> = bitcast<vec2<f32>>(vec2<u32>(x_132.z, x_132.w));
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_134.x, x_135.y, x_134.y);
  let x_137 : i32 = u_xlati4;
  indexable_3 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_141 : u32 = indexable_3[x_137].z;
  u_xlat2.y = bitcast<f32>(x_141);
  let x_144 : i32 = u_xlati4;
  indexable_4 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_147 : u32 = indexable_4[x_144].x;
  u_xlat0.z = bitcast<f32>(x_147);
  let x_150 : vec3<f32> = u_xlat2;
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((-(x_150) * vec3<f32>(x_152.x, x_152.x, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_158.y, x_157.y, x_157.z);
  u_xlat1.y = 0.0f;
  let x_163 : vec2<f32> = in_TEXCOORD0;
  let x_165 : vec4<f32> = x_17.x_MainTex_ST;
  let x_169 : vec4<f32> = x_17.x_MainTex_ST;
  let x_171 : vec2<f32> = ((x_163 * vec2<f32>(x_165.x, x_165.y)) + vec2<f32>(x_169.z, x_169.w));
  let x_172 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_171.x, x_171.y, x_172.z);
  let x_174 : vec3<f32> = u_xlat2;
  let x_181 : vec2<f32> = ((vec2<f32>(x_174.x, x_174.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_182 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_181.x, x_181.y, x_182.z);
  let x_184 : i32 = u_xlati4;
  indexable_5 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_187 : vec4<u32> = indexable_5[x_184];
  let x_189 : vec2<f32> = bitcast<vec2<f32>>(vec2<u32>(x_187.x, x_187.z));
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_189.x, x_190.y, x_189.y, x_190.w);
  let x_193 : i32 = u_xlati4;
  indexable_6 = array<vec4<u32>, 10u>(vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 3212836864u), vec4<u32>(3212836864u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 3212836864u, 0u), vec4<u32>(0u, 0u, 0u, 3212836864u), vec4<u32>(0u, 0u, 0u, 3212836864u));
  let x_197 : vec4<u32> = indexable_6[(x_193 + 4i)];
  let x_199 : vec2<f32> = bitcast<vec2<f32>>(vec2<u32>(x_197.w, x_197.z));
  let x_200 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_200.x, x_199.x, x_199.y);
  let x_202 : vec3<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat1;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.z, x_207.w));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  u_xlat3.x = 0.0f;
  let x_215 : vec3<f32> = u_xlat2;
  let x_217 : vec3<f32> = u_xlat3;
  let x_219 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = ((vec3<f32>(x_215.y, x_215.y, x_215.y) * x_217) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

