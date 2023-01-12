type Arr = array<u32, 1u>;

struct x_HistogramBuffer_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_type>;

struct x_HistogramBuffer {
  x_HistogramBuffer_buf : RTArr,
}

struct PGlobals {
  x_ScaleOffsetRes : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var<storage, read> x_37 : x_HistogramBuffer;

var<private> vs_TEXCOORD1 : f32;

@group(0) @binding(0) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(2) var sampler_Lut3D : sampler;

@group(1) @binding(0) var<uniform> x_109 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatu0 : u32;
  var u_xlatb0 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : vec3<bool>;
  var u_xlat2 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var x_136 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var x_159 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.x;
  u_xlat0.x = (x_17 * 128.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_29 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_29);
  let x_40 : u32 = u_xlatu0;
  let x_43 : u32 = x_37.x_HistogramBuffer_buf[x_40].value[0i];
  u_xlatu0 = x_43;
  let x_44 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_44);
  let x_48 : f32 = u_xlat0.x;
  let x_50 : f32 = vs_TEXCOORD1;
  u_xlat0.x = (x_48 * x_50);
  let x_54 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_54, 0.0f, 1.0f);
  let x_63 : f32 = u_xlat0.x;
  let x_65 : f32 = vs_TEXCOORD0.y;
  u_xlatb0 = (x_63 >= x_65);
  let x_67 : bool = u_xlatb0;
  let x_74 : vec3<f32> = select(vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(0.75f, 0.75f, 0.75f), vec3<bool>(x_67, x_67, x_67));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_88 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_88.x, x_88.x, x_88.x));
  let x_91 : vec3<f32> = vec3<f32>(x_90.x, x_90.y, x_90.z);
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_94 : vec4<f32> = u_xlat1;
  let x_96 : vec2<f32> = vs_TEXCOORD0;
  let x_99 : vec3<f32> = (vec3<f32>(x_94.x, x_94.y, x_94.z) + -(vec3<f32>(x_96.y, x_96.y, x_96.y)));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_104 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_109.x_ScaleOffsetRes;
  let x_115 : vec4<bool> = (abs(vec4<f32>(x_104.x, x_104.y, x_104.z, x_104.x)) < vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w));
  u_xlatb1 = vec3<bool>(x_115.x, x_115.y, x_115.z);
  let x_119 : bool = u_xlatb1.x;
  u_xlat2.x = select(0.0f, 1.0f, x_119);
  u_xlat2.y = 1.0f;
  u_xlat2.z = 0.0f;
  let x_125 : vec4<f32> = u_xlat2;
  let x_128 : vec2<f32> = (vec2<f32>(x_125.y, x_125.x) + vec2<f32>(0.0f, 1.0f));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_129.y, x_129.z, x_128.y);
  let x_134 : bool = u_xlatb1.y;
  if (x_134) {
    let x_139 : vec4<f32> = u_xlat1;
    x_136 = vec2<f32>(x_139.x, x_139.w);
  } else {
    let x_142 : vec4<f32> = u_xlat2;
    x_136 = vec2<f32>(x_142.z, x_142.x);
  }
  let x_144 : vec2<f32> = x_136;
  let x_145 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_144.x, x_145.y, x_144.y);
  let x_148 : vec3<f32> = u_xlat8;
  let x_152 : vec2<f32> = (vec2<f32>(x_148.x, x_148.z) + vec2<f32>(0.5f, 1.0f));
  let x_153 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_152.x, x_153.y, x_152.y);
  u_xlat9.y = 1.0f;
  u_xlat8.y = 0.0f;
  let x_158 : bool = u_xlatb1.z;
  if (x_158) {
    let x_162 : vec3<f32> = u_xlat9;
    x_159 = x_162;
  } else {
    let x_164 : vec3<f32> = u_xlat8;
    x_159 = x_164;
  }
  let x_165 : vec3<f32> = x_159;
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_165.x, x_165.y, x_165.z);
  let x_168 : vec4<f32> = u_xlat2;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_168, x_169);
  let x_173 : f32 = u_xlat1.x;
  u_xlatb1.x = !((x_173 == 0.0f));
  u_xlat0.w = 1.0f;
  let x_181 : bool = u_xlatb1.x;
  let x_182 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_183, x_182, vec4<bool>(x_181, x_181, x_181, x_181));
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

