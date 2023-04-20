diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb2 : bool;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_12.x_ClipRect;
  let x_22 : vec4<f32> = x_12.x_ClipRect;
  let x_24 : vec2<f32> = (-(vec2<f32>(x_18.x, x_18.y)) + vec2<f32>(x_22.z, x_22.w));
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_25.z, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = vs_TEXCOORD2;
  let x_35 : vec2<f32> = (vec2<f32>(x_27.x, x_27.y) + -(abs(vec2<f32>(x_31.x, x_31.y))));
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_36.z, x_36.w);
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD2;
  let x_42 : vec2<f32> = (vec2<f32>(x_38.x, x_38.y) * vec2<f32>(x_40.z, x_40.w));
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_45 : vec4<f32> = u_xlat0;
  let x_51 : vec2<f32> = clamp(vec2<f32>(x_45.x, x_45.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_51.x, x_51.y, x_52.z, x_52.w);
  let x_58 : f32 = u_xlat0.y;
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = (x_58 * x_61);
  let x_79 : vec2<f32> = vs_TEXCOORD0;
  let x_80 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_79);
  u_xlat2.x = x_80.w;
  let x_86 : f32 = u_xlat2.x;
  let x_90 : f32 = vs_COLOR0.w;
  u_xlat1.w = (x_86 * x_90);
  let x_94 : f32 = u_xlat1.w;
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.x = ((x_94 * x_96) + -0.00100000004749745131f);
  let x_105 : f32 = u_xlat2.x;
  u_xlatb2 = (x_105 < 0.0f);
  let x_107 : bool = u_xlatb2;
  if (((select(0i, 1i, x_107) * -1i) != 0i)) {
    discard;
  }
  let x_122 : vec2<f32> = vs_TEXCOORD1;
  let x_123 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_122);
  u_xlat2 = vec3<f32>(x_123.x, x_123.y, x_123.z);
  let x_125 : vec3<f32> = u_xlat2;
  let x_126 : vec4<f32> = vs_COLOR0;
  let x_128 : vec3<f32> = (x_125 * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_131.x, x_131.x, x_131.x, x_131.x) * x_133);
  let x_137 : vec4<f32> = u_xlat0;
  SV_Target0 = x_137;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


