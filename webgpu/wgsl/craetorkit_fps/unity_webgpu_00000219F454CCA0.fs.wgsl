type Arr = array<u32, 1u>;

struct x_HistogramBuffer_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_type>;

struct x_HistogramBuffer {
  x_HistogramBuffer_buf : RTArr,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<storage, read> x_31 : x_HistogramBuffer;

var<private> vs_TEXCOORD1 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlatu0 : u32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD0.x;
  u_xlat0 = (x_16 * 128.0f);
  let x_19 : f32 = u_xlat0;
  u_xlat0 = round(x_19);
  let x_23 : f32 = u_xlat0;
  u_xlatu0 = u32(x_23);
  let x_34 : u32 = u_xlatu0;
  let x_37 : u32 = x_31.x_HistogramBuffer_buf[x_34].value[0i];
  u_xlatu0 = x_37;
  let x_38 : u32 = u_xlatu0;
  u_xlat0 = f32(x_38);
  let x_40 : f32 = u_xlat0;
  let x_42 : f32 = vs_TEXCOORD1;
  u_xlat0 = (x_40 * x_42);
  let x_44 : f32 = u_xlat0;
  u_xlat0 = clamp(x_44, 0.0f, 1.0f);
  let x_51 : f32 = u_xlat0;
  let x_53 : f32 = vs_TEXCOORD0.y;
  u_xlatb0 = (x_51 >= x_53);
  let x_58 : bool = u_xlatb0;
  let x_65 : vec3<f32> = select(vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(0.75f, 0.75f, 0.75f), vec3<bool>(x_58, x_58, x_58));
  let x_66 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
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

