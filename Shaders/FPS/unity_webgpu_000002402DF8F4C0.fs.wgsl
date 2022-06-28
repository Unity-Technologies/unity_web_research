struct PGlobals {
  x_Params : vec4<f32>,
  x_ScaleOffsetRes : vec4<f32>,
}

type Arr = array<u32, 1u>;

struct x_HistogramBuffer_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_type>;

struct x_HistogramBuffer {
  x_HistogramBuffer_buf : RTArr,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat2 : f32;

var<private> u_xlatu2 : u32;

@group(0) @binding(1) var<storage, read> x_86 : x_HistogramBuffer;

var<private> vs_TEXCOORD1 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD2 : f32;

var<private> u_xlatb6 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_122 : vec3<f32>;
  var x_165 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.x_Params;
  let x_21 : vec2<f32> = log2(vec2<f32>(x_19.z, x_19.w));
  let x_22 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_21.x, x_21.y, x_22.z);
  let x_24 : vec3<f32> = u_xlat0;
  let x_28 : vec4<f32> = x_13.x_ScaleOffsetRes;
  let x_32 : vec4<f32> = x_13.x_ScaleOffsetRes;
  let x_34 : vec2<f32> = ((vec2<f32>(x_24.x, x_24.y) * vec2<f32>(x_28.x, x_28.x)) + vec2<f32>(x_32.y, x_32.y));
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_34.x, x_34.y, x_35.z);
  let x_37 : vec3<f32> = u_xlat0;
  let x_43 : vec2<f32> = clamp(vec2<f32>(x_37.x, x_37.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_43.x, x_43.y, x_44.z);
  let x_53 : f32 = u_xlat0.x;
  let x_58 : f32 = vs_TEXCOORD0.x;
  u_xlatb0 = (x_53 < x_58);
  let x_62 : f32 = vs_TEXCOORD0.x;
  let x_65 : f32 = u_xlat0.y;
  u_xlatb2 = (x_62 < x_65);
  let x_67 : bool = u_xlatb2;
  let x_68 : bool = u_xlatb0;
  u_xlatb0 = (x_67 & x_68);
  let x_72 : f32 = vs_TEXCOORD0.x;
  u_xlat2 = (x_72 * 128.0f);
  let x_75 : f32 = u_xlat2;
  u_xlat2 = round(x_75);
  let x_79 : f32 = u_xlat2;
  u_xlatu2 = u32(x_79);
  let x_87 : u32 = u_xlatu2;
  let x_90 : u32 = x_86.x_HistogramBuffer_buf[x_87].value[0i];
  u_xlatu2 = x_90;
  let x_91 : u32 = u_xlatu2;
  u_xlat2 = f32(x_91);
  let x_93 : f32 = u_xlat2;
  let x_95 : f32 = vs_TEXCOORD1;
  u_xlat2 = (x_93 * x_95);
  let x_97 : f32 = u_xlat2;
  u_xlat2 = clamp(x_97, 0.0f, 1.0f);
  let x_99 : f32 = u_xlat2;
  let x_101 : f32 = vs_TEXCOORD0.y;
  u_xlatb2 = (x_99 >= x_101);
  let x_104 : bool = u_xlatb2;
  u_xlat4 = select(0.0f, 0.75f, x_104);
  let x_108 : bool = u_xlatb2;
  u_xlat1 = select(vec3<f32>(0.050000001f, 0.300000012f, 0.400000006f), vec3<f32>(0.100000001f, 0.600000024f, 0.800000012f), vec3<bool>(x_108, x_108, x_108));
  let x_120 : bool = u_xlatb0;
  if (x_120) {
    let x_125 : vec3<f32> = u_xlat1;
    x_122 = x_125;
  } else {
    let x_127 : f32 = u_xlat4;
    x_122 = vec3<f32>(x_127, x_127, x_127);
  }
  let x_129 : vec3<f32> = x_122;
  u_xlat0 = x_129;
  let x_132 : f32 = vs_TEXCOORD2;
  u_xlat6 = log2(x_132);
  let x_134 : f32 = u_xlat6;
  let x_137 : f32 = x_13.x_ScaleOffsetRes.x;
  let x_140 : f32 = x_13.x_ScaleOffsetRes.y;
  u_xlat6 = ((x_134 * x_137) + x_140);
  let x_142 : f32 = u_xlat6;
  u_xlat6 = clamp(x_142, 0.0f, 1.0f);
  let x_144 : f32 = u_xlat6;
  let x_147 : f32 = vs_TEXCOORD0.x;
  u_xlat6 = (-(x_144) + x_147);
  let x_151 : f32 = x_13.x_ScaleOffsetRes.z;
  let x_153 : f32 = x_13.x_ScaleOffsetRes.z;
  u_xlat1.x = (x_151 + x_153);
  let x_157 : f32 = u_xlat6;
  let x_160 : f32 = u_xlat1.x;
  u_xlatb6 = (abs(x_157) < x_160);
  let x_164 : bool = u_xlatb6;
  if (x_164) {
    x_165 = vec3<f32>(0.75f, 0.100000001f, 1.0f);
  } else {
    let x_170 : vec3<f32> = u_xlat0;
    x_165 = x_170;
  }
  let x_171 : vec3<f32> = x_165;
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
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : f32, @location(2) vs_TEXCOORD2_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

