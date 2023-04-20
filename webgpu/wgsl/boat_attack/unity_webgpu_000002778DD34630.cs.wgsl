alias RTArr = array<u32>;

alias RTArr_1 = array<u32>;

struct x_Input {
  /* @offset(0) */
  x_Input_buf : RTArr_1,
}

struct S {
  value : array<u32, 1u>,
}

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr_1,
}

var<private> u_xlatu0 : vec2<u32>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlati4 : i32;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat4 : f32;

@group(0) @binding(0) var<storage, read> x_37 : x_Input;

var<private> u_xlatb4 : bool;

var<workgroup> TGSM0 : array<S, 128u>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlati6 : i32;

var<private> u_xlatb0 : bool;

var<private> u_xlati0 : i32;

var<private> u_xlati2 : i32;

@group(0) @binding(1) var<storage, read_write> x_228 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = gl_LocalInvocationIndex;
  let x_13 : u32 = gl_LocalInvocationIndex;
  u_xlatu0 = (vec2<u32>(x_12, x_13) & vec2<u32>(31u, 96u));
  let x_27 : u32 = gl_GlobalInvocationID.x;
  u_xlati4 = (bitcast<i32>(x_27) << bitcast<u32>(2i));
  let x_39 : i32 = u_xlati4;
  let x_44 : u32 = x_37.x_Input_buf[((x_39 >> bitcast<u32>(2i)) + 0i)];
  u_xlat4 = bitcast<f32>(x_44);
  let x_49 : f32 = u_xlat4;
  let x_51 : u32 = gl_LocalInvocationIndex;
  u_xlatb4 = (bitcast<i32>(x_49) == bitcast<i32>(x_51));
  let x_54 : bool = u_xlatb4;
  u_xlati4 = select(0i, 1i, x_54);
  let x_64 : u32 = gl_LocalInvocationIndex;
  let x_65 : i32 = u_xlati4;
  TGSM0[x_64].value[0i] = bitcast<u32>(x_65);
  workgroupBarrier();
  let x_75 : vec2<u32> = u_xlatu0;
  u_xlatb1 = (vec4<u32>(x_75.x, x_75.x, x_75.x, x_75.x) < vec4<u32>(16u, 8u, 4u, 2u));
  let x_83 : bool = u_xlatb1.x;
  if (x_83) {
    let x_87 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_87) + 16i);
    let x_91 : i32 = u_xlati6;
    let x_93 : u32 = TGSM0[x_91].value[0i];
    u_xlati6 = bitcast<i32>(x_93);
    let x_95 : i32 = u_xlati6;
    let x_97 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_95) & bitcast<u32>(x_97)));
    let x_101 : u32 = gl_LocalInvocationIndex;
    let x_102 : i32 = u_xlati4;
    TGSM0[x_101].value[0i] = bitcast<u32>(x_102);
  }
  workgroupBarrier();
  let x_106 : bool = u_xlatb1.y;
  if (x_106) {
    let x_109 : u32 = gl_LocalInvocationIndex;
    let x_111 : u32 = TGSM0[x_109].value[0i];
    u_xlati4 = bitcast<i32>(x_111);
    let x_113 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_113) + 8i);
    let x_117 : i32 = u_xlati6;
    let x_119 : u32 = TGSM0[x_117].value[0i];
    u_xlati6 = bitcast<i32>(x_119);
    let x_121 : i32 = u_xlati6;
    let x_123 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_121) & bitcast<u32>(x_123)));
    let x_127 : u32 = gl_LocalInvocationIndex;
    let x_128 : i32 = u_xlati4;
    TGSM0[x_127].value[0i] = bitcast<u32>(x_128);
  }
  workgroupBarrier();
  let x_132 : bool = u_xlatb1.z;
  if (x_132) {
    let x_135 : u32 = gl_LocalInvocationIndex;
    let x_137 : u32 = TGSM0[x_135].value[0i];
    u_xlati4 = bitcast<i32>(x_137);
    let x_139 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_139) + 4i);
    let x_143 : i32 = u_xlati6;
    let x_145 : u32 = TGSM0[x_143].value[0i];
    u_xlati6 = bitcast<i32>(x_145);
    let x_147 : i32 = u_xlati6;
    let x_149 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_147) & bitcast<u32>(x_149)));
    let x_153 : u32 = gl_LocalInvocationIndex;
    let x_154 : i32 = u_xlati4;
    TGSM0[x_153].value[0i] = bitcast<u32>(x_154);
  }
  workgroupBarrier();
  let x_159 : bool = u_xlatb1.w;
  if (x_159) {
    let x_162 : u32 = gl_LocalInvocationIndex;
    let x_164 : u32 = TGSM0[x_162].value[0i];
    u_xlati4 = bitcast<i32>(x_164);
    let x_166 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_166) + 2i);
    let x_169 : i32 = u_xlati6;
    let x_171 : u32 = TGSM0[x_169].value[0i];
    u_xlati6 = bitcast<i32>(x_171);
    let x_173 : i32 = u_xlati6;
    let x_175 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_173) & bitcast<u32>(x_175)));
    let x_179 : u32 = gl_LocalInvocationIndex;
    let x_180 : i32 = u_xlati4;
    TGSM0[x_179].value[0i] = bitcast<u32>(x_180);
  }
  workgroupBarrier();
  let x_186 : u32 = u_xlatu0.x;
  u_xlatb0 = (x_186 < 1u);
  let x_188 : bool = u_xlatb0;
  if (x_188) {
    let x_192 : u32 = gl_LocalInvocationIndex;
    let x_194 : u32 = TGSM0[x_192].value[0i];
    u_xlati0 = bitcast<i32>(x_194);
    let x_196 : u32 = gl_LocalInvocationIndex;
    u_xlati4 = (bitcast<i32>(x_196) + 1i);
    let x_199 : i32 = u_xlati4;
    let x_201 : u32 = TGSM0[x_199].value[0i];
    u_xlati4 = bitcast<i32>(x_201);
    let x_203 : i32 = u_xlati4;
    let x_205 : i32 = u_xlati0;
    u_xlati0 = bitcast<i32>((bitcast<u32>(x_203) & bitcast<u32>(x_205)));
    let x_209 : u32 = gl_LocalInvocationIndex;
    let x_210 : i32 = u_xlati0;
    TGSM0[x_209].value[0i] = bitcast<u32>(x_210);
  }
  workgroupBarrier();
  let x_214 : u32 = u_xlatu0.y;
  let x_216 : u32 = TGSM0[x_214].value[0i];
  u_xlati0 = bitcast<i32>(x_216);
  let x_218 : i32 = u_xlati0;
  u_xlati0 = select(0i, 1i, (x_218 != 0i));
  let x_222 : u32 = gl_LocalInvocationIndex;
  u_xlati2 = (bitcast<i32>(x_222) << bitcast<u32>(2i));
  let x_229 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati0;
  x_228.x_Output_origX0X_buf[(x_229 >> bitcast<u32>(2i))] = bitcast<u32>(x_231);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

