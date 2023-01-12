type Arr = array<u32, 1u>;

struct x_HistogramBuffer_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_type>;

struct x_HistogramBuffer {
  x_HistogramBuffer_buf : RTArr,
}

struct PGlobals {
  x_Params : vec2<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<storage, read> x_44 : x_HistogramBuffer;

var<private> vs_TEXCOORD1 : f32;

@group(1) @binding(0) var<uniform> x_91 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec2<f32>;
  var u_xlatu1 : vec2<u32>;
  var u_xlat2 : f32;
  var u_xlatu2 : u32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD0.x;
  u_xlat0 = (x_16 * 255.0f);
  let x_21 : f32 = u_xlat0;
  u_xlat1.x = floor(x_21);
  let x_24 : f32 = u_xlat0;
  u_xlat0 = fract(x_24);
  let x_30 : f32 = u_xlat1.x;
  u_xlatu1.x = u32(x_30);
  let x_35 : u32 = u_xlatu1.x;
  u_xlatu1.y = (x_35 + 1u);
  let x_48 : u32 = u_xlatu1.x;
  let x_51 : u32 = x_44.x_HistogramBuffer_buf[x_48].value[0i];
  u_xlatu1.x = x_51;
  let x_53 : vec2<u32> = u_xlatu1;
  u_xlat1 = vec2<f32>(x_53);
  let x_57 : f32 = u_xlat1.y;
  u_xlat2 = min(x_57, 255.0f);
  let x_60 : f32 = u_xlat2;
  u_xlatu2 = u32(x_60);
  let x_62 : u32 = u_xlatu2;
  let x_64 : u32 = x_44.x_HistogramBuffer_buf[x_62].value[0i];
  u_xlatu2 = x_64;
  let x_65 : u32 = u_xlatu2;
  u_xlat1.y = f32(x_65);
  let x_68 : vec2<f32> = u_xlat1;
  let x_70 : f32 = vs_TEXCOORD1;
  u_xlat1 = (x_68 * vec2<f32>(x_70, x_70));
  let x_73 : f32 = u_xlat0;
  let x_75 : f32 = u_xlat1.y;
  u_xlat2 = (x_73 * x_75);
  let x_77 : f32 = u_xlat0;
  u_xlat0 = (-(x_77) + 1.0f);
  let x_82 : f32 = u_xlat1.x;
  let x_83 : f32 = u_xlat0;
  let x_85 : f32 = u_xlat2;
  u_xlat0 = ((x_82 * x_83) + x_85);
  let x_88 : f32 = vs_TEXCOORD0.y;
  let x_94 : f32 = x_91.x_Params.y;
  u_xlat1.x = (x_88 * x_94);
  let x_98 : f32 = u_xlat1.x;
  u_xlat1.x = round(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlatu1.x = u32(x_102);
  let x_106 : u32 = u_xlatu1.x;
  u_xlat1.x = f32(x_106);
  let x_112 : f32 = u_xlat0;
  let x_114 : f32 = u_xlat1.x;
  u_xlatb0 = (x_112 >= x_114);
  let x_119 : bool = u_xlatb0;
  let x_126 : vec3<f32> = select(vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f), vec3<bool>(x_119, x_119, x_119));
  let x_127 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

