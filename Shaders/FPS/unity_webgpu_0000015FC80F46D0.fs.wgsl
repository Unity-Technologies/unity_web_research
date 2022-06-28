struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_27 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((-(vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y)) * vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f)) + vec4<f32>(x_27.x, x_27.y, x_27.x, x_27.y));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_30, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_40 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_36 * vec4<f32>(x_40, x_40, x_40, x_40));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_54.x, x_54.y));
  u_xlat1 = x_56;
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_60.z, x_60.w));
  u_xlat0 = x_62;
  let x_63 : vec4<f32> = u_xlat0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_63 + x_64);
  let x_67 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_71.x, x_71.y, x_71.x, x_71.y));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_74, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_78 * vec4<f32>(x_80, x_80, x_80, x_80));
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_87.x, x_87.y));
  u_xlat2 = x_89;
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_93.z, x_93.w));
  u_xlat1 = x_95;
  let x_96 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_96 + x_97);
  let x_99 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_99 + x_100);
  let x_104 : vec4<f32> = u_xlat0;
  SV_Target0 = (x_104 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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

