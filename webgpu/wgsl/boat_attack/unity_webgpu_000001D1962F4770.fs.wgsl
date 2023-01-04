struct PGlobals {
  x_ClipRect : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_ClipRect;
  let x_22 : vec4<f32> = x_13.x_ClipRect;
  u_xlat0 = (-(vec2<f32>(x_18.x, x_18.y)) + vec2<f32>(x_22.z, x_22.w));
  let x_25 : vec2<f32> = u_xlat0;
  let x_28 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_25 + -(abs(vec2<f32>(x_28.x, x_28.y))));
  let x_33 : vec2<f32> = u_xlat0;
  let x_34 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_33 * vec2<f32>(x_34.z, x_34.w));
  let x_37 : vec2<f32> = u_xlat0;
  u_xlat0 = clamp(x_37, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_47 : f32 = u_xlat0.y;
  let x_50 : f32 = u_xlat0.x;
  u_xlat0.x = (x_47 * x_50);
  let x_68 : vec2<f32> = vs_TEXCOORD1;
  let x_69 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_68);
  u_xlat2 = vec3<f32>(x_69.x, x_69.y, x_69.z);
  let x_73 : vec3<f32> = u_xlat2;
  let x_75 : vec4<f32> = vs_COLOR0;
  let x_77 : vec3<f32> = (x_73 * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_86 : vec2<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_86);
  u_xlat2.x = x_87.w;
  let x_92 : f32 = u_xlat2.x;
  let x_95 : f32 = vs_COLOR0.w;
  u_xlat1.w = (x_92 * x_95);
  let x_100 : vec2<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  SV_Target0 = (vec4<f32>(x_100.x, x_100.x, x_100.x, x_100.x) * x_102);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

