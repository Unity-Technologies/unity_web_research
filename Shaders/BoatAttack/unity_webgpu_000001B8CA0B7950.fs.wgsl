struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
  x_DownSampleScaleFactor : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_SourceSize;
  let x_22 : vec4<f32> = x_13.x_DownSampleScaleFactor;
  u_xlat0 = (vec4<f32>(x_18.z, x_18.w, x_18.z, x_18.w) * vec4<f32>(x_22.z, x_22.w, x_22.z, x_22.w));
  let x_26 : vec4<f32> = u_xlat0;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(vec4<f32>(x_26.z, x_26.w, x_26.x, x_26.w)) * vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f)) + vec4<f32>(x_35.x, x_35.y, x_35.x, x_35.y));
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_38 * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_41.x, x_41.y, x_41.x, x_41.y));
  let x_55 : vec4<f32> = u_xlat1;
  let x_62 : f32 = x_13.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_55.x, x_55.y), x_62);
  u_xlat2 = x_63;
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : f32 = x_13.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_67.z, x_67.w), x_70);
  u_xlat1 = x_71;
  let x_72 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_72 + x_73);
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : f32 = x_13.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat2 = x_82;
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : f32 = x_13.x_GlobalMipBias.x;
  let x_90 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_86.z, x_86.w), x_89);
  u_xlat0 = x_90;
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_91 + x_92);
  let x_94 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_94 + x_95);
  let x_99 : vec4<f32> = u_xlat0;
  SV_Target0 = (x_99 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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

