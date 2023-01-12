struct PGlobals {
  x_Params : vec3<f32>,
}

type Arr = array<u32, 1u>;

struct x_VectorscopeBuffer_type {
  value : Arr,
}

type RTArr = array<x_VectorscopeBuffer_type>;

struct x_VectorscopeBuffer {
  x_VectorscopeBuffer_buf : RTArr,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

@group(0) @binding(0) var<storage, read> x_70 : x_VectorscopeBuffer;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatu4 : vec2<u32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(-1.0f, 1.0f, -1.0f, 1.0f)) + vec4<f32>(0.5f, -0.5f, 1.0f, 0.0f));
  let x_26 : vec4<f32> = u_xlat0;
  let x_36 : vec3<f32> = x_31.x_Params;
  u_xlat4 = (vec2<f32>(x_26.z, x_26.w) * vec2<f32>(x_36.x, x_36.y));
  let x_43 : vec2<f32> = u_xlat4;
  u_xlatu4 = vec2<u32>(x_43);
  let x_45 : vec2<u32> = u_xlatu4;
  u_xlat4 = vec2<f32>(x_45);
  let x_50 : f32 = u_xlat4.y;
  let x_54 : f32 = x_31.x_Params.x;
  let x_57 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_50 * x_54) + x_57);
  let x_61 : f32 = u_xlat4.x;
  u_xlatu4.x = u32(x_61);
  let x_72 : u32 = u_xlatu4.x;
  let x_75 : u32 = x_70.x_VectorscopeBuffer_buf[x_72].value[0i];
  u_xlatu4.x = x_75;
  let x_78 : u32 = u_xlatu4.x;
  u_xlat4.x = f32(x_78);
  let x_82 : f32 = u_xlat4.x;
  let x_85 : f32 = x_31.x_Params.z;
  u_xlat4.x = ((x_82 * x_85) + -0.004f);
  let x_91 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_91, 0.0f);
  let x_96 : vec2<f32> = u_xlat4;
  let x_103 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.x) * vec2<f32>(6.199999809f, 6.199999809f)) + vec2<f32>(0.5f, 1.700000048f));
  let x_104 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_103.x, x_103.y, x_104.z);
  let x_108 : f32 = u_xlat4.x;
  let x_110 : f32 = u_xlat1.x;
  u_xlat6 = (x_108 * x_110);
  let x_113 : f32 = u_xlat4.x;
  let x_115 : f32 = u_xlat1.y;
  u_xlat4.x = ((x_113 * x_115) + 0.059999999f);
  let x_120 : f32 = u_xlat6;
  let x_122 : f32 = u_xlat4.x;
  u_xlat4.x = (x_120 / x_122);
  let x_126 : f32 = u_xlat4.x;
  let x_128 : f32 = u_xlat4.x;
  u_xlat4.x = (x_126 * x_128);
  let x_132 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_132, 1.0f);
  let x_136 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_136) * 0.344000012f) + 0.5f);
  let x_143 : f32 = u_xlat0.y;
  let x_148 : f32 = u_xlat0.x;
  u_xlat1.y = ((-(x_143) * 0.713999987f) + x_148);
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  let x_160 : vec2<f32> = ((vec2<f32>(x_151.y, x_151.x) * vec2<f32>(1.402999997f, 1.773000002f)) + vec2<f32>(-0.201499999f, -0.386500001f));
  let x_161 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_160.x, x_161.y, x_160.y);
  let x_165 : vec2<f32> = u_xlat4;
  let x_167 : vec3<f32> = u_xlat1;
  let x_170 : vec3<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.x, x_165.x) * -(x_167)) + x_170);
  let x_172 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

