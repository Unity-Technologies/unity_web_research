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

var<workgroup> TGSM0 : array<S, 128u>;

var<private> u_xlati6 : i32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatb0 : bool;

var<private> u_xlati0 : i32;

var<private> u_xlati2 : i32;

@group(0) @binding(1) var<storage, read_write> x_241 : x_Output_origX0X;

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
  let x_46 : f32 = u_xlat4;
  let x_48 : u32 = gl_LocalInvocationIndex;
  u_xlati4 = (bitcast<i32>(x_46) + -(bitcast<i32>(x_48)));
  let x_59 : u32 = gl_LocalInvocationIndex;
  let x_60 : i32 = u_xlati4;
  TGSM0[x_59].value[0i] = bitcast<u32>(x_60);
  workgroupBarrier();
  let x_69 : u32 = u_xlatu0.y;
  let x_71 : u32 = TGSM0[x_69].value[0i];
  u_xlati6 = bitcast<i32>(x_71);
  let x_76 : i32 = u_xlati4;
  let x_77 : i32 = u_xlati6;
  u_xlatb4 = (x_76 == x_77);
  let x_79 : bool = u_xlatb4;
  u_xlati4 = select(0i, 1i, x_79);
  workgroupBarrier();
  let x_82 : u32 = gl_LocalInvocationIndex;
  let x_83 : i32 = u_xlati4;
  TGSM0[x_82].value[0i] = bitcast<u32>(x_83);
  workgroupBarrier();
  let x_90 : vec2<u32> = u_xlatu0;
  u_xlatb1 = (vec4<u32>(x_90.x, x_90.x, x_90.x, x_90.x) < vec4<u32>(16u, 8u, 4u, 2u));
  let x_98 : bool = u_xlatb1.x;
  if (x_98) {
    let x_101 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_101) + 16i);
    let x_105 : i32 = u_xlati6;
    let x_107 : u32 = TGSM0[x_105].value[0i];
    u_xlati6 = bitcast<i32>(x_107);
    let x_109 : i32 = u_xlati6;
    let x_111 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_109) & bitcast<u32>(x_111)));
    let x_115 : u32 = gl_LocalInvocationIndex;
    let x_116 : i32 = u_xlati4;
    TGSM0[x_115].value[0i] = bitcast<u32>(x_116);
  }
  workgroupBarrier();
  let x_120 : bool = u_xlatb1.y;
  if (x_120) {
    let x_123 : u32 = gl_LocalInvocationIndex;
    let x_125 : u32 = TGSM0[x_123].value[0i];
    u_xlati4 = bitcast<i32>(x_125);
    let x_127 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_127) + 8i);
    let x_131 : i32 = u_xlati6;
    let x_133 : u32 = TGSM0[x_131].value[0i];
    u_xlati6 = bitcast<i32>(x_133);
    let x_135 : i32 = u_xlati6;
    let x_137 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_135) & bitcast<u32>(x_137)));
    let x_141 : u32 = gl_LocalInvocationIndex;
    let x_142 : i32 = u_xlati4;
    TGSM0[x_141].value[0i] = bitcast<u32>(x_142);
  }
  workgroupBarrier();
  let x_146 : bool = u_xlatb1.z;
  if (x_146) {
    let x_149 : u32 = gl_LocalInvocationIndex;
    let x_151 : u32 = TGSM0[x_149].value[0i];
    u_xlati4 = bitcast<i32>(x_151);
    let x_153 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_153) + 4i);
    let x_157 : i32 = u_xlati6;
    let x_159 : u32 = TGSM0[x_157].value[0i];
    u_xlati6 = bitcast<i32>(x_159);
    let x_161 : i32 = u_xlati6;
    let x_163 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_161) & bitcast<u32>(x_163)));
    let x_167 : u32 = gl_LocalInvocationIndex;
    let x_168 : i32 = u_xlati4;
    TGSM0[x_167].value[0i] = bitcast<u32>(x_168);
  }
  workgroupBarrier();
  let x_173 : bool = u_xlatb1.w;
  if (x_173) {
    let x_176 : u32 = gl_LocalInvocationIndex;
    let x_178 : u32 = TGSM0[x_176].value[0i];
    u_xlati4 = bitcast<i32>(x_178);
    let x_180 : u32 = gl_LocalInvocationIndex;
    u_xlati6 = (bitcast<i32>(x_180) + 2i);
    let x_183 : i32 = u_xlati6;
    let x_185 : u32 = TGSM0[x_183].value[0i];
    u_xlati6 = bitcast<i32>(x_185);
    let x_187 : i32 = u_xlati6;
    let x_189 : i32 = u_xlati4;
    u_xlati4 = bitcast<i32>((bitcast<u32>(x_187) & bitcast<u32>(x_189)));
    let x_193 : u32 = gl_LocalInvocationIndex;
    let x_194 : i32 = u_xlati4;
    TGSM0[x_193].value[0i] = bitcast<u32>(x_194);
  }
  workgroupBarrier();
  let x_199 : u32 = u_xlatu0.x;
  u_xlatb0 = (x_199 < 1u);
  let x_201 : bool = u_xlatb0;
  if (x_201) {
    let x_205 : u32 = gl_LocalInvocationIndex;
    let x_207 : u32 = TGSM0[x_205].value[0i];
    u_xlati0 = bitcast<i32>(x_207);
    let x_209 : u32 = gl_LocalInvocationIndex;
    u_xlati4 = (bitcast<i32>(x_209) + 1i);
    let x_212 : i32 = u_xlati4;
    let x_214 : u32 = TGSM0[x_212].value[0i];
    u_xlati4 = bitcast<i32>(x_214);
    let x_216 : i32 = u_xlati4;
    let x_218 : i32 = u_xlati0;
    u_xlati0 = bitcast<i32>((bitcast<u32>(x_216) & bitcast<u32>(x_218)));
    let x_222 : u32 = gl_LocalInvocationIndex;
    let x_223 : i32 = u_xlati0;
    TGSM0[x_222].value[0i] = bitcast<u32>(x_223);
  }
  workgroupBarrier();
  let x_227 : u32 = u_xlatu0.y;
  let x_229 : u32 = TGSM0[x_227].value[0i];
  u_xlati0 = bitcast<i32>(x_229);
  let x_231 : i32 = u_xlati0;
  u_xlati0 = select(0i, 1i, (x_231 != 0i));
  let x_235 : u32 = gl_LocalInvocationIndex;
  u_xlati2 = (bitcast<i32>(x_235) << bitcast<u32>(2i));
  let x_242 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati0;
  x_241.x_Output_origX0X_buf[(x_242 >> bitcast<u32>(2i))] = bitcast<u32>(x_244);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

